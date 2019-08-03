FROM docker:stable
RUN apk add curl jq python py-pip make gettext libintl \
  && pip install awscli
CMD ["sh"]