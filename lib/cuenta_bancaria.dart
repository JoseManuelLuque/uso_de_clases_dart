import 'cuenta.dart';
import 'persona.dart';

class CuentaBancaria extends Cuenta {
  CuentaBancaria(Persona cliente, int numeroCuenta, double saldo)
      : super(cliente, numeroCuenta, saldo);

  @override
  void actualizarSaldo() {
    // Implementación específica de CuentaBancaria
  }

  @override
  void retirar(double cantidad) {
    // Implementación específica de CuentaBancaria
  }
}