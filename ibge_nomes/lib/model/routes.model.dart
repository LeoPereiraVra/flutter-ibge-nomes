import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:ibge_nomes/modules/bindings/detalhe.binding.dart';
import 'package:ibge_nomes/modules/bindings/home.binding.dart';
import 'package:ibge_nomes/modules/view/detalhe.view.dart';
import 'package:ibge_nomes/modules/view/home.view.dart';

class Routes{
  
  static const HOME = '/HOME';
  static const DATALHE = '/DATALHE';

  static List<GetPage> routespage = [
    GetPage(name: HOME, page: () => const HomeView(), binding: HomeBindings()),
    GetPage(name: DATALHE, page: () => const DetalheView(), binding: DetalheBinding()),
  ];
}