FROM openjdk:8-jre-alpine

# install embulk
RUN wget -q https://dl.embulk.org/embulk-latest.jar -O /bin/embulk \
    && chmod +x /bin/embulk

# install additional libraries
RUN apk add --no-cache libc6-compat \
  && embulk gem install embulk-output-td

WORKDIR /work

ENTRYPOINT ["java", "-jar", "/bin/embulk"]
