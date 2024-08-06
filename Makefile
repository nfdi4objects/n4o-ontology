docs: docs/index.html

deps:
	python -m venv .venv
	.venv/bin/pip install wheel pylode==2.13.2 rdflib

docs/index.html: core_ontology/nfdi4objects.rdf
	mkdir -p docs
	.venv/bin/pylode -i $< -o $@
