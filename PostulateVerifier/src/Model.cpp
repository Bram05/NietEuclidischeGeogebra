#include "Model.h"
#include "Z3Tools.h"

RGBColour::RGBColour() : RGBColour(0,0,0,0) {}

RGBColour::RGBColour(uint8_t r, uint8_t g, uint8_t b, uint8_t a)
	: r{ r }, g{ g }, b{ b }, a{ a },
	norm_r{ r / float(255) }, norm_g{ g / float(255) }, norm_b{ b / float(255) }, norm_a{ a / float(255) } {}
RGBColour::RGBColour(int r, int g, int b, int a)
	: RGBColour(static_cast<uint8_t>(r), static_cast<uint8_t>(g), static_cast<uint8_t>(b), static_cast<uint8_t>(a)) {}
RGBColour::RGBColour(const RGBColour& c) : RGBColour(c.r, c.g, c.b, c.a) { }

NEElement::NEElement(const std::vector<float>& identifiers, const equation& def, const int identNum, NEType type, std::shared_ptr<Model> model, const RGBColour& colour, bool checkValidity)
	: m_Identifiers{ identifiers }, m_Def{ def }, m_Type{ type }, m_Model{ model }, m_Colour{ colour }
{
	if (checkValidity) {
		if (identifiers.size() != identNum or !Z3Tools::isSolvable(def, { identifiers }).sat) {
			throw std::invalid_argument("Invalid point");
		}
	}

	if (m_Model->m_Elements.size() > 0) {
		m_ID = m_Model->m_Elements.back().getID() + 1; //ToDo
	}
	else { m_ID = 0; }
	m_Model->m_Elements.push_back(*this);
}

std::string NEElement::getShader() {
	return Z3Tools::recToShader(m_Def.eq, Z3Tools::extractVars(m_Def, std::vector<std::vector<float>>{m_Identifiers}));
}

NEPoint::NEPoint(const std::vector<float>& identifiers, std::shared_ptr<Model> m, const RGBColour& colour, bool checkValidity)
	: NEElement(identifiers, m->m_PointDef, m->m_PointIdentifiers, point, m, colour, checkValidity) {}

NELine::NELine(const std::vector<float>& identifiers, std::shared_ptr<Model> m, const RGBColour& colour, bool checkValidity)
	: NEElement(identifiers, m->m_LineDef, m->m_LineIdentifiers, line, m, colour, checkValidity) {}

Model::Model(unsigned int pointIdentifiers,
	const equation& pointDef,
	unsigned int lineIdentifiers,
	const equation& lineDef,
	const equation& incidenceConstr,
	const equation& betweennessConstr)
	:
	m_PointIdentifiers{ pointIdentifiers },
	m_PointDef{ pointDef },
	m_LineIdentifiers{ lineIdentifiers },
	m_LineDef{ lineDef },
	m_IncidenceConstr{ incidenceConstr },
	m_BetweennessConstr{ betweennessConstr } {}

Model::Model(const Model& m) :
	m_PointIdentifiers{ m.m_PointIdentifiers },
	m_PointDef{ m.m_PointDef },
	m_LineIdentifiers{ m.m_LineIdentifiers },
	m_LineDef{ m.m_LineDef },
	m_IncidenceConstr{ m.m_IncidenceConstr },
	m_BetweennessConstr{ m.m_BetweennessConstr } {}

NELine Model::newLine(NEPoint p1, NEPoint p2) {
	equation halfEq = m_IncidenceConstr;
	halfEq.vars.erase(std::next(halfEq.vars.begin()));
	equation eq = halfEq + halfEq;
	equation tmp = { {}, "l1 = 0" };
	eq = eq + tmp;
	eq.eq = "((pa0-l0)^2+(pa1-l1)^2=(1/(-2*(2~(l0^2+l1^2))-2*2~((2~(l0^2+l1^2))^2-1))+0.5*(2~(l0^2+l1^2))+0.5*2~((2~(l0^2+l1^2))^2-1))^2)&(l1=0)";
	equationResult res = Z3Tools::isSolvable(eq, { p1.getIdentifiers(), p2.getIdentifiers() });
	if (!res.sat) {
		throw std::invalid_argument("I-1 failed");
	}
	for (int i = 0; i < res.m->num_consts(); ++i) {
		z3::func_decl f = res.m->get_const_decl(i);
		std::cout << f.name() << std::endl;

	}

	return { { 1.25, 0 }, p1.getModel() };
}

bool operator==(const NEElement lhs, const NEElement rhs) {
	if (lhs.getModel() != rhs.getModel()) {
		//Later isomorphism
		return false;
	}

	if (lhs.getType() != rhs.getType()) {
		return false;
	}

	if (lhs.getIdentifiers() == rhs.getIdentifiers()) {
		return true;
	}

	// If (x, y) exists for one element that doesn't exist for the other, the elements are not the same
	equation constr1 = lhs.getDef() + !lhs.getDef();
	equation constr2 = !lhs.getDef() + lhs.getDef();
	if (Z3Tools::isSolvable(constr1, { lhs.getIdentifiers(), rhs.getIdentifiers() }).sat or
		Z3Tools::isSolvable(constr2, { lhs.getIdentifiers(), rhs.getIdentifiers() }).sat) {
		return false;
	}
	else {
		return true;
	}
}

bool operator!=(const NEElement lhs, const NEElement rhs) { return !(lhs == rhs); }


bool operator==(const RGBColour c1, const RGBColour c2) { return c1.r == c2.r && c1.g == c2.g && c1.b == c2.b && c1.a == c2.a; }
bool operator!=(const RGBColour c1, const RGBColour c2) { return !(c1 == c2); }

bool operator>>(const NEPoint p, const NELine l) {
	if (p.getModel() != l.getModel()) {
		//Later isomorphism
		return false;
	}

	//Custom condition
	equation eq = p.getModel()->m_IncidenceConstr;
	return Z3Tools::eval(eq.eq, Z3Tools::extractVars(eq, std::vector<std::vector<float>>{p.getIdentifiers(), l.getIdentifiers()}));
}

bool isBetween(const NEPoint p1, const NEPoint p2, const NEPoint p3) {
	if (p1.getModel() != p2.getModel() || p2.getModel() != p3.getModel()) {
		//Later isomorphism
		return false;
	}

	NELine l = p1.getModel()->newLine(p1, p2);
	// ToDo: fix line from two point

	//Custom condition
	equation eq = p1.getModel()->m_BetweennessConstr;
	return Z3Tools::eval(eq.eq, Z3Tools::extractVars(eq, std::vector<std::vector<float>>{p1.getIdentifiers(), p2.getIdentifiers(), p3.getIdentifiers()}));
}

