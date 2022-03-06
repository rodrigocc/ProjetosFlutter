class ImcHandler {
  static void handleImc(String imcWeight, String imcHeight, String infoText) {
    double weight = double.parse(imcWeight);
    double height = double.parse(imcHeight) / 100;
    double imc = weight / (height * height);
    if (imc < 18.5) {
      infoText = "Está Abaixo do Peso";
    } else if (imc >= 18.5 && imc <= 24.9) {
      infoText = "Peso Está Normal";
    } else if (imc >= 25 && imc <= 29.9) {
      infoText = "Está com sobrePeso";
    } else if (imc >= 30 && imc <= 34.9) {
      infoText = "Obesidade Grau 1";
    } else if (imc >= 35 && imc <= 39.9) {
      infoText = "Obesidade Grau 2 ";
    } else {
      infoText = "Obesidade Grau 3";
    }
  }
}
