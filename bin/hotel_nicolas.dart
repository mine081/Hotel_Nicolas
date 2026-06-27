void main () {
  QuartoHotelSimples quartoHotelSimples = QuartoHotelSimples('Simples', 101, 80.0, '10');
  QuartoHotelMedio quartoHotelMedio = QuartoHotelMedio('Médio', 202, 250.0, '1');
  QuartoHotelLuxo quartoHotelLuxo = QuartoHotelLuxo('Luxo', 303, 1000.0, '1');
  
  quartoHotelSimples.reservar();
  quartoHotelMedio.reservar();
  quartoHotelLuxo.reservar();
  quartoHotelMedio.servirCafeDamanha();
  quartoHotelLuxo.servirCafeDamanha();
  quartoHotelLuxo.servircoDeQuarto();
  quartoHotelSimples.calcularValorTotal();
  quartoHotelMedio.calcularValorTotal();
  quartoHotelLuxo.calcularValorTotal();
  

}
class Quarto {
  String tipo;
  double numeroQuarto;
  double valorDiaria;
  String numerodiarias;

  Quarto(this.tipo, this.numeroQuarto, this.valorDiaria, this.numerodiarias);
  void reservar() {
    print('O quarto $tipo, número $numeroQuarto, foi reservado por $numerodiarias diárias, com o valor de R\$$valorDiaria por diária.');
  }
}
class QuartoHotelSimples extends Quarto {
  QuartoHotelSimples(super.tipo, super.numeroQuarto, super.valorDiaria, super.numerodiarias);
  
void calcularValorTotal() {
    double valorTotal = valorDiaria * int.parse(numerodiarias);
    print('O valor total da reserva do quarto $tipo é R\$$valorTotal.');
  }
}

class QuartoHotelMedio extends Quarto {
  QuartoHotelMedio(super.tipo, super.numeroQuarto, super.valorDiaria, super.numerodiarias);

  void servirCafeDamanha() {
    print('O quarto $tipo, oferece café da manhã incluso na diária.');
  }
  void calcularValorTotal() {
    double valorTotal = valorDiaria * int.parse(numerodiarias);
    print('O valor total da reserva do quarto $tipo é R\$$valorTotal.');
  }
}

class QuartoHotelLuxo  extends Quarto {
  QuartoHotelLuxo(super.tipo, super.numeroQuarto, super.valorDiaria, super.numerodiarias);
  void servirCafeDamanha() {
    print('O quarto $tipo, oferece café da manhã incluso na diária.');
  }
  void servircoDeQuarto() {
    print('O quarto $tipo, oferece serviço de quarto 24 horas.');
  }
  void calcularValorTotal() {
    double valorTotal = valorDiaria * int.parse(numerodiarias);
    print('O valor total da reserva do quarto $tipo é R\$$valorTotal.');
  }
}