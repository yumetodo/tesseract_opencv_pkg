# Maintainer: Ray Rashif <schiv@archlinux.org>
# Contributor: Tobias Powalowski <tpowa@archlinux.org>
# Contributor: yumetodo <yume-wikijp@live.jp>

pkgname=opencv-tesseract
pkgver=4.5.1
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
sha256sums=('5fbc26ee09e148a4d494b225d04217f7c913ca1a4d46115b70cca3565d7bbe05'
            '12c3b1ddd0b8c1a7da5b743590a288df0934e5cef243e036ca290c2e45e425f5')

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
