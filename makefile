DOCS_FOLDER = ./docs
SRC_FOLDER = ./src

# Call makefile in docs folder
documentation:
	$(MAKE) -C $(DOCS_FOLDER)

# Call makefile in src folder
source:
	$(MAKE) -C $(SRC_FOLDER)

clean:
	$(MAKE) -C $(DOCS_FOLDER) clean
	$(MAKE) -C $(SRC_FOLDER) clean