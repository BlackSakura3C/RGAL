file(REMOVE_RECURSE
  "libglogtestd.a"
  "libglogtestd.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/glogtest.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
