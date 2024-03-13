SRS_PATH = srs/srs.md
SRA_PATH = sra/sra.md
SA_PATH = sa/sa.md
SD_PATH = sd/sd.md
SRS_PDF_PATH = pdf/SRS\ Group\ 14.pdf
SRA_PDF_PATH = pdf/SRA\ Group\ 14.pdf
SA_PDF_PATH = pdf/SA\ Group\ 14.pdf
SD_PDF_PATH = pdf/SD\ Group\ 14.pdf

all: create_sd

create_srs: ${SRS_PATH}
	pandoc ${SRS_PATH} -o ${SRS_PDF_PATH}

create_sra: ${SRA_PATH}
	pandoc ${SRA_PATH} -o ${SRA_PDF_PATH}

create_sa: ${SA_PATH}
	pandoc ${SA_PATH} -o ${SA_PDF_PATH}

create_sd: ${SD_PATH}
	pandoc ${SD_PATH} --highlight-style pygments -o ${SD_PDF_PATH}

clean:
	rm -f $(SRS_PDF_PATH)
	rm -f $(SRA_PDF_PATH)
	rm -f $(SA_PDF_PATH)
	rm -f $(SD_PDF_PATH)