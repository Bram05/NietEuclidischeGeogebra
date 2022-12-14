#include "UIElement.h"

#include "Renderer.h"

UIElement::UIElement(double leftX, double rightX, double topY, double bottomY, const std::string& name)
	: m_LeftX{ leftX },
	m_RightX{ rightX },
	m_TopY{ topY },
	m_BottomY{ bottomY },
	m_Name{ name }
{
}

UIElement::~UIElement()
{
}

void UIElement::RenderPass(Renderer* r)
{
	for (const SubUIElement& el : m_SubUIElements)
	{
		if (el.shouldRender)
			el.element->RenderPass(r);
	}
}

void UIElement::ResizeWindow(int width, int height)
{
	for (const SubUIElement& el : m_SubUIElements)
	{
		el.element->ResizeWindow(width, height);
	}
}

void UIElement::UpdateGraphUI() {}
