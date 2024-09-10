---@diagnostic disable: undefined-global
-- build.lua
workspace "MyWorkspace"
   architecture "x86_64"
   configurations { "Debug", "Release", "Dist" }
   startproject "App"

   OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

  -- group for core projects
   group "core"
      include "Core/Build-core.lua"

   -- group for app projects
   group "app"
      include "App/Build-app.lua"

   -- back to root group
   group ""
