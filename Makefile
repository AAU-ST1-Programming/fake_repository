CC := cc
CFLAGS := -std=c11 -Wall -Wextra -Werror -Iinclude

BIN_DIR := bin
APP := $(BIN_DIR)/app
TEST_BIN := $(BIN_DIR)/test_math_utils

SRC := src/main.c src/math_utils.c

.PHONY: all clean test

all: $(APP)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

$(APP): $(SRC) include/math_utils.h | $(BIN_DIR)
	$(CC) $(CFLAGS) $(SRC) -o $(APP)

$(TEST_BIN): tests/test_math_utils.c src/math_utils.c include/math_utils.h | $(BIN_DIR)
	$(CC) $(CFLAGS) tests/test_math_utils.c src/math_utils.c -o $(TEST_BIN)

test: $(TEST_BIN)
	./$(TEST_BIN)

clean:
	rm -rf $(BIN_DIR)
