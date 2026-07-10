FROM solr:8.4

ENV TZ="America/Moncton"
ENV SOLR_LOG_LEVEL="warn"

USER root
COPY ./build/ /build/
RUN /build/scripts/container/setSolrLogLevels.sh ${SOLR_LOG_LEVEL}
USER $SOLR_UID

LABEL ca.unb.lib.generator="solr" \
  org.opencontainers.image.authors="libsupport@unb.ca" \
  org.opencontainers.image.created="$BUILD_DATE" \
  org.opencontainers.image.description="drupal.solr.lib.unb.ca is the solr application serving drupal instances at UNB Libraries." \
  org.opencontainers.image.revision="$VCS_REF" \
  org.opencontainers.image.source="https://github.com/unb-libraries/drupal.solr.lib.unb.ca" \
  org.opencontainers.image.title="drupal.solr.lib.unb.ca" \
  org.opencontainers.image.vendor="University of New Brunswick Libraries" \
  org.opencontainers.image.version="$VERSION"
