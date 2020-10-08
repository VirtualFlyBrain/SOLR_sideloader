FROM python:3.7-buster

RUN cd /usr/src && git clone -b pipeline2 https://github.com/VirtualFlyBrain/VFB_neo4j.git 

RUN cd /usr/src/VFB_neo4j/ && pip install -r requirements.txt

ENV PYTHONPATH=/usr/src/VFB_neo4j/src/
ENV PDBserver=http://pdb
ENV SOLRserver=http://solr:8983/solr/ontology

CMD ["python3","-m","uk.ac.ebi.vfb.neo4j.neo2solr.ols_neo2solr","$PDBserver","$SOLRserver"]
