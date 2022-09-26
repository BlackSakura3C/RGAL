file(REMOVE_RECURSE
  "libglogd.dll"
  "libglogd.dll.a"
  "libglogd.dll.manifest"
  "libglogd.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/glog.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
