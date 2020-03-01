FROM solr:7.5

#Set this variable to a space-delimited set of extra cores to create.
ENV CUSTOM_CORES=""

# Need to run this at runtime so the volumes are mounted
COPY sitecore-run /opt/docker-solr/scripts/sitecore-run

CMD ["sitecore-run"]