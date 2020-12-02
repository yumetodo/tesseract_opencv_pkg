# ArchLinux OpenCV package with Tesseract integration

[![CircleCI](https://circleci.com/gh/yumetodo/tesseract_opencv_pkg.svg?style=svg)](https://circleci.com/gh/yumetodo/tesseract_opencv_pkg)


## Motivation

[Official ArchLinux OpenCV package](https://git.archlinux.org/svntogit/packages.git/tree/trunk/PKGBUILD?h=packages/opencv) doen't have Tesseract Integration.

Also, Original package is too big for OCR usage.

## Diff with Official Package

### Enabled feature

- Tesseract

### Disabled feature

- python
- java
- gstreamer
- dc1394
- gphoto2
- cblus
- lapack
- protobuf
- DNN
