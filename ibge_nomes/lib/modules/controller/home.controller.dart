import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:ibge_nomes/model/nome.model.dart';
import 'package:ibge_nomes/model/routes.model.dart';
import 'package:ibge_nomes/provider/ibge.provider.dart';

class HomeController extends GetxController with StateMixin<List<Nome>>{
  
  List<Nome>? _nomes;
  IbgeProvider provider = Get.find<IbgeProvider>();

  
  HomeController(){
    getNomes();
  }

  getNomes(){
    change(null, status: RxStatus.loading());
    provider.getNomes().then((value){
      _nomes = value;
      change(_nomes,status: RxStatus.success());
    }).onError((error, stackTrace) {
      change(null,status: RxStatus.error("Erro ao buscar nomes"));
    });
  }

  irDetalhe(Nome nome){    
    Get.toNamed(Routes.DATALHE, arguments: nome);
  }
  
}