dir=$(pwd)

echo "Configuring and building Thirdparty/DBoW2 ..."
cd "${dir}/Thirdparty/DBoW2"
mkdir -p build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j

echo "Configuring and building Thirdparty/g2o ..."
cd "${dir}/Thirdparty/g2o"
mkdir -p build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j

echo "Uncompress vocabulary ..."
cd "${dir}/Vocabulary"
tar -xf ORBvoc.txt.tar.gz

echo "Build.sh finished"

