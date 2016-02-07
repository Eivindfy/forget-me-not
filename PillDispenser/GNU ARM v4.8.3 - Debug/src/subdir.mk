################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/gpio.cpp \
../src/interruptHandlers.cpp \
../src/leTimer.cpp \
../src/main.cpp \
../src/rtc.cpp \
../src/states.cpp \
../src/stepmotor.cpp \
../src/timer.cpp 

OBJS += \
./src/gpio.o \
./src/interruptHandlers.o \
./src/leTimer.o \
./src/main.o \
./src/rtc.o \
./src/states.o \
./src/stepmotor.o \
./src/timer.o 

CPP_DEPS += \
./src/gpio.d \
./src/interruptHandlers.d \
./src/leTimer.d \
./src/main.d \
./src/rtc.d \
./src/states.d \
./src/stepmotor.d \
./src/timer.d 


# Each subdirectory must supply rules for building sources it contributes
src/gpio.o: ../src/gpio.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C++ Compiler'
	arm-none-eabi-g++ -g -gdwarf-2 -mcpu=cortex-m3 -mthumb '-DEFM32GG990F1024=1' -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/bsp" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32GG/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/EFM32GG_STK3700/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"src/gpio.d" -MT"src/gpio.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/interruptHandlers.o: ../src/interruptHandlers.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C++ Compiler'
	arm-none-eabi-g++ -g -gdwarf-2 -mcpu=cortex-m3 -mthumb '-DEFM32GG990F1024=1' -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/bsp" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32GG/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/EFM32GG_STK3700/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"src/interruptHandlers.d" -MT"src/interruptHandlers.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/leTimer.o: ../src/leTimer.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C++ Compiler'
	arm-none-eabi-g++ -g -gdwarf-2 -mcpu=cortex-m3 -mthumb '-DEFM32GG990F1024=1' -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/bsp" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32GG/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/EFM32GG_STK3700/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"src/leTimer.d" -MT"src/leTimer.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/main.o: ../src/main.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C++ Compiler'
	arm-none-eabi-g++ -g -gdwarf-2 -mcpu=cortex-m3 -mthumb '-DEFM32GG990F1024=1' -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/bsp" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32GG/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/EFM32GG_STK3700/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"src/main.d" -MT"src/main.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/rtc.o: ../src/rtc.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C++ Compiler'
	arm-none-eabi-g++ -g -gdwarf-2 -mcpu=cortex-m3 -mthumb '-DEFM32GG990F1024=1' -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/bsp" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32GG/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/EFM32GG_STK3700/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"src/rtc.d" -MT"src/rtc.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/states.o: ../src/states.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C++ Compiler'
	arm-none-eabi-g++ -g -gdwarf-2 -mcpu=cortex-m3 -mthumb '-DEFM32GG990F1024=1' -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/bsp" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32GG/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/EFM32GG_STK3700/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"src/states.d" -MT"src/states.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/stepmotor.o: ../src/stepmotor.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C++ Compiler'
	arm-none-eabi-g++ -g -gdwarf-2 -mcpu=cortex-m3 -mthumb '-DEFM32GG990F1024=1' -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/bsp" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32GG/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/EFM32GG_STK3700/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"src/stepmotor.d" -MT"src/stepmotor.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/timer.o: ../src/timer.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C++ Compiler'
	arm-none-eabi-g++ -g -gdwarf-2 -mcpu=cortex-m3 -mthumb '-DEFM32GG990F1024=1' -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/bsp" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32GG/Include" -I"D:/Programs/SimplicityStudio/developer/sdks/efm32/v2/kits/EFM32GG_STK3700/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"src/timer.d" -MT"src/timer.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


