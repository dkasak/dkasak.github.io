@PHONY: all update-main-page

all: update-main-page

update-main-page:
	parma render --standalone --resource-location style -f html 08e6ab855cf49cf0e0350041c47cfae738a38eb7 > index.html
	sed -i '/id="keywords"/,+2d' index.html
	sed -i '/<\/head>/i<script async defer data-domain="dkasak.github.io" src="https://plausible.io/js/plausible.js"></script>' index.html
