################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/src/em_cmu.c \
D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/src/em_emu.c \
D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/src/em_gpio.c \
../emlib/em_lcd.c \
../emlib/em_letimer.c \
D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/src/em_rtc.c \
D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/src/em_system.c \
../emlib/em_timer.c 

OBJS += \
./emlib/em_cmu.o \
./emlib/em_emu.o \
./emlib/em_gpio.o \
./emlib/em_lcd.o \
./emlib/em_letimer.o \
./emlib/em_rtc.o \
./emlib/em_system.o \
./emlib/em_timer.o 

C_DEPS += \
./emlib/em_cmu.d \
./emlib/em_emu.d \
./emlib/em_gpio.d \
./emlib/em_lcd.d \
./emlib/em_letimer.d \
./emlib/em_rtc.d \
./emlib/em_system.d \
./emlib/em_timer.d 


# Each subdirectory must supply rules for building sources it contributes
emlib/em_cmu.o: D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/src/em_cmu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb '-DEFM32GG990F1024=1' '-DDEBUG=1' -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/bsp" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32GG/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/EFM32GG_STK3700/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"emlib/em_cmu.d" -MT"emlib/em_cmu.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_emu.o: D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/src/em_emu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb '-DEFM32GG990F1024=1' '-DDEBUG=1' -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/bsp" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32GG/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/EFM32GG_STK3700/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"emlib/em_emu.d" -MT"emlib/em_emu.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_gpio.o: D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/src/em_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb '-DEFM32GG990F1024=1' '-DDEBUG=1' -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/bsp" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32GG/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/EFM32GG_STK3700/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"emlib/em_gpio.d" -MT"emlib/em_gpio.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_lcd.o: ../emlib/em_lcd.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb '-DEFM32GG990F1024=1' '-DDEBUG=1' -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/bsp" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32GG/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/EFM32GG_STK3700/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"emlib/em_lcd.d" -MT"emlib/em_lcd.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_letimer.o: ../emlib/em_letimer.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb '-DEFM32GG990F1024=1' '-DDEBUG=1' -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/bsp" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32GG/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/EFM32GG_STK3700/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"emlib/em_letimer.d" -MT"emlib/em_letimer.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_rtc.o: D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/src/em_rtc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb '-DEFM32GG990F1024=1' '-DDEBUG=1' -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/bsp" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32GG/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/EFM32GG_STK3700/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"emlib/em_rtc.d" -MT"emlib/em_rtc.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_system.o: D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/src/em_system.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb '-DEFM32GG990F1024=1' '-DDEBUG=1' -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/bsp" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32GG/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/EFM32GG_STK3700/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"emlib/em_system.d" -MT"emlib/em_system.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_timer.o: ../emlib/em_timer.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb '-DEFM32GG990F1024=1' '-DDEBUG=1' -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/bsp" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32GG/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/EFM32GG_STK3700/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"emlib/em_timer.d" -MT"emlib/em_timer.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


