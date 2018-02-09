
# gdb --args $PWD/dBuild/install/bin/glslangValidator -V -D -S vert test.vs -e main --iy -o test.vs.vert.spv
# gdb --args $PWD/dBuild/install/bin/glslangValidator -V -D -S vert test.vs -e main --iy -o test.vs.vert.spv -H
# gdb --args $PWD/dBuild/install/bin/glslangValidator -V -D -S vert directx.vs -e main --iy -o directx.vs.vert.spv
gdb --args $PWD/dBuild/install/bin/glslangValidator -V -D -S vert directx.vs -e main --iy -o directx.vs.vert.spv -H
