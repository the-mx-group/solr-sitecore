FROM solr:7.5

ENV CUSTOM_CORES

# Need to run this at runtime so the volumes are mounted
COPY sitecore-run /opt/docker-solr/scripts/sitecore-run

CMD ["sitecore-run"]