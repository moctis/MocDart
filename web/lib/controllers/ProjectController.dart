part of MoctisModule;

@Controller(selector: '[Project]', publishAs: 'scope')
class ProjectController {
  final Scope _scope;
  final Router _router;

  MoctisController(this._router, this._scope) {  }

  submit() {
    _router.gotoUrl('/home');
  }
}
