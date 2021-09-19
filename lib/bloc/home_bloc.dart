class HomeBloc {
  String resultText = '';

  Future calcular(String alcool, String gasolina) async {
    double alc = double.parse(
      alcool.replaceAll(RegExp(r'[,.]'), ''),
    );
    double gas = double.parse(
      gasolina.replaceAll(RegExp(r'[,.]'), ''),
    );
    double result = alc / gas;

    return Future.delayed(
      const Duration(milliseconds: 1500),
      () {
        if (result >= 0.7) {
          resultText = 'Compensa utilizar gasolina!';
        } else {
          resultText = 'Compensa utilizar álcool';
        }
      },
    );
  }

  reset(){}
}
