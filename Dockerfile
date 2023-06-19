FROM adoptopenjdk/openjdk11
ARG JAR_NAME=gamjajeon.0.0.1.jar
ARG JAR_FILE=build/libs/${JAR_NAME}
ENV DRIVER_NAME ${DRIVER_NAME}
ENV DB_USERNAME ${DB_USERNAME}
ENV DB_PASSWORD ${DB_PASSWORD}
ENV DB_URL ${DB_URL}
ENV DATABASE ${DATABASE}
ENV HIBERNATE_DDL_AUTO ${HIBERNATE_DDL_AUTO}
ENV HIBERNATE_DIALECT ${HIBERNATE_DIALECT}
ENV PORT ${PORT}
ENV JWT_ISSUER ${JWT_ISSUER}
ENV JWT_SECRET_KEY ${JWT_SECRET_KEY}
ENV ACCESS_TOKEN_EXPIRE_SECONDS ${ACCESS_TOKEN_EXPIRE_SECONDS}
ENV REFRESH_TOKEN_EXPIRE_SECONDS ${REFRESH_TOKEN_EXPIRE_SECONDS}
ENV ACTIVE_PROFILE ${ACTIVE_PROFILE}
ENV VERSION ${VERSION}
ENV ENV_PATH ${ENV_PATH}
COPY ${JAR_FILE} ${JAR_NAME}
CMD java -jar -Dspring.profiles.active=$ACTIVE_PROFILE -DENV_PATH="$ENV_PATH" /${JAR_NAME}