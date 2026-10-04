FROM dart:stable AS build

WORKDIR /app
COPY pubspec.* ./
RUN dart pub get
COPY . .
RUN dart pub get --offline
RUN dart build cli --target bin/main.dart --output build

FROM scratch
COPY --from=build /runtime/ /
COPY --from=build /app/build/ /app/build/
COPY --from=build /app/config/ /app/build/config/
COPY --from=build /app/web/ /app/build/web/

EXPOSE 8080 8081 8082
CMD ["/app/build/bin/main"]
