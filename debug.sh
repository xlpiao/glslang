
gdb --args $PWD/dBuild/install/bin/glslangValidator -V -D -H test.vs -S vert -e main -o test.vs.vert.spv \
                                                    --rsb 0 --hlsl-iomap --amb --aml --sub 0 --stb 16 --ssb 32 --iy
# gdb --args $PWD/dBuild/install/bin/glslangValidator -V -D -H directx.vs -S vert -e main -o directx.vs.vert.spv \
                                                    # --rsb 0 --hlsl-iomap --amb --aml --sub 0 --stb 16 --ssb 32 --iy
