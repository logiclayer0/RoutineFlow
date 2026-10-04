import 'src/generated/serverpod.dart';

void run(List<String> args) {
  final pod = Serverpod(args);
  pod.start();
}