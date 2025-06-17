FROM solr:8.4

ENV TZ="America/Moncton"

# Silence the verbose logging.
USER root
RUN sed -i 's/<Root level="info">/<Root level="error">/' /opt/solr/server/resources/log4j2.xml
USER $SOLR_UID

LABEL ca.unb.lib.generator="solr" \
  com.microscaling.docker.dockerfile="/Dockerfile" \
  com.microscaling.license="MIT" \
  org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.description="drupal.solr.lib.unb.ca is the solr application serving drupal instances at UNB Libraries." \
  org.label-schema.name="drupal.solr.lib.unb.ca" \
  org.label-schema.schema-version="1.0" \
  org.label-schema.vcs-ref=$VCS_REF \
  org.label-schema.vcs-url="https://github.com/unb-libraries/drupal.solr.lib.unb.ca" \
  org.label-schema.vendor="University of New Brunswick Libraries" \
  org.label-schema.version=$VERSION \
  org.opencontainers.image.authors="libsupport@unb.ca" \
  org.opencontainers.image.source="https://github.com/unb-libraries/drupal.solr.lib.unb.ca"
