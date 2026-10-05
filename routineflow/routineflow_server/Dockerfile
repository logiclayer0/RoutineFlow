FROM dart:stable AS build

WORKDIR /app
COPY pubspec.* ./
RUN dart pub get
COPY . .
RUN dart pub get --offline
RUN dart build cli --target bin/main.dart --output build

FROM dart:stable
WORKDIR /app
COPY --from=build /app/build/bundle/ /app/build/bundle/
COPY --from=build /app/config/ /app/config/
COPY --from=build /app/web/ /app/web/
COPY --from=build /app/migrations/ /app/migrations/

ENV DART_VM_OPTIONS="--old_gen_heap_size=256"

EXPOSE 8080 8081 8082
CMD ["/app/build/bundle/bin/main"]
