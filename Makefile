docs: docs/index.html

deps:
	python -m venv .venv
	.venv/bin/pip install wheel pylode==3.2.0 rdflib

docs/index.html: n4o-objects-ontology/nfdi4objects.rdf n4o-objects-ontology/metadata.rdf
	mkdir -p docs
	rapper n4o-objects-ontology/metadata.rdf > tmp.nt
	rapper n4o-objects-ontology/nfdi4objects.rdf >> tmp.nt 
	.venv/bin/python -m pylode tmp.nt -o $@
	rm tmp.nt
	cp $< docs
