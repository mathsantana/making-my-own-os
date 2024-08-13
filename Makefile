ASM=nasm

BUILD_DIR=./build
SRC_DIR=./src


$(BUILD_DIR)/os.img : $(BUILD_DIR)/main.bin
	cp $(BUILD_DIR)/main.bin $(BUILD_DIR)/os.img
	truncate -s 1440k $(BUILD_DIR)/os.img

$(BUILD_DIR)/main.bin : $(SRC_DIR)/main.asm
	$(ASM) $(SRC_DIR)/main.asm -f bin -o $(BUILD_DIR)/main.bin
