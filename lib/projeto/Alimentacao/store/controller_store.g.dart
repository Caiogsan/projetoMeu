// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ControllerStore on _ControllerStoreBase, Store {
  late final _$countProteinaAtom =
      Atom(name: '_ControllerStoreBase.countProteina', context: context);

  @override
  num get countProteina {
    _$countProteinaAtom.reportRead();
    return super.countProteina;
  }

  @override
  set countProteina(num value) {
    _$countProteinaAtom.reportWrite(value, super.countProteina, () {
      super.countProteina = value;
    });
  }

  late final _$countCarboAtom =
      Atom(name: '_ControllerStoreBase.countCarbo', context: context);

  @override
  num get countCarbo {
    _$countCarboAtom.reportRead();
    return super.countCarbo;
  }

  @override
  set countCarbo(num value) {
    _$countCarboAtom.reportWrite(value, super.countCarbo, () {
      super.countCarbo = value;
    });
  }

  late final _$countGorduraAtom =
      Atom(name: '_ControllerStoreBase.countGordura', context: context);

  @override
  num get countGordura {
    _$countGorduraAtom.reportRead();
    return super.countGordura;
  }

  @override
  set countGordura(num value) {
    _$countGorduraAtom.reportWrite(value, super.countGordura, () {
      super.countGordura = value;
    });
  }

  late final _$_ControllerStoreBaseActionController =
      ActionController(name: '_ControllerStoreBase', context: context);

  @override
  dynamic incrementProteina(dynamic qtdProteina) {
    final _$actionInfo = _$_ControllerStoreBaseActionController.startAction(
        name: '_ControllerStoreBase.incrementProteina');
    try {
      return super.incrementProteina(qtdProteina);
    } finally {
      _$_ControllerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic incrementCarbo(dynamic qtdCarbo) {
    final _$actionInfo = _$_ControllerStoreBaseActionController.startAction(
        name: '_ControllerStoreBase.incrementCarbo');
    try {
      return super.incrementCarbo(qtdCarbo);
    } finally {
      _$_ControllerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic incrementGordura(dynamic qtdGordura) {
    final _$actionInfo = _$_ControllerStoreBaseActionController.startAction(
        name: '_ControllerStoreBase.incrementGordura');
    try {
      return super.incrementGordura(qtdGordura);
    } finally {
      _$_ControllerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
countProteina: ${countProteina},
countCarbo: ${countCarbo},
countGordura: ${countGordura}
    ''';
  }
}
