# Uploads a running instance of Neo4j with Knetminer data, starting from
# their RDF version.
#

# We need the rdf2neo converter (https://github.com/Rothamsted/rdf2neo) to populate Neo4j from knetminer
#
# We use an Ondex extension of this tool that is embedded into Ondex.
# A stand-alone version can be downloaded from our Maven repository:
# 
# http://ondex.rothamsted.ac.uk/nexus/content/groups/public-snapshots/net/sourceforge/ondex/modules/neo4j-export/
# (choose the last version and the *-bundle.zip file)
#
export RDF2NEO_HOME=/Users/brandizi/Documents/Work/RRes/ondex_git/ondex-full/ondex-knet-builder/ondex-mini/target/ondex-mini/tools/neo4j-exporter

# ===> In $RDF2NEO_HOME/ondex_config/config.xml you find default connection parameters for the Neo4j server.
# These includes user neo4j and password test, so the server must have this user configured
# You might want to change them for safety reasons.

# ===> WARNING!!! This script assumes the Neo4j server is EMPTY. 

# In turn, rdf2neo needs a Jena distribution (https://jena.apache.org/).
# We plan to simplify this in future, by embedding Jena in our package.
#
export JENA_HOME=/Applications/local/dev/semantic_web/apache-jena-3.4.0

# We work with this temp directory, use another one if your /tmp isn't big enough
# export RDF2NEO_TDB=/tmp

# This is the directory where the to-be-loaded RDF are. 
#
# The simplest thing is to point this to our sample data, as we do here
#
INPUT_RDF_DIR=/Users/brandizi/Documents/Work/RRes/knetminer-docker/knetminer-sample-data/rdf

# Here we go! We need to use find to expand the list of files in the input dir
find "$INPUT_RDF_DIR" -type f | xargs "$RDF2NEO_HOME/ondex2neo.sh"
