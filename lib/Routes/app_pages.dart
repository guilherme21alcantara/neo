import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:neo/Routes/app_routes.dart';
import 'package:neo/Screen/conta/login.dart';
import 'package:neo/Screen/cotacao/buscar_placa.dart';
import 'package:neo/Screen/cotacao/cadastro.dart';
import 'package:neo/Screen/cotacao/informe_cep_faculdade.dart';
import 'package:neo/Screen/cotacao/informe_cep_faculdade_alt.dart';
import 'package:neo/Screen/cotacao/informe_cep_pernoita.dart';
import 'package:neo/Screen/cotacao/informe_cep_pernoita_alt.dart';
import 'package:neo/Screen/cotacao/informe_cep_trabalho.dart';
import 'package:neo/Screen/cotacao/informe_cep_trabalho_alt.dart';
import 'package:neo/Screen/cotacao/informe_cpf.dart';
import 'package:neo/Screen/cotacao/opcoes_uso_veiculo.dart';
import 'package:neo/Screen/splash.dart';
// ignore: import_of_legacy_library_into_null_safe

class AppPages {
  static final routes = [
    GetPage(name: Routes.INITIAL, page: () => LoginPage())
  ];
}
