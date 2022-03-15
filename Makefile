scnwiki-latest-pages-articles.xml:
	wget https://dumps.wikimedia.org/scnwiki/latest/scnwiki-latest-pages-articles.xml.bz2
	bunzip2 scnwiki-latest-pages-articles.xml.bz2

wsicilian: scnwiki-latest-pages-articles.xml
	./process scnwiki-latest-pages-articles.xml

.PHONY: clean
clean:
	$(RM) scnwiki-latest-pages-articles.xml
