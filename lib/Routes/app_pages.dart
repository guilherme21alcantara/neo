import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:neo/Routes/app_routes.dart';
import 'package:neo/Screen/carrosel/paginas_carrosel/FirstCarrosel.dart';
import 'package:neo/Screen/cotacao/cadastro.dart';
import 'package:neo/Screen/cotacao/opcoes_uso_veiculo.dart';
import 'package:neo/Screen/splash.dart';
// ignore: import_of_legacy_library_into_null_safe

class AppPages {
  static final routes = [
    GetPage(name: Routes.INITIAL, page: () => FirstCarrosel())
  ];
}
