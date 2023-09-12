FROM bitnami/kubectl
COPY entrypoint.sh /entrypoint.sh

USER root
RUN mkdir -p ~/.kube

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 5432
