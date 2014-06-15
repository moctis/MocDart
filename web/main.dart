library moctisModule;

// Temporary, please follow https://github.com/angular/angular.dart/issues/476
@MirrorsUsed(override: '*')
import 'dart:mirrors';
import 'package:angular/application_factory.dart';
import 'package:logging/logging.dart';
import 'lib/MoctisModule.dart';

void main() {
  Logger.root.level = Level.FINEST;
  Logger.root.onRecord.listen((LogRecord r) { print(r.message); });

  applicationFactory()
    .addModule(new MoctisModule())
    .run();
}


//http://stackoverflow.com/questions/23263222/why-do-i-get-js-execution-errors-with-angular-dart-0-10-and-ng-view