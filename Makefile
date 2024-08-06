docs: docs/index.html

deps:
	python -m venv .venv
	.venv/bin/pip install wheel pylode==3.0.2 rdflib

docs/index.html: nfdi4objects.rdf
	mkdir -p docs
	.venv/bin/python -m pylode $< -o $@
	cp $< docs
