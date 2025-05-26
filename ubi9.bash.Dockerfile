FROM redhat/ubi9-minimal

RUN microdnf install -y jq && microdnf clean all

WORKDIR /app

COPY fetch-title.sh /app/fetch-title.sh
RUN chmod +x /app/fetch-title.sh

CMD ["/app/fetch-title.sh"]
