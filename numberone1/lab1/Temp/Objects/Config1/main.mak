SHELL = cmd.exe
CYGWIN=nontsec
export PATH := C:\ProgramData\Oracle\Java\javapath;C:\Program Files (x86)\Intel\TXE Components\TCS\;C:\Program Files\Intel\TXE Components\TCS\;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files\Intel\TXE Components\DAL\;C:\Program Files (x86)\Intel\TXE Components\DAL\;C:\Program Files\Intel\TXE Components\IPT\;C:\Program Files (x86)\Intel\TXE Components\IPT\;C:\Program Files\Microsoft SQL Server\130\Tools\Binn\;C:\Program Files\Microsoft\Web Platform Installer\;C:\Program Files\TortoiseGit\bin;C:\Program Files (x86)\Windows Kits\8.1\Windows Performance Toolkit
export AS_BUILD_MODE := BuildAndTransfer
export AS_VERSION := 4.2.5.388
export AS_COMPANY_NAME :=  
export AS_USER_NAME := labuser
export AS_PATH := C:/BrAutomation/AS42
export AS_BIN_PATH := C:/BrAutomation/AS42/Bin-en
export AS_PROJECT_PATH := D:/Lab1/lab1
export AS_PROJECT_NAME := lab1
export AS_SYSTEM_PATH := C:/BrAutomation/AS/System
export AS_VC_PATH := C:/BrAutomation/AS42/AS/VC
export AS_TEMP_PATH := D:/Lab1/lab1/Temp
export AS_CONFIGURATION := Config1
export AS_BINARIES_PATH := D:/Lab1/lab1/Binaries
export AS_GNU_INST_PATH := C:/BrAutomation/AS42/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/BrAutomation/AS42/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := C:/BrAutomation/AS42
export WIN32_AS_PATH := "C:\BrAutomation\AS42"
export WIN32_AS_BIN_PATH := "C:\BrAutomation\AS42\Bin-en"
export WIN32_AS_PROJECT_PATH := "D:\Lab1\lab1"
export WIN32_AS_SYSTEM_PATH := "C:\BrAutomation\AS\System"
export WIN32_AS_VC_PATH := "C:\BrAutomation\AS42\AS\VC"
export WIN32_AS_TEMP_PATH := "D:\Lab1\lab1\Temp"
export WIN32_AS_BINARIES_PATH := "D:\Lab1\lab1\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\BrAutomation\AS42\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "C:\BrAutomation\AS42"

.suffixes:

ProjectMakeFile:

	@"$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe" "$(AS_PROJECT_PATH)/lab1.apj" -t "$(AS_TEMP_PATH)" -c "$(AS_CONFIGURATION)" -o "$(AS_BINARIES_PATH)"   -sfas -buildMode "BuildAndTransfer"  

	@$(AS_GNU_BIN_PATH)/mingw32-make.exe -r -f 'D:/Lab1/lab1/Temp/Objects/$(AS_CONFIGURATION)/4PP065_0351_P74/#cpu.mak' -k 

