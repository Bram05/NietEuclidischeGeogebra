#pragma once

#include "UIElement.h"
#include "GraphRenderer.h"

class GraphUI : public UIElement
{
public:
	GraphUI(float leftX, float rightX, float topY, float bottomY);
	~GraphUI();

protected:
	void RenderPass(Renderer* r) override;
	void ResizeWindow(int width, int height) override;

private:
	std::vector<std::shared_ptr<Line>> m_Lines;
	std::vector<std::shared_ptr<Graph>> m_Graphs;

	void UpdateLines();
	void UpdateGraphs();
};