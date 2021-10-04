import 'package:flutter/material.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/custom_list.dart';
import 'package:neo/components/componentes_globais/scaffold_principal.dart';
import 'package:neo/widgets/perfil_card.dart';

class AjustesPerfilPage extends StatefulWidget {
  const AjustesPerfilPage({Key? key}) : super(key: key);

  @override
  _AjustesPerfilPageState createState() => _AjustesPerfilPageState();
}

class _AjustesPerfilPageState extends State<AjustesPerfilPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
      conteudo: _corpo(size),
      title: 'Detalhes do Perfil',
      rota: '',
    );
  }

  Widget _corpo(Size size) {
    bool _switchActive = false;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.03),
      child: CustomList(
        ativa: true,
        height: size.height,
        size: size,
        widget: Container(
          height: size.height * 0.8,
          width: size.height * 0.8,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Container(
                    height: size.height * 0.05,
                    decoration: BoxDecoration(
                        color: AppCores.ROXOPRINCIPAL,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.07),
                      child: Center(
                        child: Text(
                          'Chats',
                          style: TextStyle(
                              fontSize: 20,
                              color: AppCores.BRANCO,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                    vertical: size.height * 0.01),
                child: Column(
                  children: [
                    PerfilCard(size, Icons.lock_rounded, 'Trocar Senha', () {}),
                    PerfilCard(size, Icons.notifications_active, 'Notificações',
                        () {}),
                    PerfilCard(size, Icons.settings, 'Privacidade', () {}),
                    PerfilCard(size, Icons.credit_card, 'Pagamentos', () {}),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.02),
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.exit_to_app,
                              color: AppCores.PRETO,
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Text(
                              'Sair',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: AppCores.PRETO),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Mais Opções',
                      style: TextStyle(
                          color: AppCores.ROXOPRINCIPAL,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.02),
                      child: TextButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.gps_fixed,
                                    color: AppCores.PRETO,
                                  ),
                                  SizedBox(
                                    width: size.width * 0.02,
                                  ),
                                  Text(
                                    'Localização',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: AppCores.PRETO),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: size.width * 0.15),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppCores.PRETO,
                                ),
                              ),
                              Switch(
                                  value: _switchActive,
                                  onChanged: (v) {
                                    setState(() {
                                      _switchActive = true;
                                    });
                                  })
                            ],
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
