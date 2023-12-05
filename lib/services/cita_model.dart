class Cita {
  final String id;
  final String dniPaci;
  final String nomsPaci;
  final String apesPaci;
  final String celPaci;
  final String fechaCita;
  final String horaCita;
  final String tipoCita;
  final String precioCita;

  Cita({
    required this.id,
    required this.dniPaci,
    required this.nomsPaci,
    required this.apesPaci,
    required this.celPaci,
    required this.fechaCita,
    required this.horaCita,
    required this.tipoCita,
    required this.precioCita,
  });

  Cita copyWith({
    String? id,
    String? dniPaci,
    String? nomsPaci,
    String? apesPaci,
    String? celPaci,
    String? fechaCita,
    String? horaCita,
    String? tipoCita,
    String? precioCita,
  }) {
    return Cita(
      id: id ?? this.id,
      dniPaci: dniPaci ?? this.dniPaci,
      nomsPaci: nomsPaci ?? this.nomsPaci,
      apesPaci: apesPaci ?? this.apesPaci,
      celPaci: celPaci ?? this.celPaci,
      fechaCita: fechaCita ?? this.fechaCita,
      horaCita: horaCita ?? this.horaCita,
      tipoCita: tipoCita ?? this.tipoCita,
      precioCita: precioCita ?? this.precioCita,
    );
  }
}
