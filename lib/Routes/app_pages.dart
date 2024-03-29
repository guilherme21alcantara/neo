import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:neo/Routes/app_routes.dart';
import 'package:neo/Screen/carrosel/carrosel.dart';
import 'package:neo/Screen/conta/alterar_senha.dart';
import 'package:neo/Screen/conta/esqueceu_senha.dart';
import 'package:neo/Screen/conta/home.dart';
import 'package:neo/Screen/conta/login.dart';
import 'package:neo/Screen/cotacao/buscar_modelo_placa.dart';
import 'package:neo/Screen/cotacao/buscar_placa.dart';
import 'package:neo/Screen/cotacao/cadastro.dart';
import 'package:neo/Screen/cotacao/cotacao_coberturas_page.dart';
import 'package:neo/Screen/cotacao/informe_cep_faculdade.dart';
import 'package:neo/Screen/cotacao/informe_cep_faculdade_alt.dart';
import 'package:neo/Screen/cotacao/informe_cep_pernoita.dart';
import 'package:neo/Screen/cotacao/informe_cep_pernoita_alt.dart';
import 'package:neo/Screen/cotacao/informe_cep_trabalho.dart';
import 'package:neo/Screen/cotacao/informe_cep_trabalho_alt.dart';
import 'package:neo/Screen/cotacao/informe_cpf.dart';
import 'package:neo/Screen/cotacao/opcoes_uso_veiculo.dart';
import 'package:neo/Screen/eventos_e_sinistros/declaracao_de_veracidade.dart';
import 'package:neo/Screen/eventos_e_sinistros/eventos_e_sinistros_page.dart';
import 'package:neo/Screen/perfil/ative_localizacao.dart';
import 'package:neo/Screen/solicitacoes/solicitacoes_page.dart';
import 'package:neo/Screen/solicitacoes/troca_titularidade.dart';
import 'package:neo/Screen/splash.dart';
import 'package:neo/widgets/home_conteudo.dart';
import 'package:neo/widgets/sucesso_page.dart';
// ignore: import_of_legacy_library_into_null_safe

class AppPages {
  static final routes = [
    GetPage(name: Routes.INITIAL, page: () => splash()),
    GetPage(name: Routes.CADASTRO, page: () => CotarCadastro()),
    GetPage(name: Routes.HOME, page: () => HomePage()),
    GetPage(name: Routes.PROX, page: () => BuscarModelo()),
    GetPage(name: Routes.OPCAO, page:()=> OpcoesUsoVeiculo()),
    GetPage(name: Routes.LOGINPAG, page:()=> LoginPage()),
    GetPage(name: Routes.HOMEPAG, page: ()=> HomeConteudo())
      ];
}
