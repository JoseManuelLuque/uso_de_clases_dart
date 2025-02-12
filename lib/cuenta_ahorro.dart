import 'cuenta_bancaria.dart';
import 'persona.dart';

// Clase que representa una cuenta corriente y hereda de CuentaBancaria
class CuentaCorriente extends CuentaBancaria {
  // Interés fijo para la cuenta corriente
  static const double interesFijo = 1.5;

  // Constructor que inicializa los atributos de la cuenta corriente
  CuentaCorriente(Persona cliente, int numeroCuenta, double saldo)
      : super(cliente, numeroCuenta, saldo);

  // Implementación del método para actualizar el saldo de la cuenta corriente
  @override
  void actualizarSaldo() {
    saldo += saldo * (interesFijo / 100);
  }

  // Implementación del método para retirar una cantidad de la cuenta corriente
  @override
  void retirar(double cantidad) {
    if (saldo >= cantidad) {
      saldo -= cantidad;
    } else {
      print('Saldo insuficiente');
    }
  }

  // Método toString para representar la cuenta corriente como una cadena
  @override
  String toString() {
    return 'CuentaCorriente{numeroCuenta: $numeroCuenta, saldo: $saldo, cliente: ${cliente.nombre} ${cliente.apellidos}}';
  }
}