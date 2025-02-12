import 'package:persona.dart';
import 'package:uso_de_clases_dart/cuenta_corriente.dart';
import 'package:uso_de_clases_dart/cuenta_ahorro.dart';

void main() {
  Persona cliente1 = Persona('Juan', 'Pérez', '12345678A');
  Persona cliente2 = Persona('Ana', 'García', '87654321B');

  CuentaCorriente cuentaCorriente = CuentaCorriente(cliente1, 1001, 5000);
  CuentaAhorro cuentaAhorro = CuentaAhorro(cliente2, 1002, 3000, 2.0, 1000);

  print(cuentaCorriente);
  print(cuentaAhorro);

  cuentaCorriente.ingresar(1000);
  cuentaAhorro.ingresar(500);

  cuentaCorriente.retirar(2000);
  cuentaAhorro.retirar(2500);

  cuentaCorriente.actualizarSaldo();
  cuentaAhorro.actualizarSaldo();

  print(cuentaCorriente);
  print(cuentaAhorro);
}