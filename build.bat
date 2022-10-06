@echo

call "D:\VisualStudio\VC\Auxiliary\Build\vcvars64.bat"

set includes=/Isrc /I%VULKAN_SDK%/Include 
set links=/link /LIBPATH:%VULKAN_SDK%/Lib vulkan-1.lib 
set defines=/D DEBUG

@echo "Building main ..."

cl /EHsc %includes% %defines% src/main.cpp %links%