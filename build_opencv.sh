wget 'https://github.com/Itseez/opencv/archive/3.1.0.zip'
unzip 3.1.0.zip
rm -rf 3.1.0.zip

OPENCV_SRC=opencv-3.1.0

mkdir -p ${OPENCV_SRC}/release
cd ${OPENCV_SRC}/release
cmake -D WITH_GTK_2_X=ON -D WITH_OPENGL=ON -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTLL_PREFIX=/usr/local -D WITH_TBB=ON ..
make -j4 && make install

ln /usr/local/share/OpenCV/3rdparty/lib/libippicv.a /usr/local/lib/libippicv.a

cd /
rm -rf ${OPENCV_SRC}
