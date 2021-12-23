FROM openjdk:14.0.1
# copy source codes
WORKDIR /app
ENV PATH=${PATH}:/app
COPY . .
# build and run
RUN ./mvnw clean install
CMD java -jar target/MavenDocker-1.0-SNAPSHOT.jar