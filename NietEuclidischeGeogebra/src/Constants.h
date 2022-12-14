// Standard library files and some others are automatically included from the precompiled header
// https://cmake.org/cmake/help/latest/command/target_precompile_headers.html
#pragma once

// Some constants
namespace MouseButton
{
	inline int left, right, middle;
}

namespace Action
{
	inline int pressed, released;
}

inline std::string AssetsFolder;