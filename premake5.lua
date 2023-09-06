project "ImGui"
    kind "StaticLib"
    language "C++"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files 
    {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imgui_rectpack.h",
        "imgui_textedit.h",
        "imgui_truetype.h",
        "imgui_demo.cpp",
        "imgui_tables.cpp",
        "backends/imgui_impl_glfw.h",
        "backends/imgui_impl_glfw.cpp",
        "backends/imgui_impl_opengl3.h",
        "backends/imgui_impl_opengl3.cpp",
        "backends/imgui_impl_vulkan.h",
        "backends/imgui_impl_vulkan.cpp",
        "misc/cpp/imgui_stdlib.h",
        "misc/cpp/imgui_stdlib.cpp"
    }

    filter "system:windows"
        cppdialect "C++17"
        staticruntime "On"
        systemversion "latest"

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"