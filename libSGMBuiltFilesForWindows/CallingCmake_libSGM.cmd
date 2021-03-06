cd ..

rmdir /S /Q libSGM_build_x64
mkdir libSGM_build_x64
cd libSGM_build_x64

cmake.exe ../libSGM -G "Visual Studio 14 2015 Win64" -DENABLE_ZED_DEMO=FALSE -DZED_SDK_INCLUDE_DIR= -DZED_SDK_LIB= -DCMAKE_SUPPRESS_REGENERATION:BOOL=TRUE -DGLEW_INCLUDE_DIR=../glew-2.0.0/include -DGLEW_LIBRARY_DEBUG=../glew-2.0.0/lib/Release/x64/glew32.lib -DGLEW_LIBRARY_RELEASE=../glew-2.0.0/lib/Release/x64/glew32.lib -DGLFW_INCLUDE_DIR=../glfw-3.2.1.bin.WIN64/include -DGLFW_glfw_LIBRARY=../glfw-3.2.1.bin.WIN64/lib-vc2015/glfw3.lib -DOpenCV_DIR=../../../OpenCVBuiltFilesForWindows/opencv_x64/install

cmake.exe --build "." --target "ALL_BUILD" --config "Debug"
cmake.exe --build "." --target "ALL_BUILD" --config "Release"
cd ..

pause
