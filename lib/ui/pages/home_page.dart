import 'package:alcool_gasolina/bloc/home_bloc.dart';

import '../widgets/logo.dart';
import '../widgets/formulario.dart';
import '../widgets/sucesso_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _color = Colors.deepPurple;
  var _gasController = MoneyMaskedTextController();
  var _alcoolController = MoneyMaskedTextController();
  bool _completed = false;
  bool _busy = false;
  String result = '';

  @override
  Widget build(BuildContext context) {
    final homeBloc = HomeBloc();
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: AnimatedContainer(
        duration: const Duration(
          milliseconds: 1200,
        ),
        color: _color,
        child: SafeArea(
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 60.0),
                child: LogoWidget(),
              ),
              const SizedBox(height: 128.0),
              _completed
                  ? SucessoWidget(
                      text: result,
                      onPressed: () {
                        setState(() {
                          _gasController = MoneyMaskedTextController();
                          _alcoolController = MoneyMaskedTextController();
                          _completed = false;
                          _busy = false;
                          _color = Theme.of(context).primaryColor;
                        });
                      })
                  : FormularioWidget(
                      gasController: _gasController,
                      alcoolController: _alcoolController,
                      busy: _busy,
                      onPressed: () async {
                        setState(() {
                          _color = Colors.deepPurpleAccent;
                          _busy = true;
                        });
                        await homeBloc.calcular(
                            _alcoolController.text, _gasController.text);
                        setState(() {
                          result = homeBloc.resultText;
                          _completed = true;
                          _busy = false;
                        });
                      },
                    )
            ],
          ),
        ),
      ),
    );
  }
}
