library MoctisModule;

import 'package:angular/angular.dart';

part 'RouteInitializer.dart';
part 'controllers/ProjectController.dart';

class MoctisModule extends Module {
  MoctisModule() {
    bind(ProjectController);
    bind(RouteInitializerFn, toValue: RouteInitializer);
    bind(NgRoutingUsePushState, toFactory: (_) =>
        new NgRoutingUsePushState.value(false));
  }
}
