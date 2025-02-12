import 'persona.dart';

abstract class Cuenta {
  int numeroCuenta;
  double saldo;
  Persona cliente;

  Cuenta(this.cliente, this.numeroCuenta, this.saldo);

  void ingresar(double cantidad) {
    saldo += cantidad;
  }

  void actualizarSaldo();

  void retirar(double cantidad);
}