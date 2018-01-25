cd dBuild
ninja install -j9
cd ..

echo "-------------------------------------------------"
$PWD/dBuild/install/bin/glslangValidator -V -D -S vert test.vs -e main --rsb 0 --iy -o test.vs.vert.spv
echo "-------------------------------------------------"
$PWD/dBuild/install/bin/glslangValidator -V -D -S vert directx.vs -e main --rsb 0 --iy -o directx.vs.vert.spv

rm test.vs.vert.spv directx.vs.vert.spv
