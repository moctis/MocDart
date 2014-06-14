library backendAppModule;

import 'package:angular/angular.dart';

part 'backendAppRouteInitializer.dart';

part 'controllers/systemPanelCtrl.dart';
part 'controllers/newEntryFormCtrl.dart';

class BackendAppModule extends Module {
  BackendAppModule() {
    type(SystemPanelCtrl);
    type(NewEntryFormCtrl);
    bind(RouteInitializerFn, toValue: initRoutes);
    bind(NgRoutingUsePushState, toFactory: (_) => new NgRoutingUsePushState.value(false));
    
  }

  void initRoutes(Router router, RouteViewFactory views) {
    var select = 'home';

    views.configure({
      'home': ngRoute(path: "/home", view: 'views/list.html', defaultRoute: select == 'home'),
      'new': ngRoute(path: "/new", view: 'views/new.html', defaultRoute: select == 'new'),
    });
    /*
    router.root
      ..addRoute(
          defaultRoute: select=='new',
          name: 'new',
          path: '/new',
          enter: view('views/new.html'))
      ..addRoute(
          defaultRoute: select=='home',
          name: 'home',
          path: '/home',
          enter: view('views/list.html'));
     */
  }

}
