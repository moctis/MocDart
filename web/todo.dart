library todo;

import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';


@Controller(
    selector: '[todo-controller]',
    publishAs: 'todo')
class Todo {
  
}

main() {
  var module = new Module()
      ..bind(Todo);
  
  applicationFactory().addModule(module).run();
}