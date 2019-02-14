SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\ProgramData\Oracle\Java\javapath;C:\Program Files (x86)\Common Files\Oracle\Java\javapath;C:\Python37-32\Scripts\;C:\Python37-32\;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0;C:\Program Files\CMake\bin;C:\Qt\Tools\mingw530_32\bin;C:\Program Files\MATLAB\R2017a\bin;C:\OpenCV\qt-build\install\x86\mingw\bin;C:\Windows\WinSxS\amd64_openssh-client-components-onecore_31bf3856ad364e35_10.0.17134.1_none_e57dc8a085c8dd4a;C:\Python37-32;C:\Program Files (x86)\Schneider Electric\SoMachine Software\Tools\ConfigurationManager\;C:\OpenCV\build\bin;C:\Program Files\CodeMeter\Runtime\bin;C:\Program Files\iPod\bin;C:\Program Files\CodeMeter\Runtime\bin;C:\Users\acer\AppData\Local\GitHubDesktop\bin;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\OpenCV\build\bin;C:\Program Files\CodeMeter\Runtime\bin;C:\Program Files\iPod\bin;C:\Program Files\CodeMeter\Runtime\bin;C:\Users\acer\AppData\Local\GitHubDesktop\bin;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode
export AS_BUILD_MODE := BuildAndTransfer
export AS_VERSION := 4.5.2.102
export AS_COMPANY_NAME :=  
export AS_USER_NAME := Kasper_M
export AS_PATH := C:/Program Files/AutomationStudio/AS45
export AS_BIN_PATH := C:/Program Files/AutomationStudio/AS45/bin-en
export AS_PROJECT_PATH := C:/Users/acer/Documents/GitHub/4_sem_simulering_task1/Sim_task1_plc
export AS_PROJECT_NAME := Sim_task1_plc
export AS_SYSTEM_PATH := C:/Program\ Files/AutomationStudio/AS/System
export AS_VC_PATH := C:/Program\ Files/AutomationStudio/AS45/AS/VC
export AS_TEMP_PATH := C:/Users/acer/Documents/GitHub/4_sem_simulering_task1/Sim_task1_plc/Temp
export AS_CONFIGURATION := Config1
export AS_BINARIES_PATH := C:/Users/acer/Documents/GitHub/4_sem_simulering_task1/Sim_task1_plc/Binaries
export AS_GNU_INST_PATH := C:/Program\ Files/AutomationStudio/AS45/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/Program Files/AutomationStudio/AS45/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := C:/Program\ Files/AutomationStudio/AS45
export WIN32_AS_PATH := "C:\Program Files\AutomationStudio\AS45"
export WIN32_AS_BIN_PATH := "C:\Program Files\AutomationStudio\AS45\bin-en"
export WIN32_AS_PROJECT_PATH := "C:\Users\acer\Documents\GitHub\4_sem_simulering_task1\Sim_task1_plc"
export WIN32_AS_SYSTEM_PATH := "C:\Program Files\AutomationStudio\AS\System"
export WIN32_AS_VC_PATH := "C:\Program Files\AutomationStudio\AS45\AS\VC"
export WIN32_AS_TEMP_PATH := "C:\Users\acer\Documents\GitHub\4_sem_simulering_task1\Sim_task1_plc\Temp"
export WIN32_AS_BINARIES_PATH := "C:\Users\acer\Documents\GitHub\4_sem_simulering_task1\Sim_task1_plc\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\Program Files\AutomationStudio\AS45\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "C:\Program Files\AutomationStudio\AS45"

.suffixes:

ProjectMakeFile:

	@'$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/Sim_task1_plc.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'BuildAndTransfer'   

