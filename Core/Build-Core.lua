-- Core/Build-Core.lua
project "Core"
   kind "StaticLib"
   language "C++"
   cppdialect "C++20"
   targetdir ("../Binaries/" .. OutputDir .. "/Core")
   objdir ("../Binaries/Intermediates/" .. OutputDir .. "/Core")
   staticruntime "off"

   files { "Source/**.h", "Source/**.cpp" }

   includedirs { "Source" }

   filter "system:windows"
      systemversion "latest"

   filter "configurations:Debug"
      defines { "DEBUG" }
      runtime "Debug"
      symbols "On"

   filter "configurations:Release"
      defines { "RELEASE" }
      runtime "Release"
      optimize "On"

   filter "configurations:Dist"
      defines { "DIST" }
      runtime "Release"
      optimize "On"
      symbols "Off"
