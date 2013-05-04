#!/bin/bash
# Ensure our colors are used above preset colors
unset GCC_COLORS
# Always use diagnostic colors, supported in gcc 4.9.x+
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
make clobber
source build/envsetup.sh
lunch RasSaber_emulator-eng -j16 && lunch RasSaber_maguro-user && make otapackage -j16 && lunch RasSaber_mako-user && make otapackage -j16 && lunch RasSaber_manta-user && make otapackage -j16 && lunch RasSaber_grouper-user && make otapackage -j16 && lunch RasSaber_toro-user && make otapackage -j16

