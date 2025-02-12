import 'cuenta_bancaria.dart';
import 'persona.dart';

class CuentaAhorro extends CuentaBancaria {
  double interesVariable;
  double saldoMinimo;

  CuentaAhorro(Persona cliente, int numeroCuenta, double saldo, this.interesVariable, this.saldoMinimo)
      : super(cliente, numeroCuenta, saldo);

  @override
  void actualizarSaldo() {
    saldo += saldo * (interesVariable / 100);
  }

  @override
  void retirar(double cantidad) {
    if (saldo - cantidad >= saldoMinimo) {
      saldo -= cantidad;
    } else {
      print('No se puede retirar, saldo mínimo requerido');
    }
  }

  void cambiarInteres(double nuevoInteres) {
    interesVariable = nuevoInteres;
  }

  @override
  String toString() {
    return 'CuentaAhorro{numeroCuenta: $numeroCuenta, saldo: $saldo, cliente: ${cliente.nombre} ${cliente.apellidos}, interesVariable: $interesVariable, saldoMinimo: $saldoMinimo}';
  }
}