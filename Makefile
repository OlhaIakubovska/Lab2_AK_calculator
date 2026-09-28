CXX	 := g++
CXXFLAGS := -Wall -Wextra -std=c++17 -Iinclude

BUILD_DIR := build
LIB_DIR := $(BUILD_DIR)/lib
OBJ_DIR := $(BUILD_DIR)/obj

LIB_NAME := libcalculator.a
TARGET := calculator_app

LIB_OBJ := $(OBJ_DIR)/calculator.o
APP_OBJ := $(OBJ_DIR)/main.o

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(APP_OBJ) $(LIB_DIR)/$(LIB_NAME)
	$(CXX) $(APP_OBJ) -L$(LIB_DIR) -lcalculator -o $@

$(LIB_DIR)/$(LIB_NAME): $(LIB_OBJ) | $(LIB_DIR)
	ar rcs $@ $(LIB_OBJ)

$(OBJ_DIR)/%.o: src/%.cpp | $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(OBJ_DIR) $(LIB_DIR):
	mkdir -p $@

clean:
	rm -rf $(BUILD_DIR) $(TARGET)
