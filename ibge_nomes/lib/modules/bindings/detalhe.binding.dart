import 'package:get/instance_manager.dart';
import 'package:ibge_nomes/modules/controller/detalhe.controller.dart';

class DetalheBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => DetalheController());
  }
  
}