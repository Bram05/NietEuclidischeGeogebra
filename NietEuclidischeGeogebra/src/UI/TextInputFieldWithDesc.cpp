#include "TextInputFieldWithDesc.h"

TextInputFieldWithDesc::TextInputFieldWithDesc(float leftX, float rightX, float topY, float bottomY, const std::string& text, float width, void(*enterCallback)(void*), void* obj)
	: UIElement(leftX, rightX, topY, bottomY, "TextInputFieldWithDesc"), m_Text(std::make_shared<Text>(text, leftX + 0.01f, leftX + width - 0.01f, bottomY + 0.05f, 30))
{
	m_SubUIElements.push_back({ std::make_shared<TextInputField>(leftX + width, rightX - 0.006f, topY, bottomY, enterCallback, obj), true });
}

TextInputFieldWithDesc::~TextInputFieldWithDesc()
{
}

void TextInputFieldWithDesc::RenderPass(Renderer* r)
{
	r->AddToRenderQueue(m_Text);
	UIElement::RenderPass(r);
}
