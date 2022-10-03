
if(NOT "/Volumes/SSD/Git/RGAL/build/_deps/zlib-subbuild/zlib-populate-prefix/src/zlib-populate-stamp/zlib-populate-gitinfo.txt" IS_NEWER_THAN "/Volumes/SSD/Git/RGAL/build/_deps/zlib-subbuild/zlib-populate-prefix/src/zlib-populate-stamp/zlib-populate-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/Volumes/SSD/Git/RGAL/build/_deps/zlib-subbuild/zlib-populate-prefix/src/zlib-populate-stamp/zlib-populate-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "/Volumes/SSD/Git/RGAL/src/include/extlibs/cpr-master/deps/zlib"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/Volumes/SSD/Git/RGAL/src/include/extlibs/cpr-master/deps/zlib'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/local/bin/git"  clone --no-checkout --config "advice.detachedHead=false" "https://github.com/zlib-ng/zlib-ng" "zlib"
    WORKING_DIRECTORY "/Volumes/SSD/Git/RGAL/src/include/extlibs/cpr-master/deps"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/zlib-ng/zlib-ng'")
endif()

execute_process(
  COMMAND "/usr/local/bin/git"  checkout 2.0.6 --
  WORKING_DIRECTORY "/Volumes/SSD/Git/RGAL/src/include/extlibs/cpr-master/deps/zlib"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: '2.0.6'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/local/bin/git"  submodule update --recursive --init 
    WORKING_DIRECTORY "/Volumes/SSD/Git/RGAL/src/include/extlibs/cpr-master/deps/zlib"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/Volumes/SSD/Git/RGAL/src/include/extlibs/cpr-master/deps/zlib'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/Volumes/SSD/Git/RGAL/build/_deps/zlib-subbuild/zlib-populate-prefix/src/zlib-populate-stamp/zlib-populate-gitinfo.txt"
    "/Volumes/SSD/Git/RGAL/build/_deps/zlib-subbuild/zlib-populate-prefix/src/zlib-populate-stamp/zlib-populate-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/Volumes/SSD/Git/RGAL/build/_deps/zlib-subbuild/zlib-populate-prefix/src/zlib-populate-stamp/zlib-populate-gitclone-lastrun.txt'")
endif()

