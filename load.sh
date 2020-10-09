#!/bin/bash
cd /usr/src/VFB_neo4j/src/
python3 -m uk.ac.ebi.vfb.neo4j.neo2solr.ols_neo2solr $PDBserver $SOLRserver
