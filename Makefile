# Makefile to copy ~/.gitconfig to the current directory as .gitignore

# Define variables for clarity
# HOME is usually defined by the shell, but explicitly define the source file
GITCONFIG_SOURCE := $(HOME)/.gitconfig
GITIGNORE_DESTINATION := .gitconfig

.PHONY: copy

# Default target
all: copy

# Target to perform the copy operation
copy:
	@echo "Copying $(GITCONFIG_SOURCE) to $(GITIGNORE_DESTINATION)..."
	@cp $(GITCONFIG_SOURCE) $(GITIGNORE_DESTINATION)
	@echo "Copy complete."
