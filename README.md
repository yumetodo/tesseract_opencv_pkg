# ArchLinux OpenCV package with Tesseract integration

[![CircleCI](https://circleci.com/gh/yumetodo/tesseract_opencv_pkg.svg?style=svg)](https://circleci.com/gh/yumetodo/tesseract_opencv_pkg)


## Motivation

[Official ArchLinux OpenCV package](https://git.archlinux.org/svntogit/packages.git/tree/trunk/PKGBUILD?h=packages/opencv) doen't have Tesseract Integration.

Also, Original package is too big for OCR usage.

## Diff with Official Package

```
--   OpenCV modules:
--     To be built:                 alphamat aruco bgsegm bioinspired calib3d ccalib core datasets dnn dnn_objdetect dnn_superres dpm face features2d flann freetype fuzzy gapi hdf hfs highgui img_hash imgcodecs imgproc intensity_transform line_descriptor mcc ml objdetect optflow phase_unwrapping photo plot quality rapid reg rgbd saliency shape stereo stitching structured_light superres surface_matching text tracking video videoio videostab viz xfeatures2d ximgproc xobjdetect xphoto
--     Disabled:                    world
--     Disabled by dependency:      -
--     Unavailable:                 cnn_3dobj cudaarithm cudabgsegm cudacodec cudafeatures2d cudafilters cudaimgproc cudalegacy cudaobjdetect cudaoptflow cudastereo cudawarping cudev cvv java js julia matlab ovis python2 python3 sfm ts
--     Applications:                apps
--     Documentation:               NO
--     Non-free algorithms:         YES
```
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

## Docker

- DockerHub: [https://hub.docker.com/r/yumetodo/tesseract_opencv](https://hub.docker.com/r/yumetodo/tesseract_opencv)
- GitHub: [https://github.com/yumetodo/docker_tesseract_opencv_env](https://github.com/yumetodo/docker_tesseract_opencv_env)
