// Standard library files and some others are automatically included from the precompiled header
// https://cmake.org/cmake/help/latest/command/target_precompile_headers.html
#pragma once

#include "LineRenderer.h"

class Renderer;
class WindowUI;

class UIElement;

struct SubUIElement
{
	std::shared_ptr<UIElement> element;
	bool shouldRender{true};
};

// Base class for a subpart of the UI
class UIElement
{
public:
	UIElement(double leftX, double rightX, double topY, double bottomY, const std::string& name);
	virtual ~UIElement();

	// Getters
	double GetLeftX() const { return m_LeftX; }
	double GetTopY() const { return m_TopY; }
	double GetRightX() const { return m_RightX; }
	double GetBottomY() const { return m_BottomY; }
	const std::string& GetName() const { return m_Name; }

	// Queue all the necessary things for rendering
	virtual void RenderPass(Renderer* r);
	virtual void UpdateGraphUI();

protected:
	virtual void WasClicked(float x, float y) { /*std::cout << "Hit element " << m_Name << '\n'; */ }
	virtual void DraggedUpdate(float x, float y) { /*std::cout << "Dragged update" << m_Name << '\n'; */ }
	virtual void IsHovered(float x, float y) { /*std::cout << "Hovered over element " << m_Name << '\n'; */ }
	virtual void NotHoveredAnymore() { /*std::cout << "Not hovering over element " << m_Name << " anymore\n";*/ }
	virtual void IsSelected() { /*std::cout << "Element " << m_Name << " is selected\n";*/ }
	virtual void NotSelectedAnymore() { /*std::cout << "Element " << m_Name << " is not selected anymore\n"; */ }
	virtual void TextInput(unsigned int codepoint) { /*std::cout << "Got key " << key << '\n';*/ }
	virtual void SpecialKeyInput(int key, int scancode, int action, int mods) {}
	virtual void ResizeWindow(int width, int height);
	friend WindowUI;

	// The bounds of this element
	double m_LeftX, m_RightX, m_TopY, m_BottomY;
	std::string m_Name;
	std::vector<SubUIElement> m_SubUIElements;
	bool m_MouseIsHovering{ false };
	bool m_IsSelected{ false };
	bool m_IsBeingDragged{ false };
};