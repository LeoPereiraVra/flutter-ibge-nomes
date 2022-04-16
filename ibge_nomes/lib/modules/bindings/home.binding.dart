import 'package:get/instance_manager.dart';
import 'package:ibge_nomes/modules/controller/home.controller.dart';
import 'package:ibge_nomes/provider/ibge.provider.dart';

class HomeBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => IbgeProvider());
  }

}