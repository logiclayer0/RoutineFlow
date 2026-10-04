FROM dart:stable AS build

WORKDIR /app
COPY pubspec.* ./
RUN dart pub get
COPY . .
RUN dart pub get --offline
RUN dart compile exe bin/main.dart -o bin/server

FROM scratch
COPY --from=build /runtime/ /
COPY --from=build /app/bin/server /app/bin/
COPY --from=build /app/config/ /app/config/
COPY --from=build /app/web/ /app/web/

EXPOSE 8080 8081 8082
CMD ["/app/bin/server"]
