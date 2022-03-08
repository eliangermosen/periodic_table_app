class PeriodicTable {
  late List<Elements> elements;

  PeriodicTable(this.elements);

  PeriodicTable.fromJson(Map<String, dynamic> json) {
    if (json['elements'] != null) {
      elements = <Elements>[];
      json['elements'].forEach((v) {
        elements.add(new Elements.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (elements != null) {
      data['elements'] = elements.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Elements {
  late String name;
  late String appearance;
  late num atomicMass;
  late num boil;
  late String category;
  late String color;
  late num density;
  late String discoveredBy;
  late num melt;
  late num molarHeat;
  late String namedBy;
  late num number;
  late num period;
  late String phase;
  late String source;
  late String spectralImg;
  late String summary;
  late String symbol;
  late num xpos;
  late num ypos;
  late List<num> shells;
  late String electronConfiguration;
  late String electronConfigurationSemantic;
  late num electronAffinity;
  late num electronegativityPauling;
  late List<num> ionizationEnergies;
  late String cpkHex;

  Elements(
      {required this.name,
      required this.appearance,
      required this.atomicMass,
      required this.boil,
      required this.category,
      required this.color,
      required this.density,
      required this.discoveredBy,
      required this.melt,
      required this.molarHeat,
      required this.namedBy,
      required this.number,
      required this.period,
      required this.phase,
      required this.source,
      required this.spectralImg,
      required this.summary,
      required this.symbol,
      required this.xpos,
      required this.ypos,
      required this.shells,
      required this.electronConfiguration,
      required this.electronConfigurationSemantic,
      required this.electronAffinity,
      required this.electronegativityPauling,
      required this.ionizationEnergies,
      required this.cpkHex});

  Elements.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    appearance = json['appearance'];
    atomicMass = json['atomic_mass'];
    boil = json['boil'];
    category = json['category'];
    color = json['color'];
    density = json['density'];
    discoveredBy = json['discovered_by'];
    melt = json['melt'];
    molarHeat = json['molar_heat'];
    namedBy = json['named_by'];
    number = json['number'];
    period = json['period'];
    phase = json['phase'];
    source = json['source'];
    spectralImg = json['spectral_img'];
    summary = json['summary'];
    symbol = json['symbol'];
    xpos = json['xpos'];
    ypos = json['ypos'];
    shells = json['shells'].cast<num>();
    electronConfiguration = json['electron_configuration'];
    electronConfigurationSemantic = json['electron_configuration_semantic'];
    electronAffinity = json['electron_affinity'];
    electronegativityPauling = json['electronegativity_pauling'];
    ionizationEnergies = json['ionization_energies'].cast<num>();
    cpkHex = json['cpk-hex'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = name;
    data['appearance'] = appearance;
    data['atomic_mass'] = atomicMass;
    data['boil'] = boil;
    data['category'] = category;
    data['color'] = color;
    data['density'] = density;
    data['discovered_by'] = discoveredBy;
    data['melt'] = melt;
    data['molar_heat'] = molarHeat;
    data['named_by'] = namedBy;
    data['number'] = number;
    data['period'] = period;
    data['phase'] = phase;
    data['source'] = source;
    data['spectral_img'] = spectralImg;
    data['summary'] = summary;
    data['symbol'] = symbol;
    data['xpos'] = xpos;
    data['ypos'] = ypos;
    data['shells'] = shells;
    data['electron_configuration'] = electronConfiguration;
    data['electron_configuration_semantic'] = electronConfigurationSemantic;
    data['electron_affinity'] = electronAffinity;
    data['electronegativity_pauling'] = electronegativityPauling;
    data['ionization_energies'] = ionizationEnergies;
    data['cpk-hex'] = cpkHex;
    return data;
  }
}
