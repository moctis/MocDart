part of MoctisModule;



@Controller(selector: '[ProjectController]', publishAs: 'scope')
class ProjectController {
  final Scope _scope;
  final Router _router;

  ProjectEntry project;
  List<ProjectEntry> results;

  ProjectController(this._router, this._scope) {
    project = new ProjectEntry("test" , "xxxxxxxxxx");
    results = ProjectEntry.gets();
  }

  save() {
    ProjectEntry.save(project);
    cancel();
  }

  delete() {
    ProjectEntry.delete(project);
    cancel();
  }

  cancel() {
    _router.gotoUrl('/project/list');
  }
}
