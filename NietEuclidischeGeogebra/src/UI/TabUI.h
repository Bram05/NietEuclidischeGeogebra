#pragma once

#include "UIElement.h"
#include "PermaButtonUI.h"

class TabUI : public UIElement
{
public:
	TabUI(float leftX, float rightX, float topY, float bottomY);
	~TabUI();

	virtual void RenderPass(Renderer* r) override;
	void ButtonClicked(int value);

private:
	std::vector<std::shared_ptr<PermaButtonUI>> m_Buttons;
};