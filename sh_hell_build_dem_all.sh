#!/bin/bash
make clobber
source build/envsetup.sh
lunch RasSaber_emulator-eng -j16 && lunch RasSaber_maguro-user && make otapackage -j16 && lunch RasSaber_mako-user && make otapackage -j16 && lunch RasSaber_manta-user && make otapackage -j16 && lunch RasSaber_grouper-user && make otapackage -j16 && lunch RasSaber_toro-user && make otapackage -j16

