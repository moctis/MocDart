library MoctisModule;

import 'package:angular/angular.dart';

part 'RouteInitializer.dart';
part 'controllers/MoctisController.dart';

class MoctisModule extends Module {
  MoctisModule() {
    bind(MoctisController);
    bind(RouteInitializerFn, toValue: RouteInitializer);
    bind(NgRoutingUsePushState, toFactory: (_) =>
        new NgRoutingUsePushState.value(false));
  }
}
