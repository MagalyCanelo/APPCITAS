class Cita {
  late String dniPaci;
  late String nomsPaci;
  late String apesPaci;
  late String celPaci;
  late String fechaCita;
  late String horaCita;

  Cita({
    required this.dniPaci,
    required this.nomsPaci,
    required this.apesPaci,
    required this.celPaci,
    required this.fechaCita,
    required this.horaCita,
  });

  void guardarInformacion() {
    print('Guardando información de la cita:');
    print('DNI del paciente: $dniPaci');
    print('Nombres del paciente: $nomsPaci');
    print('Apellidos del paciente: $apesPaci');
    print('Celular del paciente: $celPaci');
    print('Fecha de la cita: $fechaCita');
    print('Hora de la cita: $horaCita');
    print('Información guardada exitosamente.');
  }
}
