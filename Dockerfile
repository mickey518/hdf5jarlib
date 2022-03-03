FROM dragon-ubuntu AS MAVEN_BUILD
WORKDIR /build
COPY ./settings.xml /root/.m2/settings.xml
COPY ./pom.xml /build/pom.xml
COPY ./src /build/src
RUN mvn clean package
