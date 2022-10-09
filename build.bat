@echo

call "D:\VisualStudio\VC\Auxiliary\Build\vcvars64.bat"

set includes=/Isrc /I%VULKAN_SDK%/Include 
set links=/link /LIBPATH:%VULKAN_SDK%/Lib vulkan-1.lib user32.lib
set defines=/D DEBUG /D WINDOWS_BUILD

@echo "Building main ..."

cl /EHsc /Z7 /Fe"main" %includes% %defines% src/platform/win32_platform.cpp %links%