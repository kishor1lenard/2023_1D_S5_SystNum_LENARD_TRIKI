################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/mes_fichiers/vu_meter.c 

OBJS += \
./Core/Src/mes_fichiers/vu_meter.o 

C_DEPS += \
./Core/Src/mes_fichiers/vu_meter.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/mes_fichiers/%.o Core/Src/mes_fichiers/%.su Core/Src/mes_fichiers/%.cyclo: ../Core/Src/mes_fichiers/%.c Core/Src/mes_fichiers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-mes_fichiers

clean-Core-2f-Src-2f-mes_fichiers:
	-$(RM) ./Core/Src/mes_fichiers/vu_meter.cyclo ./Core/Src/mes_fichiers/vu_meter.d ./Core/Src/mes_fichiers/vu_meter.o ./Core/Src/mes_fichiers/vu_meter.su

.PHONY: clean-Core-2f-Src-2f-mes_fichiers

