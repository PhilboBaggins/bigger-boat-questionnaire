SOURCE_FILES := BiggerBoat.typ BiggerBoat.webp
OUTPUT_FILES := BiggerBoat-1.png BiggerBoat-2.png

.PHONY: all clean
all: $(OUTPUT_FILES)

BiggerBoat-1.png: $(SOURCE_FILES)
	typst compile --format=png --pages=1 $< $@

BiggerBoat-2.png: $(SOURCE_FILES)
	typst compile --format=png --pages=2 $< $@

clean:
	rm -f $(OUTPUT_FILES)
