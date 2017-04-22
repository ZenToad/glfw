
if not defined DevEnvDir (
    CALL "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x64
)

if not exist build mkdir build
pushd build
cmake -G "Visual Studio 14 2015 Win64" ..
msbuild glfw.sln
xcopy src\Debug\glfw3.lib ..\lib\ /i /y

popd

