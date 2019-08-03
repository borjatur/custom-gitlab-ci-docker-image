FROM docker:stable
RUN apk add --no-cache curl jq python py-pip make gettext
RUN pip install awscli
CMD ["sh"]