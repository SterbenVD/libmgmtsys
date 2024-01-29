SRS_PATH = srs/srs.md
SRA_PATH = sra/sra.md
SRS_PDF_PATH = pdf/srs.pdf
SRA_PDF_PATH = pdf/sra.pdf 

all: create_srs create_sra

create_srs: ${SRS_PATH}
	pandoc ${SRS_PATH} -o ${SRS_PDF_PATH}

create_sra: ${SRA_PATH}
	pandoc ${SRA_PATH} -o ${SRA_PDF_PATH}

clean:
	rm -f $(SRS_PDF_PATH)
	rm -f $(SRA_PDF_PATH)