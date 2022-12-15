#include "PermaButtonUI.h"

#include "Renderer.h"
#include "TabUI.h"

PermaButtonUI::PermaButtonUI(float leftX, float rightX, float topY, float bottomY, int value, TabUI* parent)
	: UIElement(leftX, rightX, topY, bottomY, "PermaButton"),
	m_Background(std::make_shared<Square>(leftX, rightX, topY, bottomY, std::array<float, 4>{0.0f, 1.0f, 1.0f, 1.0f})),
	m_Value(value),
	m_Parent(parent)
{
}

PermaButtonUI::~PermaButtonUI()
{
}

void PermaButtonUI::SetActivation(bool value)
{
	m_IsActivated = value;
	if (m_IsActivated)
	{
		m_Background->m_Colour = { 0.5f, 0.5f, 0.5f, 1.0f };
	}
	else
	{
		m_Background->m_Colour = { 0.0f, 1.0f, 1.0f, 1.0f };
	}
}

void PermaButtonUI::RenderPass(Renderer* r)
{
	r->AddToRenderQueue(m_Background);
	UIElement::RenderPass(r);
}

void PermaButtonUI::WasClicked(float x, float y)
{
	SetActivation(true);
	m_Parent->ButtonClicked(m_Value);
}
