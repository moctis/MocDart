part of MoctisModule;

void RouteInitializer(Router router, RouteViewFactory views) {
  var select = 'home';

  views.configure({
    'home': ngRoute(path: "/home", view: 'views/list.html', defaultRoute: select == 'home'),
    'new': ngRoute(path: "/new", view: 'views/new.html', defaultRoute: select == 'new'),
    'project/create': ngRoute(path: "/project/create", view: 'views/project/create.html', defaultRoute: select == 'new'),
    'project/list': ngRoute(path: "/project/list", view: 'views/project/list.html', defaultRoute: select == 'new'),
  });

}
