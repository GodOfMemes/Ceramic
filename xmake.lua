add_rules("mode.debug", "mode.release")

set_project("Ceramic")
set_version("0.1.0")
set_license("MIT")

set_languages("cxx23")

set_warnings("all", "error")

add_requires("glfw 3.4")
add_requires("glm 1.0.3")
add_requires("glad v0.1.36", {configs = {profile = "core", api = "gl=4.6"}})

target("Ceramic")
    set_kind("binary")
    add_files("src/*.cpp")
    add_packages("glfw", "glm", "glad")

