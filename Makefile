docs: docs/index.html

deps:
	python -m venv .venv
	.venv/bin/pip install wheel pylode==3.2.0 rdflib

docs/index.html: n4o-objects-ontology/nfdi4objects.rdf deps
	mkdir -p docs
	.venv/bin/python -m pylode $< -o $@
	cp $< docs
