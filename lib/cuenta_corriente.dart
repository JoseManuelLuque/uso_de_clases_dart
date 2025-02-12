import 'cuenta_bancaria.dart';
import 'persona.dart';

class CuentaCorriente extends CuentaBancaria {
  static const double interesFijo = 1.5;

  CuentaCorriente(Persona cliente, int numeroCuenta, double saldo)
      : super(cliente, numeroCuenta, saldo);

  @override
  void actualizarSaldo() {
    saldo += saldo * (interesFijo / 100);
  }

  @override
  void retirar(double cantidad) {
    if (saldo >= cantidad) {
      saldo -= cantidad;
    } else {
      print('Saldo insuficiente');
    }
  }

  @override
  String toString() {
    return 'CuentaCorriente{numeroCuenta: $numeroCuenta, saldo: $saldo, cliente: ${cliente.nombre} ${cliente.apellidos}}';
  }
}