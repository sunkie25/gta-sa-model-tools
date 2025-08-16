# GTA SA DFF and TXD Mass Converter

![Windows](https://img.shields.io/badge/Platform-Windows-blue)
![Batch Script](https://img.shields.io/badge/Script-.bat-orange)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

Bulk convert `.dff` files and generate `.col` files for **GTA San Andreas** using a simple `.bat` script.

---

## 🔗 External Tools

This script relies on the following external tools:

- [III/VC/SA DFF and TXD Mass Converter - MixMods Forum](https://forum.mixmods.com.br/f50-utilidades/t7087-iii-vc-sa-dff-and-txd-mass-converter)
- [SAMP Forum Thread](https://sampforum.blast.hk/showthread.php?tid=644075)

Make sure you have `convdff` and `kdff` available in your PATH or in the same folder as the script.

---

## 🛠 Requirements

- Windows OS
- `convdff` and `kdff` tools
- `models` folder containing `.dff` files to convert

---

## 🚀 Usage

1. Place all `.dff` files in the `models` folder.
2. Run `convert.bat` by double-clicking it.
3. The script will automatically:
   - Delete existing `models_sa` and `col_output` folders (if they exist)
   - Create fresh folders `models_sa` and `col_output`
   - Convert each `.dff` from `models` → `models_sa`
   - Generate `.col` files for each converted `.dff` → `col_output`

---

## 📁 Folder Structure
/models -> original .dff files
/models_sa -> converted .dff files
/col_output -> generated .col files
convert.bat -> conversion script


---

## ⚠️ Notes

- Always **backup your original files** before running the script.
- `models_sa` and `col_output` folders will be **deleted and recreated** on each run.

---

## 🎯 Example Workflow

1. Add your `.dff` files to `models/`.
2. Double-click `convert.bat`.
3. Wait for the conversion to finish.
4. Check `models_sa/` for converted files and `col_output/` for `.col` files.

---

## 📷 Guide (Simulated)

**Step 1: Add files to `models/` folder**  
models/
├── car1.dff
├── car2.dff
└── bike1.dff

**Step 2: Run `convert.bat`**  
Double-click the script or run it in Command Prompt.

**Step 3: Conversion result**  
models_sa/
├── car1.dff
├── car2.dff
└── bike1.dff

col_output/
├── car1.col
├── car2.col
└── bike1.col


**Step 4: Ready to use**  
The `.col` files can now be used in your GTA SA mods.

