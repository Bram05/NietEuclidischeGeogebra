// Standard library files and some others are automatically included from the precompiled header
// https://cmake.org/cmake/help/latest/command/target_precompile_headers.html
#pragma once

#include "UIElement.h"
#include "Renderer.h"

// Represents all the UI
// Owns all subparts and updates them
class WindowUI
{
public:
	WindowUI();
	~WindowUI();

	void RenderPass(Renderer* r);

private:
	std::vector<std::shared_ptr<UIElement>> m_UIElements;
};