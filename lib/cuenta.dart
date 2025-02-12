import 'persona.dart';

// Clase abstracta que representa una cuenta bancaria
abstract class Cuenta {
  int _numeroCuenta;
  double _saldo;
  Persona _cliente;

  // Constructor que inicializa los atributos de la cuenta
  Cuenta(this._cliente, this._numeroCuenta, this._saldo);

  // Getters para los atributos
  int get numeroCuenta => _numeroCuenta;
  double get saldo => _saldo;
  Persona get cliente => _cliente;

  // Setters para los atributos
  set numeroCuenta(int numeroCuenta) {
    _numeroCuenta = numeroCuenta;
  }

  set saldo(double saldo) {
    _saldo = saldo;
  }

  set cliente(Persona cliente) {
    _cliente = cliente;
  }

  // Método para ingresar una cantidad en la cuenta
  void ingresar(double cantidad) {
    _saldo += cantidad;
  }

  // Método abstracto para actualizar el saldo de la cuenta
  void actualizarSaldo();

  // Método abstracto para retirar una cantidad de la cuenta
  void retirar(double cantidad);
}