part of MoctisModule;

@Controller(selector: '[moctis]', publishAs: 'form')
class MoctisController {
  final Scope _scope;
  final Router _router;

  MoctisController(this._router, this._scope) {  }

  submit() {
    _router.gotoUrl('/home');
  }
}
