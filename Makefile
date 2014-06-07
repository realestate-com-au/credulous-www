IMGS=credulous-logo.png
SRCS=main.css index.html $(IMGS)
BUCKET=s3://credulous.io/
EXCLUDE=".git/*"

publish: $(SRCS)
	aws s3 sync --exclude $(EXCLUDE) . $(BUCKET)
