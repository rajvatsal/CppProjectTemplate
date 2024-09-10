-- App/Build-App.lua
project "App"
   kind "ConsoleApp"
   language "C++"
   cppdialect "C++20"
   targetdir ("../Binaries/" .. OutputDir .. "/App")
   objdir ("../Binaries/Intermediates/" .. OutputDir .. "/App")
   staticruntime "off"

   files { "Source/**.h", "Source/**.cpp" }

   includedirs { "Source", "../Core/Source" }
   links { "Core" }

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
