# GTA SA Model Tools – DFF and COL Converter

![Windows](https://img.shields.io/badge/Platform-Windows-blue)
![Batch Script](https://img.shields.io/badge/Script-.bat-orange)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

Convert `.dff` files from **GTA III or GTA Vice City** to **GTA San Andreas** format and generate `.col` collision files using a simple `.bat` script.

## 🔗 External Tools

This script relies on the following external tools:

- [III/VC/SA DFF and TXD Mass Converter - MixMods Forum](https://forum.mixmods.com.br/f50-utilidades/t7087-iii-vc-sa-dff-and-txd-mass-converter)
- [kdff - SAMP Forum Thread](https://sampforum.blast.hk/showthread.php?tid=644075)

Make sure you have `convdff` and `kdff` available in your PATH or in the same folder as the script.

## 🚀 Usage

1. Place all `.dff` files you want to convert in the `models` folder.
2. Run `convert.bat` by double-clicking it.
3. The script will automatically:
   - Delete existing `models_sa` and `col_output` folders (if they exist)
   - Create fresh folders `models_sa` and `col_output`
   - Convert each `.dff` from GTA III/VC → `models_sa` compatible with GTA SA
   - Generate `.col` files for each converted `.dff` → `col_output`

## ⚠️ Notes

- Always **backup your original files** before running the script.
- `models_sa` and `col_output` folders will be **deleted and recreated** on each run.

## 🎯 Example Workflow

1. Add your GTA III or GTA Vice City `.dff` files to `models/`.
2. Double-click `convert.bat`.
3. Wait for the conversion to finish.
4. Check `models_sa/` for GTA SA-compatible `.dff` files and `col_output/` for generated `.col` files.
