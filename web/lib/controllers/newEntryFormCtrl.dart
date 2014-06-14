part of backendAppModule;

@Controller(selector: '[entry-form-ctrl]', publishAs: 'form')
class NewEntryFormCtrl {
  final Scope _scope;
  final Router _router;


  NewEntryFormCtrl(this._router, this._scope) {

  }

  submit() {
    _router.gotoUrl('/home');
  }
}
