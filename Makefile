@PHONY: all update-main-page

all: update-main-page

update-main-page:
	note-render --fancy --standalone --resource-dir style 08e6ab855cf49cf0e0350041c47cfae738a38eb7 html > index.html
	sed -i '/id="keywords"/,+2d' index.html
