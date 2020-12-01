# Maintainer: Ray Rashif <schiv@archlinux.org>
# Contributor: Tobias Powalowski <tpowa@archlinux.org>
# Contributor: yumetodo <yume-wikijp@live.jp>

pkgname=opencv-tesseract
pkgver=4.5.0
pkgrel=1
pkgdesc="Open Source Computer Vision Library"
arch=(x86_64)
license=(BSD)
url="https://opencv.org/"
depends=(tbb openexr openjpeg2 ffmpeg tesseract)
makedepends=(cmake mesa eigen hdf5 vtk glew)
conflicts=(opencv)
optdepends=('vtk: for the viz module'
            'hdf5: for the HDF5 module and the Python bindings'
            'opencl-icd-loader: For coding with OpenCL')
source=("opencv-$pkgver.tar.gz::https://github.com/opencv/opencv/archive/$pkgver.zip"
        "opencv_contrib-$pkgver.tar.gz::https://github.com/opencv/opencv_contrib/archive/$pkgver.tar.gz")
sha256sums=('168f6e61d8462fb3d5a29ba0d19c0375c111125cac753ad01035a359584ccde9'
            'a65f1f0b98b2c720abbf122c502044d11f427a43212d85d8d2402d7a6339edda')

build() {
  cmake -B build -S opencv-$pkgver \
    -DWITH_OPENCL=ON \
    -DWITH_OPENGL=ON \
    -DWITH_TBB=ON \
    -DWITH_VULKAN=ON \
    -DWITH_TESSERACT=ON \
    -DWITH_GSTREAMER=OFF \
    -DWITH_1394=OFF \
    -DWITH_GPHOTO2=OFF \
    -DWITH_PROTOBUF=OFF \
    -DOPENCV_DNN_OPENCL=OFF \
    -DBUILD_WITH_DEBUG_INFO=OFF \
    -DBUILD_TESTS=OFF \
    -DBUILD_PERF_TESTS=OFF \
    -DBUILD_JAVA=OFF \
    -DBUILD_opencv_python2=OFF \
    -DBUILD_opencv_python3=OFF \
    -DCMAKE_INSTALL_PREFIX=/usr \
    -DOPENCV_EXTRA_MODULES_PATH="$srcdir/opencv_contrib-$pkgver/modules" \
    -DOPENCV_GENERATE_PKGCONFIG=ON \
    -DOPENCV_ENABLE_NONFREE=ON \
    -DOPENCV_GENERATE_SETUPVARS=OFF \
    -DEIGEN_INCLUDE_PATH=/usr/include/eigen3
  cmake --build build
}

package() {
  DESTDIR="$pkgdir" cmake --install build

  # install license file
  install -Dm644 opencv-$pkgver/LICENSE -t "$pkgdir"/usr/share/licenses/opencv
}
