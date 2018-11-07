# Uploads Knetminer's RDF onto a running instance of Virtuoso.
#

# We do require virtuoso-utils (https://github.com/marco-brandizi/rdfutils/tree/master/virtuoso-utils),
# to ease the interaction with Virtuoso
VUTILS_HOME=/Users/brandizi/Documents/Dati/tech/semantic_web/rdfutils/virtuoso-utils

# virtuoso-utils defines some config variables in init.sh, which you can override here
# export VIRTUOSO_USER:=dba
# export VIRTUOSO_PASSWORD:=dba
# export VIRTUOSO_BIN_DIR:=/usr/local/bin

# This is the directory where the to-be-loaded RDF files are.
# We assume that it contains the onto/ subdirectory, which we load on a separated named graph.
#
# The simplest thing is to point this to our sample data, as we do here
#
# ====> WARNING!!!
#
#   This directory needs to be in the DirsAllowed parameter, in the virtuoso.ini server config file
# 
INPUT_RDF_DIR=/Users/brandizi/Documents/Work/RRes/knetminer-docker/knetminer-sample-data/rdf

echo -e "\n\n\tLoading the Ontologies\n"
"$VUTILS_HOME/virt_load.sh" "$INPUT_RDF_DIR/onto" "http://www.ondex.org/bioknet/graphs/ontologies"

echo -e "\n\n\tLoading the Data\n"
"$VUTILS_HOME/virt_load.sh" "$INPUT_RDF_DIR" "http://www.ondex.org/bioknet/graphs/ontologies"
