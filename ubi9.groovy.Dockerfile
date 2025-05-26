FROM redhat/ubi9-minimal

RUN microdnf install -y java-17-openjdk unzip curl-minimal && microdnf clean all

RUN curl -L https://groovy.jfrog.io/artifactory/dist-release-local/groovy-zips/apache-groovy-binary-4.0.18.zip -o groovy.zip && \
    unzip groovy.zip && mv groovy-* /opt/groovy && \
    ln -s /opt/groovy/bin/groovy /usr/bin/groovy && \
    rm groovy.zip

COPY script.groovy /script.groovy

CMD ["groovy", "script.groovy"]
