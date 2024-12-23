# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "H:/AVH-Hello/isambard/UserShares/je/AVH-Hello/tmp/Hello.Debug+CS300")
  file(MAKE_DIRECTORY "H:/AVH-Hello/isambard/UserShares/je/AVH-Hello/tmp/Hello.Debug+CS300")
endif()
file(MAKE_DIRECTORY
  "H:/AVH-Hello/isambard/UserShares/je/AVH-Hello/tmp/1"
  "H:/AVH-Hello/isambard/UserShares/je/AVH-Hello/tmp/Hello.Debug+CS300"
  "H:/AVH-Hello/isambard/UserShares/je/AVH-Hello/tmp/Hello.Debug+CS300/tmp"
  "H:/AVH-Hello/isambard/UserShares/je/AVH-Hello/tmp/Hello.Debug+CS300/src/Hello.Debug+CS300-stamp"
  "H:/AVH-Hello/isambard/UserShares/je/AVH-Hello/tmp/Hello.Debug+CS300/src"
  "H:/AVH-Hello/isambard/UserShares/je/AVH-Hello/tmp/Hello.Debug+CS300/src/Hello.Debug+CS300-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "H:/AVH-Hello/isambard/UserShares/je/AVH-Hello/tmp/Hello.Debug+CS300/src/Hello.Debug+CS300-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "H:/AVH-Hello/isambard/UserShares/je/AVH-Hello/tmp/Hello.Debug+CS300/src/Hello.Debug+CS300-stamp${cfgdir}") # cfgdir has leading slash
endif()
