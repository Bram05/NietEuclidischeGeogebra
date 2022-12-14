// Standard library files and some others are automatically included from the precompiled header
// https://cmake.org/cmake/help/latest/command/target_precompile_headers.html

#include "KeyboardUI.h"
#include "Application.h"
#include "ButtonUI.h"
#include "TextInputField.h"
#include "TextRenderer.h"

void insertKey(void* c)
{
	Application::Get()->GetWindowUI()->InsertKey(*(int*)c);
}

float c_leftX = -1.0f;
float c_topY = 0.5f;
std::vector<int> textList = { 0x2200, 0x2203, 0x03B1, 0x03B2, 0x03B3, 0x03B4, 0x03B5, 0x03B6, 0x03B7, 0x03B8, 0x03B9, 0x03BA, 0x03BB, 0x03BC, 0x03BD, 0x03BE, 0x03BF, 0x03C0, 0x03C1, 0x03C2, 0x03C3, 0x03C4, 0x03C5, 0x03C6, 0x03C7, 0x03C8, 0x03C9 };

void KeyboardUI::LoadTab(int i) {
	m_Tab = i;
}

KeyboardUI::KeyboardUI(double leftX, double rightX, double topY, double bottomY)
	: UIElement(leftX, rightX, topY, bottomY, "KeyboardUI")//, text(500, 500, "red")
{
	m_Lines.push_back(std::make_shared<Line>(Point(leftX, topY), Point(leftX, bottomY))); // Left size
	m_Lines.push_back(std::make_shared<Line>(Point(leftX, topY), Point(rightX, topY))); // top
	m_Lines.push_back(std::make_shared<Line>(Point(rightX, bottomY), Point(rightX, topY))); // right
	m_Lines.push_back(std::make_shared<Line>(Point(rightX, bottomY), Point(leftX, bottomY))); // bottom

	//width = 0.125
	// distance = 0.025
	float buttonWidth = 0.1f;
	float indent = 0.0175f;

	float x = leftX + indent;
	float y = topY - 0.01f;
	for (int i = 1; i < textList.size(); i++) {
		m_SubUIElements.push_back({ std::make_shared<ButtonUI>(x, x + buttonWidth, y, y - buttonWidth, insertKey, &textList[i-1], std::vector<int>{textList[i-1]}) });
		if (i % 4 == 0) {
			x = leftX + indent;
			y -= buttonWidth;
			continue;
		}
		x += buttonWidth;
	}
}

KeyboardUI::~KeyboardUI()
{
}

void KeyboardUI::RenderPass(Renderer* r)
{
	for (std::shared_ptr<Line>& line : m_Lines)
	{
		r->AddToRenderQueue(line);
	}
	UIElement::RenderPass(r);
}