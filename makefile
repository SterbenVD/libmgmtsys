DOCS_FOLDER = ./docs
EXEC_FOLDER = ./bin
EXEC_FILE = $(EXEC_FOLDER)/exec

# Call makefile in docs folder
run: build
	@$(EXEC_FILE)

build:
	@templ generate
	@go build -o $(EXEC_FILE) main.go

documentation:
	$(MAKE) -C $(DOCS_FOLDER)

clean:
	$(MAKE) -C $(DOCS_FOLDER) clean