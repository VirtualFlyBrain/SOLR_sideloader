# SOLR_sideloader
Pass data directly from PDB (neo4j) to SOLR server

docker run --env=PDBserver:http://pdb.VirtualFlyBrain.org --env=SOLRserver:http://solr.VirtualFlyBrain.org virtualflybrain/solr_sideloader:latest

Runs python3 -m uk.ac.ebi.vfb.neo4j.neo2solr.ols_neo2solr $PDBserver $SOLRserver
from VirtualFlyBrain/VFB_neo4j
