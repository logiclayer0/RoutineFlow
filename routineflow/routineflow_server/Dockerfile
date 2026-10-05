FROM dart:stable AS build

WORKDIR /app
COPY pubspec.* ./
RUN dart pub get
COPY . .
RUN dart pub get 
RUN dart build cli 

FROM dart:stable
WORKDIR /app
COPY 
COPY 
COPY 

ENV DART_VM_OPTIONS="--old_gen_heap_size=256"

EXPOSE 8080 8081 8082
CMD ["/app/build/bundle/bin/main"]
