wsicilian: scnwiki-latest-pages-articles.xml include exclude
	./process scnwiki-latest-pages-articles.xml > $@

scnwiki-latest-pages-articles.xml:
	wget https://dumps.wikimedia.org/scnwiki/latest/scnwiki-latest-pages-articles.xml.bz2
	bunzip2 scnwiki-latest-pages-articles.xml.bz2

.PHONY: clean
clean:
	$(RM) scnwiki-latest-pages-articles.xml wsicilian
