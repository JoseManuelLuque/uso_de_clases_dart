import 'persona.dart';

abstract class Cuenta {
  int _numeroCuenta;
  double _saldo;
  Persona _cliente;

  Cuenta(this._cliente, this._numeroCuenta, this._saldo);

  // Getters
  int get numeroCuenta => _numeroCuenta;
  double get saldo => _saldo;
  Persona get cliente => _cliente;

  // Setters
  set numeroCuenta(int numeroCuenta) {
    _numeroCuenta = numeroCuenta;
  }

  set saldo(double saldo) {
    _saldo = saldo;
  }

  set cliente(Persona cliente) {
    _cliente = cliente;
  }

  void ingresar(double cantidad) {
    _saldo += cantidad;
  }

  void actualizarSaldo();

  void retirar(double cantidad);
}