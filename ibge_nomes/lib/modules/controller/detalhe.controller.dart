import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:ibge_nomes/model/nome.model.dart';

class DetalheController extends GetxController{
  
  Nome? nome;

  DetalheController(){
    nome = Get.arguments;
  }
  
}