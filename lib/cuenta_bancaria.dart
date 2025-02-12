import 'cuenta.dart';
import 'persona.dart';

// Clase que representa una cuenta bancaria y hereda de Cuenta
class CuentaBancaria extends Cuenta {
  // Constructor que inicializa los atributos de la cuenta bancaria
  CuentaBancaria(Persona cliente, int numeroCuenta, double saldo)
      : super(cliente, numeroCuenta, saldo);

  // Implementación del método para actualizar el saldo de la cuenta bancaria
  @override
  void actualizarSaldo() {
    // Implementación específica de CuentaBancaria
  }

  // Implementación del método para retirar una cantidad de la cuenta bancaria
  @override
  void retirar(double cantidad) {
    // Implementación específica de CuentaBancaria
  }
}