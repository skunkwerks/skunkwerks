publish:
	@echo publish: shipping site to gs://www.skunkwerks.at/
	@gsutil -m rm -R gs://www.skunkwerks.at/**
	@gsutil -m cp -R -z html,md,css,xml,js,svg  * gs://www.skunkwerks.at/

.PHONY : doc publish
