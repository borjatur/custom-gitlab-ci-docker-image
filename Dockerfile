FROM docker:stable
RUN apk add curl jq python py-pip make gettext libintl \
  && pip install awscli \
  && curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.13.7/bin/linux/amd64/kubectl \
  && chmod +x ./kubectl \
  && mv ./kubectl /usr/local/bin/kubectl
CMD ["sh"]