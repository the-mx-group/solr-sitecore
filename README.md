# solr-sitecore
The Solr search engine, with automatic schema customizations for use with Sitecore.

## Description
This is solr 7.5 as required by Sitecore 9.2.  It comes with a startup script that pre-creates all the necessary
cores for Sitecore if they do not exist:

* sitecore_analytics_index
* sitecore_core_index
* sitecore_fxm_master_index
* sitecore_fxm_web_index
* sitecore_list_index
* sitecore_marketing_asset_index_master
* sitecore_marketing_asset_index_web
* sitecore_marketingdefinitions_master
* sitecore_marketingdefinitions_web
* sitecore_master_index
* sitecore_suggested_test_index
* sitecore_testing_index
* sitecore_web_index
* social_messages_master
* social_messages_web

If you have a need for additional custom cores, set an environment variable called CUSTOM_CORES in your startup. Every core 
listed in that variable (space-delimited) will also be created and prepopulated.

## Volumes and ports

Solr runs on container port 8983.  You may wish to map this into another network for usage outside your docker network.

All cores are created at container path /opt/solr/server/solr/mycores.  You may wish to mount this as a volume
to durable storage outside the container.  If you don't do this, your data will be destroyed when you shut down the container.

## SSL

This container requires SSL (https) by default.  To disable, set the environment variable "NO_SSL" to any value other than an empty string.

## Usage

### Command line
docker run -d -e CUSTOM_CORES="core1 core2 core3" -p 8983:8983 -v /somewhere/safe:/opt/solr/server/solr/mycores themxgroup/solr-sitecore:(TAG)


See [Docker Hub](https://hub.docker.com/repository/docker/themxgroup/solr-sitecore) for the precompiled image.