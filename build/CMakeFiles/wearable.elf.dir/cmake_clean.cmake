file(REMOVE_RECURSE
  "bootloader/bootloader.bin"
  "bootloader/bootloader.elf"
  "bootloader/bootloader.map"
  "config/sdkconfig.cmake"
  "config/sdkconfig.h"
  "flash_project_args"
  "project_elf_src.c"
  "wearable.bin"
  "wearable.map"
  "CMakeFiles/wearable.elf.dir/project_elf_src.c.obj"
  "project_elf_src.c"
  "wearable.elf"
  "wearable.elf.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/wearable.elf.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
