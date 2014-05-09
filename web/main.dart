import 'package:angular/angular.dart';

@NgController(
    selector:'[recipe-book]',
    publishAs: 'ctrl'    
    )
class RecipeBookController {
  String name = "Hello";
  
  RecipeBookController() { 
  }
}

class MyAppModule extends Module {
  MyAppModule() {
    type(RecipeBookController);
  }
}

main() {
  ngBootstrap(
    module: new MyAppModule()
  );
}