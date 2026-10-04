FROM dart:stable AS build

WORKDIR /app

COPY pubspec.* ./
RUN dart pub get

COPY . .
RUN dart pub get --offline

RUN dart compile exe bin/main.dart -o bin/server || \
    dart build cli --target bin/main.dart --output build && \
    cp build/bin/main bin/server

FROM dart:stable

WORKDIR /app

COPY --from=build /app/bin/server /app/bin/server
COPY --from=build /app/config/ /app/config/
COPY --from=build /app/web/ /app/web/

ENV DART_VM_OPTIONS="--old_gen_heap_size=256"

EXPOSE 8080 8081 8082

CMD ["/app/bin/server"]
