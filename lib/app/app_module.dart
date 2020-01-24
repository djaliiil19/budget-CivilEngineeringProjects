import 'package:precificacaodeprojetos/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:precificacaodeprojetos/app/app_widget.dart';
import 'package:precificacaodeprojetos/app/modules/home/home_module.dart';
import 'package:precificacaodeprojetos/app/modules/home/services/local_storage_service.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => LocalStorageService()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
