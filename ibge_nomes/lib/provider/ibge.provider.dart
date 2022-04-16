import 'package:get/get_connect.dart';
import 'package:ibge_nomes/model/nome.model.dart';

class IbgeProvider extends GetConnect{

  @override
  void onInit() {
    
    httpClient.baseUrl = "https://servicodados.ibge.gov.br/api/v2/";

  }

  Future<List<Nome>> getNomes() async {
    
    return get('censos/nomes/').then((value) {
      return value.body.map<Nome>((n)=> Nome.fromJson(n)).toList()??[];       
    },
    onError : (error) => Future.error("Erro ao carregar nomes"));
 }
}