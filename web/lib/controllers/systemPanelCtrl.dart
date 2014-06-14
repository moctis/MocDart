part of backendAppModule;

@Controller(selector: '[system-panel]', publishAs: 'pannel')
class SystemPanelCtrl {
  Router router;
  var results = <Entity>[];

  SystemPanelCtrl() {
    results = [new Entity('a', true), new Entity('b')];
  }
}

class Entity {
  String Topic;
  bool status;

  Entity(this.Topic, [this.status = false]);
}
