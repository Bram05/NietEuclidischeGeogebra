// Standard library files and some others are automatically included from the precompiled header
// https://cmake.org/cmake/help/latest/command/target_precompile_headers.html
#pragma once

#include <glad/glad.h>

#include "Maths/Matrix.h"
#include "Model.h"

// Handles an OpenGL shader object
// The shaders are written in GLSL
class GraphShader
{
public:
	// name = the name of shader. For shader assets/shaders/example.vs name would be: example
	GraphShader(const std::string name);
	~GraphShader();

	void CreateShader(const std::string name);
	unsigned int CreateCompShader(const std::string name);

	// Bind and unbind the shader
	void Bind();
	void UnBind();

	// Set the texture for the shader
	void SetTexture(unsigned int texture);

	// Set the uniform for the shader
	void SetUniform(const std::string& name, const Maths::Matrix<2,2>& mat) const;
	void SetUniform(const std::string& name, const std::array<float, 4>& arr) const;

	unsigned int RunComp(line Eq, float normWidth, float normHeight, int graphWindowLeftX, int graphWindowRightX, int graphWindowTopY, int graphWindowBottomY);
private:
	GLuint m_Shader;
	GLuint m_CompShader1;
	GLuint m_CompShader2;
	mutable std::map<std::string, int> m_UniformLocations;
	std::string m_Name;
	int GetUniformLocation(const std::string& name) const;
};