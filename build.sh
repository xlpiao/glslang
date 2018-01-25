mkdir -p dBuild && cd dBuild
rm -rf *
cmake -GNinja -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=`pwd`/install ..
ninja install -j9
cd ..
