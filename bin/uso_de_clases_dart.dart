// Importamos las clases necesarias desde la carpeta l// Importamos las clases necesarias desde la carpeta lib
import 'package:uso_de_clases_dart/persona.dart';
import 'package:uso_de_clases_dart/cuenta_corriente.dart';
import 'package:uso_de_clases_dart/cuenta_ahorro.dart';

void main() {
  // Creamos dos clientes de tipo Persona
  Persona cliente1 = Persona('Juan', 'Pérez', '12345678A');
  Persona cliente2 = Persona('Ana', 'García', '87654321B');

  // Creamos una cuenta corriente y una cuenta de ahorro para los clientes
  CuentaCorriente cuentaCorriente = CuentaCorriente(cliente1, 1001, 5000);
  CuentaAhorro cuentaAhorro = CuentaAhorro(cliente2, 1002, 3000, 2.0, 1000);

  // Imprimimos el estado inicial de las cuentas
  print(cuentaCorriente);
  print(cuentaAhorro);

  // Ingresamos dinero en ambas cuentas
  cuentaCorriente.ingresar(1000);
  cuentaAhorro.ingresar(500);

  // Retiramos dinero de ambas cuentas
  cuentaCorriente.retirar(2000);
  cuentaAhorro.retirar(2500);

  // Actualizamos el saldo de ambas cuentas
  cuentaCorriente.actualizarSaldo();
  cuentaAhorro.actualizarSaldo();

  // Imprimimos el estado final de las cuentas
  print(cuentaCorriente);
  print(cuentaAhorro);
}