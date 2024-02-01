DOCS_FOLDER = ./docs

# Call makefile in docs folder
documentation:
	$(MAKE) -C $(DOCS_FOLDER)

clean:
	$(MAKE) -C $(DOCS_FOLDER) clean