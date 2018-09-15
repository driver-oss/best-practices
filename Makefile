title="Style Guide"
subtitle="Software Engineering at Driver"
url=https://github.com/drivergroup/best-practices
git_url=git@github.com:drivergroup/best-practices.git

ghpages=.gh-pages

markdown=$(wildcard guides/*.md)
html_out=$(addprefix $(ghpages)/, $(notdir $(markdown:.md=.html)))


all: $(html_out)

$(ghpages):
	mkdir $(ghpages)
	cp -r assets $(ghpages)


$(ghpages)/%.html: guides/%.md $(ghpages)
	pandoc \
		--standalone \
		--template=layout.html \
		--from=markdown \
		--to=html5 \
		--metadata=title:$(title) \
		--metadata=subtitle:$(subtitle) \
		--metadata=date:$$(date --iso) \
		--variable=url:$(url) \
		--out=$@ $<

publish: $(html_out)
	git -C $(ghpages) init
	git -C $(ghpages) add .
	git -C $(ghpages) commit -m "Publish website" || true
	git -C $(ghpages) push -f $(git_url) master:gh-pages

clean:
	rm -rf $(ghpages)

.PHONY: all clean publish
