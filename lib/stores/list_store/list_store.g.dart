// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListStore on _ListStore, Store {
  Computed<bool> _$haveTextComputed;

  @override
  bool get haveText => (_$haveTextComputed ??=
          Computed<bool>(() => super.haveText, name: '_ListStore.haveText'))
      .value;

  final _$newtoDoTitleAtom = Atom(name: '_ListStore.newtoDoTitle');

  @override
  String get newtoDoTitle {
    _$newtoDoTitleAtom.reportRead();
    return super.newtoDoTitle;
  }

  @override
  set newtoDoTitle(String value) {
    _$newtoDoTitleAtom.reportWrite(value, super.newtoDoTitle, () {
      super.newtoDoTitle = value;
    });
  }

  final _$_ListStoreActionController = ActionController(name: '_ListStore');

  @override
  void setNewtoDoTitle(String value) {
    final _$actionInfo = _$_ListStoreActionController.startAction(
        name: '_ListStore.setNewtoDoTitle');
    try {
      return super.setNewtoDoTitle(value);
    } finally {
      _$_ListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addToDo() {
    final _$actionInfo =
        _$_ListStoreActionController.startAction(name: '_ListStore.addToDo');
    try {
      return super.addToDo();
    } finally {
      _$_ListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
newtoDoTitle: ${newtoDoTitle},
haveText: ${haveText}
    ''';
  }
}
