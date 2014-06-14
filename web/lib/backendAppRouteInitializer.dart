part of backendAppModule;

void backendAppRouteInitializer(Router router, RouteViewFactory view) {
  var select = 'home';
  /*view.configure({
    'home': ngRoute(
        defaultRoute: select=='home',
        path: "/home",
        enter: view('views/list.html')),
    'new': ngRoute(
        defaultRoute: select=='new',
        path: "/new",
        enter: view('views/new.html')),       
  });*/

  router.root
      ..addRoute(defaultRoute: select == 'new', name: 'new', path: '/new', enter: view('views/new.html'))
      ..addRoute(defaultRoute: select == 'home', name: 'home', path: '/home', enter: view('views/list.html'));

}
