# 🕵️ SPY Network Tool

**Ultimate Network Surveillance & Management Tool**  
Creator: **Mariwan Iraj**

---

## 🚀 One-Line Installation

**PowerShell (Run as Administrator):**
```powershell
irm https://raw.githubusercontent.com/Mariwan001/spy-tool/main/install.ps1 | iex
```

After installation, close and reopen your terminal, then type:
```cmd
spy --help
```

---

## 📋 Features

### 📡 Network Scanning
- **`spy scanwifi`** - Scan all connected devices (filters fake/virtual devices)
- **`spy searchwifi`** - Find all WiFi networks around you

### 🔐 WiFi Information
- **`spy wifipass`** - Show your WiFi password
- **`spy wifitype`** - Show WiFi type and router info

### 🔧 Advanced Tools
- **`spy translate <MAC>`** - Convert MAC address to IP
- **`spy inject <IP> <message>`** - Send popup message to device
- **`spy kick <IP>`** - Disconnect device from network

### ℹ️ Information
- **`spy creator`** - Show creator info
- **`spy --help`** - Show all commands

---

## 💻 Manual Installation

**Download the installer:**
- [spy.exe - Latest Release](https://github.com/Mariwan001/spy-tool/releases/latest/download/spy.exe)
- [spy-installer.bat](https://github.com/Mariwan001/spy-tool/blob/main/spy-installer.bat)

**Then run `spy-installer.bat` as Administrator**

---

## 🎯 Quick Examples
```cmd
spy scanwifi                          # Scan network devices
spy wifipass                          # Get WiFi password
spy searchwifi                        # Find nearby WiFi
spy translate 40:EE:DD:4A:E8:CF      # MAC to IP
spy inject 192.168.1.100 "Hello!"    # Send message
spy kick 192.168.1.100               # Kick device
```

---

## 🔄 Uninstall
```powershell
C:\Program Files\SPY\uninstall.ps1
```

---

## 📦 Requirements

- Windows 10/11
- Administrator privileges (for some commands)
- Active network connection

---

## ⚖️ Legal Notice

This tool is for **educational and authorized network administration only**.  
Unauthorized network access or surveillance may be illegal in your jurisdiction.  
Use responsibly and only on networks you own or have permission to test.

---

## 📝 License

MIT License - Free to use and modify

---

**Made with ❤️ by Mariwan Iraj**
