# 📄 drop-to-ocr

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Docker](https://img.shields.io/badge/Docker-Required-blue.svg)](https://www.docker.com/)
[![Platform](https://img.shields.io/badge/Platform-Windows-lightgrey.svg)]()

> A zero-friction, drag-and-drop Windows batch wrapper around [OCRmyPDF](https://github.com/ocrmypdf/OCRmyPDF) running inside a lightweight, ephemeral Docker container.

Turn scanned PDFs or raw images (`.jpg`, `.png`) into fully searchable, text-selectable PDFs in seconds without installing complex local OCR toolchains.

---

## 💡 Why This Exists

Running OCR locally on Windows often means installing Python, Tesseract, Ghostscript, and unpaper, leading to environment pollution and dependency conflicts. 

`drop-to-ocr` solves this by encapsulating the entire OCR pipeline inside an isolated Docker container. No local setup, no complex CLI commands to memorize — just **drag, drop, and done**.

## ✨ Features

* **Zero Local Pollution:** Everything runs in an ephemeral Docker container. Your system stays clean.
* **100% Privacy First:** All processing happens locally on your hardware. No external APIs, no data telemetry.
* **Auto-Correction:** Automatically fixes orientation (`--deskew`) and cleans up scan artifacts (`--clean`).
* **Bilingual Out of the Box:** Pre-configured for French and English (`fra+eng`).
* **Format Flexibility:** Accepts both PDF scans and raw image formats (`.jpg`, `.png`).

---

## 🚀 Getting Started

### Prerequisites

* **Windows OS** (PowerShell or Command Prompt).
* **[Docker Desktop](https://www.docker.com/products/docker-desktop/)** installed and running.

### Installation

1. Clone this repository:
   ```powershell
   git clone [https://github.com/nhue-lab/drop-to-ocr.git](https://github.com/nhue-lab/drop-to-ocr.git)
   cd drop-to-ocr

```

2. *(Optional)* Move `OCR_Glisser_Deposer.bat` or a shortcut to your desktop or your preferred working folder.

---

## 🛠️ Usage

1. Make sure **Docker Desktop** is running.
2. Select any scanned PDF or image file (`.jpg`, `.png`).
3. **Drag and drop** the file directly onto the `OCR_Glisser_Deposer.bat` file.
4. A terminal window will open, process the file, and output a new PDF named `<original_name>_OCR.pdf` in the same directory.

---

## 🤝 Contributing

Contributions make the open-source community an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'feat: Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Ideas for Contributions

* Add multi-language selector flags.
* Add a PowerShell native alternative (`.ps1`).
* Create a Windows `SendTo` context menu automated setup script.

---

## 📜 License

Distributed under the MIT License. See `LICENSE` for more information.

---

## 🙏 Acknowledgments

* [OCRmyPDF](https://github.com/ocrmypdf/OCRmyPDF) by jbarlow83 for the underlying OCR engine.
* [Docker](https://www.docker.com/) for containerization.

```

---

### To update your repo immediately:

1. Replace the content of your local `README.md` file with this text.
2. Run these commands in PowerShell:

```powershell
git add README.md
git commit -m "docs: overhaul README with community-centric guidelines"
git push

```