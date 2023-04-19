import 'package:teste5/projeto/Alimentacao/Cafe/cafe_widget.dart';
import 'package:mobx/mobx.dart';
part 'controller_store.g.dart';

class ControllerStore = _ControllerStoreBase with _$ControllerStore;

abstract class _ControllerStoreBase with Store {
  @observable
  num countProteina = 0;
  @observable
  num countCarbo = 0;
  @observable
  num countGordura = 0;
  @observable
  num countCalorias = 0;

  @action
  incrementProteina(qtdProteina) {
    countProteina += qtdProteina;
  }

  @action
  incrementCarbo(qtdCarbo) {
    countCarbo += qtdCarbo;
  }

  @action
  incrementCalorias(qtdCaloria) {
    countCalorias += qtdCaloria;
  }

  @action
  incrementGordura(qtdGordura) {
    countGordura += qtdGordura;
  }
}
