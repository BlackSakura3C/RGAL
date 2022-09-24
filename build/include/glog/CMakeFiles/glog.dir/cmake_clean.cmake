file(REMOVE_RECURSE
  "libglogd.0.7.0.dylib"
  "libglogd.1.dylib"
  "libglogd.dylib"
  "libglogd.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/glog.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
