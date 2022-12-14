// Standard library files and some others are automatically included from the precompiled header
// https://cmake.org/cmake/help/latest/command/target_precompile_headers.html
#pragma once

#include <glad/glad.h>
#include "Shader.h"

// Simple struct with the general information for a character
struct CharacterInfo
{
	int x, y;
	int width, height;
	int xOffset, yOffset;
	int xAdvance;
	int page;
	int channel;
};

// A font to be used for rendering text
class Font
{
public:
	// Loads the font with this name. Name has to be the name of the folder withing 'assets/fonts'
	Font(const std::string& fontName);
	~Font();

	// Getters and setters
	CharacterInfo GetCharacterInfo(int character);
	int GetWidth() const { return m_TotalWidth; }
	int GetHeight() const { return m_TotalHeight; }
	GLuint GetBitmap() const { return m_Bitmap; }
	int GetSize() const { return m_Size; }
	int GetLineHeight() const { return m_LineHeight; }
	int GetBase() const { return m_Base; }

private:
	GLuint m_Bitmap;
	std::map<int, CharacterInfo> m_CharacterInformation;
	int m_LineHeight, m_Base;
	int m_Size;
	int m_TotalWidth, m_TotalHeight;
	std::string m_BaseFont;
};

class TextRenderer;

// Text object
class Text
{
public:
	// Letters is a vector of unicode numbers for the characters
	Text(const std::vector<int>& letters, float leftX, float rightX, float baseLine, float size);
	Text(const std::string& text, float leftX, float rightX, float baseLine, float size);
	~Text();

	void AddText(const std::vector<int>& letters, int position);
	void AddText(const std::string& letters, int position);
	void RemoveText(int begin, int num);

	const std::vector<int>& GetText() const { return m_Text; }
	float GetScale() const { return m_Scale; }

	int m_RenderBegin, m_RenderEnd;

private:
	float m_Size;
	std::vector<int> m_Text;
	float m_LeftX, m_RightX, m_Baseline;
	float m_Scale;
	friend TextRenderer;
};

// Underlying text rendererer
class TextRenderer
{
public:
	// Create the renderer with this specific font. Name has to be the name of the folder withing 'assets/fonts'
	TextRenderer(const std::string& fontName);
	~TextRenderer();

	void AddToRenderQueue(const std::shared_ptr<Text>& m_Text);
	void RenderQueue();

	std::shared_ptr<Font> GetFont() { return m_Font; }

private:
	std::shared_ptr<Font> m_Font;
	GLuint m_Vao, m_Vb, m_Ib;
	std::queue<std::shared_ptr<Text>> m_RenderQueue{};
	Shader m_TextShader;
};