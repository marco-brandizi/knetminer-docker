echo "  Updating OXL from the Docker example"
wget https://s3.eu-west-2.amazonaws.com/nfventures-testing.knetminer/default.oxl \
     -O docker-example.oxl

echo "  Updating BioKNO main file"
wget https://raw.githubusercontent.com/Rothamsted/bioknet-onto/master/bioknet.owl \
     -O rdf/onto/bioknet.owl

echo "  Updating BioKNO Ondex Mappings"
wget https://raw.githubusercontent.com/Rothamsted/bioknet-onto/master/bk_ondex.owl \
     -O rdf/onto/bk_ondex.owl

echo "  Updating BioKNO External Mappings"
wget https://raw.githubusercontent.com/Rothamsted/bioknet-onto/master/bk_mappings.ttl \
     -O rdf/onto/bk_mappings.ttl

echo "  Updating External Ontologies"
wget http://bloody-byte.net/rdf/dc_owl2dl/dcterms.ttl -O rdf/onto/dcterms_od.ttl
wget http://bloody-byte.net/rdf/dc_owl2dl/dc.ttl -O rdf/onto/dc.ttl
wget http://schema.org/version/latest/schema.ttl -O rdf/onto/schema.ttl
wget http://www.w3.org/TR/skos-reference/skos.rdf -O rdf/onto/skos.rdf
wget http://www.biopax.org/release/biopax-level3.owl -O rdf/onto/biopax-level3.owl

echo "  The End."
