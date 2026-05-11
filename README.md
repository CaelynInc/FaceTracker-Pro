
# 🔍 FaceTracker Pro

<div align="center">

```
███████╗ █████╗  ██████╗███████╗████████╗██████╗  █████╗  ██████╗██╗  ██╗███████╗██████╗ 
██╔════╝██╔══██╗██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗
█████╗  ███████║██║     █████╗     ██║   ██████╔╝███████║██║     █████╔╝ █████╗  ██████╔╝
██╔══╝  ██╔══██║██║     ██╔══╝     ██║   ██╔══██╗██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗
██║     ██║  ██║╚██████╗███████╗   ██║   ██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║
╚═╝     ╚═╝  ╚═╝ ╚═════╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
                              ██████╗ ██████╗  ██████╗ 
                              ██╔══██╗██╔══██╗██╔═══██╗
                              ██████╔╝██████╔╝██║   ██║
                              ██╔═══╝ ██╔══██╗██║   ██║
                              ██║     ██║  ██║╚██████╔╝
                              ╚═╝     ╚═╝  ╚═╝ ╚═════╝ 
````

![Python 3.6+](https://img.shields.io/badge/Python-3.6%2B-blue.svg)
![OS Linux](https://img.shields.io/badge/Supported%20OS-Linux-yellow.svg)
![License MIT](https://img.shields.io/badge/License-MIT-green.svg)
![Version 2.0](https://img.shields.io/badge/Version-2.0-red.svg)

**Advanced OSINT tool for discovering social media accounts using facial recognition, reverse image search, and name-based lookups.**

</div>

---

## 📋 Overview

**FaceTracker Pro** is an advanced OSINT (Open Source Intelligence) tool designed to help identify and locate social media profiles using facial recognition technology and reverse image search techniques.

The tool can search across multiple platforms using either:

* A reference image of a person
* A person's name
* Reverse image search integrations

It also supports automated face matching, profile validation, and professional report generation.

---

## ✨ Features

* 🔎 **Image Search** — Upload a person's photo to search for matching social media accounts
* 👤 **Name Search** — Search profiles by entering a person's name
* 📸 **Instagram Support** — Search and validate Instagram profiles
* 📘 **Facebook Support** — Search Facebook accounts with face matching
* 🐦 **Twitter/X Support** — Search Twitter/X accounts
* 🎥 **YouTube Support** — Search YouTube channels
* 🔄 **Reverse Image Search** — Google Reverse Image Search integration
* 🧠 **Face Recognition** — Intelligent face matching using the `face_recognition` library
* 📊 **Professional Reports** — Export results as PDF or JSON
* 🐳 **Docker Support** — Full Docker compatibility

---

## 🛠️ Requirements

* Python 3.6+
* Linux (Ubuntu/Debian/Arch recommended)
* Firefox or Chrome WebDriver
* Internet connection

---

## 📦 Installation

### Quick Installation

```bash
git clone https://github.com/waleedshamhan2050-sys/FaceTracker-Pro.git
cd FaceTracker-Pro
chmod +x install.sh
./install.sh
```

### Manual Installation

```bash
git clone https://github.com/waleedshamhan2050-sys/FaceTracker-Pro.git
cd FaceTracker-Pro
pip3 install -r requirements.txt
```

### Docker Installation

```bash
docker build -t facetracker-pro .
docker run -it facetracker-pro
```

---

## ⚙️ Configuration

### WebDriver Setup

Download and install one of the following:

* GeckoDriver for Firefox
* ChromeDriver for Google Chrome

### Edit Configuration

Modify the `config.json` file to customize:

* Search depth
* Request delays
* Face recognition sensitivity
* WebDriver settings
* Platform-specific behavior

### Add Reference Images

Place reference images inside the `known/` directory.

---

## 🚀 Usage

### Basic Search

```bash
python3 facetracker.py
```

### Skip Facebook Search

```bash
python3 facetracker.py --skipfb
```

### Generate JSON Report

```bash
python3 facetracker.py --json report.json
```

### Docker Mode

```bash
python3 facetracker.py --docker --name "Person Name"
```

### Use a Facebook URL List

```bash
python3 facetracker.py --skipfb --facebookList urls.txt
```

---

## ⚙️ Configuration Reference

| Setting                       | Description                         | Default   |
| ----------------------------- | ----------------------------------- | --------- |
| `SLEEP_DELAY`                 | Delay between requests (seconds)    | `5`       |
| `GOOGLE_IMG_PAGES`            | Number of Google search pages       | `3`       |
| `JITTERS`                     | Face recognition accuracy level     | `10`      |
| `INSTA_VALIDATION_MAX_IMAGES` | Maximum Instagram validation images | `12`      |
| `WEBDRIVER.ENGINE`            | Browser engine                      | `firefox` |

---

## 📁 Project Structure

```text
FaceTracker-Pro/
├── facetracker.py          # Main application
├── face_recog.py           # Face recognition engine
├── config.json             # Configuration file
├── requirements.txt        # Python dependencies
├── install.sh              # Automatic installation script
├── dockerfile              # Docker configuration
├── grabber/                # Data collection modules
│   ├── facebook.py         # Facebook data collector
│   ├── google.py           # Google reverse image search
│   ├── instagram.py        # Instagram data collector
│   └── imageraider.py      # ImageRaider reverse search
├── utils/                  # Utility modules
│   ├── config.py           # Configuration manager
│   └── console.py          # CLI interface
├── report/                 # Reporting system
│   ├── report.py           # Report generator
│   └── template.html       # Report template
├── known/                  # Reference image directory
└── Example.pdf             # Example report
```

---

## 📊 Reports

The tool can generate professional reports containing:

* Discovered account links
* Google prediction results
* Verified Instagram accounts
* Face matching results

Supported export formats:

* **PDF**
* **JSON**

---

## ⚠️ Legal Disclaimer

> This tool is intended strictly for educational and research purposes only.
>
> Users are solely responsible for ensuring their use complies with applicable laws, regulations, and ethical guidelines.
>
> Do not use this tool to violate privacy, harass individuals, or perform unauthorized surveillance or data collection.

---

## 👨‍💻 Developer

**Waleed Shamhan** — Full Stack Developer & Security Researcher

* LinkedIn: [https://linkedin.com/in/waleed-shamhan-b33a41301](https://linkedin.com/in/waleed-shamhan-b33a41301)
* GitHub: [https://github.com/waleedshamhan2050-sys](https://github.com/waleedshamhan2050-sys)
* Telegram: [https://t.me/Programmer_sitting2026](https://t.me/Programmer_sitting2026)

---

## 📄 License

This project is licensed under the MIT License.

See the [LICENSE](LICENSE) file for details.

---

<div align="center">

⭐ If you found this project useful, consider giving it a star! ⭐

</div>
```
