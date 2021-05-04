RISCV_ARCH=rv32ic
RISCV_ABI=ilp32
RISCV_CMODEL=medlow
RISCV_SERIES=sifive-2-series
ARCH=riscv-$(RISCV_ARCH)-$(RISCV_ABI)

RISCV_CROSS_COMPILE=$(RISCV64_GCC_HOME)/bin/riscv64-unknown-elf

RISCV_GCC=$(RISCV_CROSS_COMPILE)-gcc
RISCV_OBJDUMP=$(RISCV_CROSS_COMPILE)-objdump
RISCV_OBJCOPY=$(RISCV_CROSS_COMPILE)-objcopy
RISCV_GDB=$(RISCV_CROSS_COMPILE)-gdb
RISCV_AR=$(RISCV_CROSS_COMPILE)-ar
RISCV_SIZE=$(RISCV_CROSS_COMPILE)-size

RISCV_COMMON_FLAGS:=-march=$(RISCV_ARCH) -mabi=$(RISCV_ABI) -mcmodel=$(RISCV_CMODEL)
# -flto
# Use newlib-nano
RISCV_COMMON_FLAGS += --specs=nano.specs
