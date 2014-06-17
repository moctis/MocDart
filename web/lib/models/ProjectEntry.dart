part of MoctisModule;


class ProjectEntry{
  String name;
  String description;
  static List<ProjectEntry>  store = [
                   new ProjectEntry('learn angular', 'sssssssssssssssss'),
                   new ProjectEntry('build an angular app', 'eeeeeeeeeee')
                 ];

  ProjectEntry(this.name, this.description) {}

  static List<ProjectEntry> gets() => store;

  static save(ProjectEntry it) {
    store.add(it);
  }

  static delete(ProjectEntry it) {
    store.removeWhere((e)=> e.name == it.name);
  }
}