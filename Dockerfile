FROM python:3.7-buster

RUN cd /usr/src && git clone https://github.com/VirtualFlyBrain/VFB_neo4j.git 

RUN cd /usr/src/VFB_neo4j/ && pip install -r requirements.txt

ENV PYTHONPATH=/usr/src/VFB_neo4j/src/
ENV PDBserver=http://pdb:7474
ENV SOLRserver=http://solr:8983/solr/ontology

COPY load.sh /
RUN chmod +x /load.sh

CMD ["/load.sh"]
