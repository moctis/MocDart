library MoctisModule;

import 'dart:html';
import 'package:angular/angular.dart';

part 'RouteInitializer.dart';
part 'controllers/ProjectController.dart';
part 'models/ProjectEntry.dart';


class MoctisModule extends Module {
  MoctisModule() {
    bind(ProjectController);
    bind(ProjectEntry);
    bind(RouteInitializerFn, toValue: RouteInitializer);
    bind(NgRoutingUsePushState, toFactory: (_) =>
        new NgRoutingUsePushState.value(false));
  }
}
