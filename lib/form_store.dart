import 'package:mobx/mobx.dart';
part 'form_store.g.dart';

class FormStore = _FormStore with _$FormStore;

abstract class _FormStore with Store {}

//c:\flutter\bin\flutter.bat pub run build_runner build --delete-conflicting-outputs