UnmarkedObjectFolder := D:/Lab1/lab1/Logical/Libraries/MororC
MarkedObjectFolder := D:/Lab1/lab1/Logical/Libraries/MororC

$(AS_CPU_PATH)/MororC.br: \
	$(AS_PROJECT_PATH)/Logical/Libraries/MororC/ANSIC.lby \
	$(AS_CPU_PATH)/MororC/MororC.ox
	@"$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe" "$(AS_CPU_PATH)/MororC/MororC.ox" -o "$(AS_CPU_PATH)/MororC.br" -v V1.00.0 -f "$(AS_CPU_PATH)/NT.ofs" -offsetLT "$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/LT.ofs" -T SG4  -M IA32  -B J4.25 -extConstants -r Library -s "Libraries.MororC" -L "AsIecCon: V*, astime: V*, MororC: V*, operator: V*, runtime: V*" -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.taskbuilder.exe"

$(AS_CPU_PATH)/MororC/MororC.ox: \
	$(AS_CPU_PATH)/MororC/a.out
	@"$(AS_BIN_PATH)/BR.AS.Backend.exe" "$(AS_CPU_PATH)/MororC/a.out" -o "$(AS_CPU_PATH)/MororC/MororC.ox" -T SG4 -r Library   -G V4.1.2  -secret "$(AS_PROJECT_PATH)_br.as.backend.exe"

$(AS_CPU_PATH)/MororC/a.out: \
	$(AS_CPU_PATH)/MororC/FB_Motor.c.o \
	$(AS_CPU_PATH)/MororC/FB_Integrator.c.o \
	$(AS_CPU_PATH)/MororC/FB_Regulator.c.o
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" -link "$(AS_CPU_PATH)/MororC/FB_Motor.c.o" "$(AS_CPU_PATH)/MororC/FB_Integrator.c.o" "$(AS_CPU_PATH)/MororC/FB_Regulator.c.o"  -o "$(AS_CPU_PATH)/MororC/a.out"  -G V4.1.2  -T SG4  -M IA32  "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libAsIecCon.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libastime.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libruntime.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/liboperator.a" -specs=I386specs -Wl,-q,-T,bur_elf_i386.x -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/MororC/FB_Motor.c.o: \
	$(AS_PROJECT_PATH)/Logical/Libraries/MororC/FB_Motor.c \
	$(AS_PROJECT_PATH)/Logical/Libraries/MororC/MororC.fun \
	$(AS_TEMP_PATH)/Includes/MororC.h
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Libraries/MororC/FB_Motor.c" -o "$(AS_CPU_PATH)/MororC/FB_Motor.c.o"  -T SG4  -M IA32  -B J4.25 -G V4.1.2  -s "Libraries.MororC" -t "$(AS_TEMP_PATH)" -r Library -I "$(AS_PROJECT_PATH)/Logical/Libraries/MororC" "$(AS_TEMP_PATH)/Includes/Libraries/MororC" "$(AS_TEMP_PATH)/Includes" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -Wall -include "$(AS_CPU_PATH)/Libraries.h" -D _MORORC_EXPORT -x c -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/MororC/FB_Integrator.c.o: \
	$(AS_PROJECT_PATH)/Logical/Libraries/MororC/FB_Integrator.c \
	$(AS_PROJECT_PATH)/Logical/Libraries/MororC/MororC.fun \
	$(AS_TEMP_PATH)/Includes/MororC.h
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Libraries/MororC/FB_Integrator.c" -o "$(AS_CPU_PATH)/MororC/FB_Integrator.c.o"  -T SG4  -M IA32  -B J4.25 -G V4.1.2  -s "Libraries.MororC" -t "$(AS_TEMP_PATH)" -r Library -I "$(AS_PROJECT_PATH)/Logical/Libraries/MororC" "$(AS_TEMP_PATH)/Includes/Libraries/MororC" "$(AS_TEMP_PATH)/Includes" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -Wall -include "$(AS_CPU_PATH)/Libraries.h" -D _MORORC_EXPORT -x c -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/MororC/FB_Regulator.c.o: \
	$(AS_PROJECT_PATH)/Logical/Libraries/MororC/FB_Regulator.c \
	$(AS_PROJECT_PATH)/Logical/Libraries/MororC/MororC.fun \
	$(AS_TEMP_PATH)/Includes/MororC.h
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Libraries/MororC/FB_Regulator.c" -o "$(AS_CPU_PATH)/MororC/FB_Regulator.c.o"  -T SG4  -M IA32  -B J4.25 -G V4.1.2  -s "Libraries.MororC" -t "$(AS_TEMP_PATH)" -r Library -I "$(AS_PROJECT_PATH)/Logical/Libraries/MororC" "$(AS_TEMP_PATH)/Includes/Libraries/MororC" "$(AS_TEMP_PATH)/Includes" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -Wall -include "$(AS_CPU_PATH)/Libraries.h" -D _MORORC_EXPORT -x c -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

-include $(AS_CPU_PATH)/Force.mak 

