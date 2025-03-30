FROM maven:3.9.9 AS base

FROM azul/prime:21

ENV MAVEN_HOME=/usr/share/maven
ENV GHA_RELEASE_JAVA_HOME='/opt/zing/zing25.02.0.0-2-jre21.0.6/'

COPY --from=base ${MAVEN_HOME} ${MAVEN_HOME}
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn

RUN  apt-get update \
  && apt-get install -y git\
  && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
