$(AS_CPU_PATH)/sysconf.br: \
	$(AS_PROJECT_CONFIG_PATH)/Hardware.hw 
	@"$(AS_BIN_PATH)/BR.AS.ConfigurationBuilder.exe" "$(AS_PROJECT_CONFIG_PATH)/Hardware.hw"  -c Config1 -sysconf -S "4PP065_0351_P74" -o "$(AS_CPU_PATH)/sysconf.br" -T SG4  -B J4.25 -P "$(AS_PROJECT_PATH)" -s "Config1" -secret "$(AS_PROJECT_PATH)_br.as.configurationbuilder.exe"

-include $(AS_CPU_PATH)/Force.mak 
