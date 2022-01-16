import 'dart:convert';

import 'bezichting_dagdelen.dart';
import 'bezichting_dagen.dart';
import 'detail_info.dart';
import 'energielabel.dart';
import 'kenmerken.dart';
import 'kenmerken_kort.dart';
import 'media.dart';
import 'prijs.dart';
import 'titel.dart';
import 'veiling.dart';
import 'video.dart';

class EstateDetail {
  String? aangebodenSinds;
  String? aangebodenSindsTekst;
  int? aantalBadkamers;
  int? aantalKamers;
  dynamic aantalSlaapkamers;
  String? aantalWoonlagen;
  String? aanvaarding;
  String? adres;
  dynamic afgekochtDatum;
  String? balkonDakterras;
  dynamic bedrijfsruimteCombinatieObject;
  List<BezichtingDagdelen>? bezichtingDagdelen;
  List<BezichtingDagen>? bezichtingDagen;
  dynamic bijdrageVve;
  dynamic bijzonderheden;
  String? bouwjaar;
  String? bouwvorm;
  String? bronCode;
  dynamic contactpersoonEmail;
  dynamic contactpersoonTelefoon;
  dynamic cv;
  dynamic datumOndertekeningAkte;
  dynamic deeplink;
  DetailInfo? detailInfo;
  dynamic eigendomsSituatie;
  Energielabel? energielabel;
  dynamic erfpachtBedrag;
  dynamic garage;
  dynamic garageIsolatie;
  dynamic garageVoorzieningen;
  dynamic gelegenOp;
  String? gewijzigdDatum;
  String? hoofdFoto;
  String? hoofdFotoSecure;
  String? hoofdTuinType;
  int? id;
  bool? indBasisPlaatsing;
  bool? indFotos;
  bool? indIpix;
  bool? indOpenhuizenTopper;
  bool? indPdf;
  bool? indPlattegrond;
  bool? indTop;
  bool? indVeilingProduct;
  bool? indVideo;
  int? inhoud;
  String? internalId;
  bool? isIngetrokken;
  bool? isVerhuurd;
  bool? isVerkocht;
  String? isolatie;
  List<Kenmerken>? kenmerken;
  KenmerkenKort? kenmerkenKort;
  dynamic kenmerkenTitel;
  String? ligging;
  String? mliUrl;
  String? makelaar;
  int? makelaarId;
  String? makelaarTelefoon;
  List<dynamic>? medeAanbieders;
  List<Media>? media;
  List<String>? mediaFoto;
  String? mobileUrl;
  String? objectType;
  String? objectTypeMetVoorvoegsel;
  List<dynamic>? openHuizen;
  int? perceelOppervlakte;
  String? permanenteBewoning;
  String? plaats;
  String? postcode;
  Prijs? prijs;
  String? prijsGeformatteerd;
  dynamic project;
  dynamic projectNaam;
  String? publicatieDatum;
  int? publicatieStatus;
  String? schuurBerging;
  dynamic schuurBergingIsolatie;
  String? schuurBergingVoorzieningen;
  String? scrambledId;
  int? serviceKosten;
  int? soortAanbod;
  String? soortDak;
  String? soortGarage;
  String? soortParkeergelegenheid;
  int? soortPlaatsing;
  String? soortWoning;
  List<Titel>? titels;
  bool? toonBezichtigingMaken;
  bool? toonBrochureAanvraag;
  bool? toonMakelaarWoningaanbod;
  bool? toonReageren;
  dynamic transactieAfmeldDatum;
  dynamic transactieMakelaarId;
  dynamic transactieMakelaarNaam;
  String? tuinLigging;
  int? typeProject;
  String? url;
  Veiling? veiling;
  String? verkoopStatus;
  String? verwarming;
  Video? video;
  String? volledigeOmschrijving;
  String? voorzieningen;
  double? wgs84X;
  double? wgs84Y;
  String? warmWater;
  int? woonOppervlakte;
  dynamic eersteHuurPrijs;
  dynamic eersteHuurPrijsLang;
  dynamic eersteKoopPrijs;
  dynamic eersteKoopPrijsLang;
  dynamic huurPrijs;
  dynamic huurPrijsLang;
  dynamic huurPrijsTot;
  dynamic huurprijs;
  dynamic huurprijsFormaat;
  int? koopPrijs;
  String? koopPrijsLang;
  int? koopprijs;
  String? koopprijsFormaat;
  dynamic koopprijsTot;
  String? shortUrl;
  String? tuin;
  dynamic veilingGeformatteerd;

  EstateDetail({
    this.aangebodenSinds,
    this.aangebodenSindsTekst,
    this.aantalBadkamers,
    this.aantalKamers,
    this.aantalSlaapkamers,
    this.aantalWoonlagen,
    this.aanvaarding,
    this.adres,
    this.afgekochtDatum,
    this.balkonDakterras,
    this.bedrijfsruimteCombinatieObject,
    this.bezichtingDagdelen,
    this.bezichtingDagen,
    this.bijdrageVve,
    this.bijzonderheden,
    this.bouwjaar,
    this.bouwvorm,
    this.bronCode,
    this.contactpersoonEmail,
    this.contactpersoonTelefoon,
    this.cv,
    this.datumOndertekeningAkte,
    this.deeplink,
    this.detailInfo,
    this.eigendomsSituatie,
    this.energielabel,
    this.erfpachtBedrag,
    this.garage,
    this.garageIsolatie,
    this.garageVoorzieningen,
    this.gelegenOp,
    this.gewijzigdDatum,
    this.hoofdFoto,
    this.hoofdFotoSecure,
    this.hoofdTuinType,
    this.id,
    this.indBasisPlaatsing,
    this.indFotos,
    this.indIpix,
    this.indOpenhuizenTopper,
    this.indPdf,
    this.indPlattegrond,
    this.indTop,
    this.indVeilingProduct,
    this.indVideo,
    this.inhoud,
    this.internalId,
    this.isIngetrokken,
    this.isVerhuurd,
    this.isVerkocht,
    this.isolatie,
    this.kenmerken,
    this.kenmerkenKort,
    this.kenmerkenTitel,
    this.ligging,
    this.mliUrl,
    this.makelaar,
    this.makelaarId,
    this.makelaarTelefoon,
    this.medeAanbieders,
    this.media,
    this.mediaFoto,
    this.mobileUrl,
    this.objectType,
    this.objectTypeMetVoorvoegsel,
    this.openHuizen,
    this.perceelOppervlakte,
    this.permanenteBewoning,
    this.plaats,
    this.postcode,
    this.prijs,
    this.prijsGeformatteerd,
    this.project,
    this.projectNaam,
    this.publicatieDatum,
    this.publicatieStatus,
    this.schuurBerging,
    this.schuurBergingIsolatie,
    this.schuurBergingVoorzieningen,
    this.scrambledId,
    this.serviceKosten,
    this.soortAanbod,
    this.soortDak,
    this.soortGarage,
    this.soortParkeergelegenheid,
    this.soortPlaatsing,
    this.soortWoning,
    this.titels,
    this.toonBezichtigingMaken,
    this.toonBrochureAanvraag,
    this.toonMakelaarWoningaanbod,
    this.toonReageren,
    this.transactieAfmeldDatum,
    this.transactieMakelaarId,
    this.transactieMakelaarNaam,
    this.tuinLigging,
    this.typeProject,
    this.url,
    this.veiling,
    this.verkoopStatus,
    this.verwarming,
    this.video,
    this.volledigeOmschrijving,
    this.voorzieningen,
    this.wgs84X,
    this.wgs84Y,
    this.warmWater,
    this.woonOppervlakte,
    this.eersteHuurPrijs,
    this.eersteHuurPrijsLang,
    this.eersteKoopPrijs,
    this.eersteKoopPrijsLang,
    this.huurPrijs,
    this.huurPrijsLang,
    this.huurPrijsTot,
    this.huurprijs,
    this.huurprijsFormaat,
    this.koopPrijs,
    this.koopPrijsLang,
    this.koopprijs,
    this.koopprijsFormaat,
    this.koopprijsTot,
    this.shortUrl,
    this.tuin,
    this.veilingGeformatteerd,
  });

  factory EstateDetail.fromMap(Map<String, dynamic> data) => EstateDetail(
        aangebodenSinds: data['AangebodenSinds'] as String?,
        aangebodenSindsTekst: data['AangebodenSindsTekst'] as String?,
        aantalBadkamers: data['AantalBadkamers'] as int?,
        aantalKamers: data['AantalKamers'] as int?,
        aantalSlaapkamers: data['AantalSlaapkamers'] as dynamic,
        aantalWoonlagen: data['AantalWoonlagen'] as String?,
        aanvaarding: data['Aanvaarding'] as String?,
        adres: data['Adres'] as String?,
        afgekochtDatum: data['AfgekochtDatum'] as dynamic,
        balkonDakterras: data['BalkonDakterras'] as String?,
        bedrijfsruimteCombinatieObject:
            data['BedrijfsruimteCombinatieObject'] as dynamic,
        bezichtingDagdelen: (data['BezichtingDagdelen'] as List<dynamic>?)
            ?.map((e) => BezichtingDagdelen.fromMap(e as Map<String, dynamic>))
            .toList(),
        bezichtingDagen: (data['BezichtingDagen'] as List<dynamic>?)
            ?.map((e) => BezichtingDagen.fromMap(e as Map<String, dynamic>))
            .toList(),
        bijdrageVve: data['BijdrageVVE'] as dynamic,
        bijzonderheden: data['Bijzonderheden'] as dynamic,
        bouwjaar: data['Bouwjaar'] as String?,
        bouwvorm: data['Bouwvorm'] as String?,
        bronCode: data['BronCode'] as String?,
        contactpersoonEmail: data['ContactpersoonEmail'] as dynamic,
        contactpersoonTelefoon: data['ContactpersoonTelefoon'] as dynamic,
        cv: data['Cv'] as dynamic,
        datumOndertekeningAkte: data['DatumOndertekeningAkte'] as dynamic,
        deeplink: data['Deeplink'] as dynamic,
        detailInfo: data['DetailInfo'] == null
            ? null
            : DetailInfo.fromMap(data['DetailInfo'] as Map<String, dynamic>),
        eigendomsSituatie: data['EigendomsSituatie'] as dynamic,
        energielabel: data['Energielabel'] == null
            ? null
            : Energielabel.fromMap(
                data['Energielabel'] as Map<String, dynamic>),
        erfpachtBedrag: data['ErfpachtBedrag'] as dynamic,
        garage: data['Garage'] as dynamic,
        garageIsolatie: data['GarageIsolatie'] as dynamic,
        garageVoorzieningen: data['GarageVoorzieningen'] as dynamic,
        gelegenOp: data['GelegenOp'] as dynamic,
        gewijzigdDatum: data['GewijzigdDatum'] as String?,
        hoofdFoto: data['HoofdFoto'] as String?,
        hoofdFotoSecure: data['HoofdFotoSecure'] as String?,
        hoofdTuinType: data['HoofdTuinType'] as String?,
        id: data['Id'] as int?,
        indBasisPlaatsing: data['IndBasisPlaatsing'] as bool?,
        indFotos: data['IndFotos'] as bool?,
        indIpix: data['IndIpix'] as bool?,
        indOpenhuizenTopper: data['IndOpenhuizenTopper'] as bool?,
        indPdf: data['IndPDF'] as bool?,
        indPlattegrond: data['IndPlattegrond'] as bool?,
        indTop: data['IndTop'] as bool?,
        indVeilingProduct: data['IndVeilingProduct'] as bool?,
        indVideo: data['IndVideo'] as bool?,
        inhoud: data['Inhoud'] as int?,
        internalId: data['InternalId'] as String?,
        isIngetrokken: data['IsIngetrokken'] as bool?,
        isVerhuurd: data['IsVerhuurd'] as bool?,
        isVerkocht: data['IsVerkocht'] as bool?,
        isolatie: data['Isolatie'] as String?,
        kenmerken: (data['Kenmerken'] as List<dynamic>?)
            ?.map((e) => Kenmerken.fromMap(e as Map<String, dynamic>))
            .toList(),
        kenmerkenKort: data['KenmerkenKort'] == null
            ? null
            : KenmerkenKort.fromMap(
                data['KenmerkenKort'] as Map<String, dynamic>),
        kenmerkenTitel: data['KenmerkenTitel'] as dynamic,
        ligging: data['Ligging'] as String?,
        mliUrl: data['MLIUrl'] as String?,
        makelaar: data['Makelaar'] as String?,
        makelaarId: data['MakelaarId'] as int?,
        makelaarTelefoon: data['MakelaarTelefoon'] as String?,
        medeAanbieders: data['MedeAanbieders'] as List<dynamic>?,
        media: (data['Media'] as List<dynamic>?)
            ?.map((e) => Media.fromMap(e as Map<String, dynamic>))
            .toList(),
        mediaFoto: data['Media-Foto'] as List<String>?,
        mobileUrl: data['MobileURL'] as String?,
        objectType: data['ObjectType'] as String?,
        objectTypeMetVoorvoegsel: data['ObjectTypeMetVoorvoegsel'] as String?,
        openHuizen: data['OpenHuizen'] as List<dynamic>?,
        perceelOppervlakte: data['PerceelOppervlakte'] as int?,
        permanenteBewoning: data['PermanenteBewoning'] as String?,
        plaats: data['Plaats'] as String?,
        postcode: data['Postcode'] as String?,
        prijs: data['Prijs'] == null
            ? null
            : Prijs.fromMap(data['Prijs'] as Map<String, dynamic>),
        prijsGeformatteerd: data['PrijsGeformatteerd'] as String?,
        project: data['Project'] as dynamic,
        projectNaam: data['ProjectNaam'] as dynamic,
        publicatieDatum: data['PublicatieDatum'] as String?,
        publicatieStatus: data['PublicatieStatus'] as int?,
        schuurBerging: data['SchuurBerging'] as String?,
        schuurBergingIsolatie: data['SchuurBergingIsolatie'] as dynamic,
        schuurBergingVoorzieningen:
            data['SchuurBergingVoorzieningen'] as String?,
        scrambledId: data['ScrambledId'] as String?,
        serviceKosten: data['ServiceKosten'] as int?,
        soortAanbod: data['SoortAanbod'] as int?,
        soortDak: data['SoortDak'] as String?,
        soortGarage: data['SoortGarage'] as String?,
        soortParkeergelegenheid: data['SoortParkeergelegenheid'] as String?,
        soortPlaatsing: data['SoortPlaatsing'] as int?,
        soortWoning: data['SoortWoning'] as String?,
        titels: (data['Titels'] as List<dynamic>?)
            ?.map((e) => Titel.fromMap(e as Map<String, dynamic>))
            .toList(),
        toonBezichtigingMaken: data['ToonBezichtigingMaken'] as bool?,
        toonBrochureAanvraag: data['ToonBrochureAanvraag'] as bool?,
        toonMakelaarWoningaanbod: data['ToonMakelaarWoningaanbod'] as bool?,
        toonReageren: data['ToonReageren'] as bool?,
        transactieAfmeldDatum: data['TransactieAfmeldDatum'] as dynamic,
        transactieMakelaarId: data['TransactieMakelaarId'] as dynamic,
        transactieMakelaarNaam: data['TransactieMakelaarNaam'] as dynamic,
        tuinLigging: data['TuinLigging'] as String?,
        typeProject: data['TypeProject'] as int?,
        url: data['URL'] as String?,
        veiling: data['Veiling'] == null
            ? null
            : Veiling.fromMap(data['Veiling'] as Map<String, dynamic>),
        verkoopStatus: data['VerkoopStatus'] as String?,
        verwarming: data['Verwarming'] as String?,
        video: data['Video'] == null
            ? null
            : Video.fromMap(data['Video'] as Map<String, dynamic>),
        volledigeOmschrijving: data['VolledigeOmschrijving'] as String?,
        voorzieningen: data['Voorzieningen'] as String?,
        wgs84X: (data['WGS84_X'] as num?)?.toDouble(),
        wgs84Y: (data['WGS84_Y'] as num?)?.toDouble(),
        warmWater: data['WarmWater'] as String?,
        woonOppervlakte: data['WoonOppervlakte'] as int?,
        eersteHuurPrijs: data['EersteHuurPrijs'] as dynamic,
        eersteHuurPrijsLang: data['EersteHuurPrijsLang'] as dynamic,
        eersteKoopPrijs: data['EersteKoopPrijs'] as dynamic,
        eersteKoopPrijsLang: data['EersteKoopPrijsLang'] as dynamic,
        huurPrijs: data['HuurPrijs'] as dynamic,
        huurPrijsLang: data['HuurPrijsLang'] as dynamic,
        huurPrijsTot: data['HuurPrijsTot'] as dynamic,
        huurprijs: data['Huurprijs'] as dynamic,
        huurprijsFormaat: data['HuurprijsFormaat'] as dynamic,
        koopPrijs: data['KoopPrijs'] as int?,
        koopPrijsLang: data['KoopPrijsLang'] as String?,
        koopprijs: data['Koopprijs'] as int?,
        koopprijsFormaat: data['KoopprijsFormaat'] as String?,
        koopprijsTot: data['KoopprijsTot'] as dynamic,
        shortUrl: data['ShortURL'] as String?,
        tuin: data['Tuin'] as String?,
        veilingGeformatteerd: data['VeilingGeformatteerd'] as dynamic,
      );

  Map<String, dynamic> toMap() => {
        'AangebodenSinds': aangebodenSinds,
        'AangebodenSindsTekst': aangebodenSindsTekst,
        'AantalBadkamers': aantalBadkamers,
        'AantalKamers': aantalKamers,
        'AantalSlaapkamers': aantalSlaapkamers,
        'AantalWoonlagen': aantalWoonlagen,
        'Aanvaarding': aanvaarding,
        'Adres': adres,
        'AfgekochtDatum': afgekochtDatum,
        'BalkonDakterras': balkonDakterras,
        'BedrijfsruimteCombinatieObject': bedrijfsruimteCombinatieObject,
        'BezichtingDagdelen':
            bezichtingDagdelen?.map((e) => e.toMap()).toList(),
        'BezichtingDagen': bezichtingDagen?.map((e) => e.toMap()).toList(),
        'BijdrageVVE': bijdrageVve,
        'Bijzonderheden': bijzonderheden,
        'Bouwjaar': bouwjaar,
        'Bouwvorm': bouwvorm,
        'BronCode': bronCode,
        'ContactpersoonEmail': contactpersoonEmail,
        'ContactpersoonTelefoon': contactpersoonTelefoon,
        'Cv': cv,
        'DatumOndertekeningAkte': datumOndertekeningAkte,
        'Deeplink': deeplink,
        'DetailInfo': detailInfo?.toMap(),
        'EigendomsSituatie': eigendomsSituatie,
        'Energielabel': energielabel?.toMap(),
        'ErfpachtBedrag': erfpachtBedrag,
        'Garage': garage,
        'GarageIsolatie': garageIsolatie,
        'GarageVoorzieningen': garageVoorzieningen,
        'GelegenOp': gelegenOp,
        'GewijzigdDatum': gewijzigdDatum,
        'HoofdFoto': hoofdFoto,
        'HoofdFotoSecure': hoofdFotoSecure,
        'HoofdTuinType': hoofdTuinType,
        'Id': id,
        'IndBasisPlaatsing': indBasisPlaatsing,
        'IndFotos': indFotos,
        'IndIpix': indIpix,
        'IndOpenhuizenTopper': indOpenhuizenTopper,
        'IndPDF': indPdf,
        'IndPlattegrond': indPlattegrond,
        'IndTop': indTop,
        'IndVeilingProduct': indVeilingProduct,
        'IndVideo': indVideo,
        'Inhoud': inhoud,
        'InternalId': internalId,
        'IsIngetrokken': isIngetrokken,
        'IsVerhuurd': isVerhuurd,
        'IsVerkocht': isVerkocht,
        'Isolatie': isolatie,
        'Kenmerken': kenmerken?.map((e) => e.toMap()).toList(),
        'KenmerkenKort': kenmerkenKort?.toMap(),
        'KenmerkenTitel': kenmerkenTitel,
        'Ligging': ligging,
        'MLIUrl': mliUrl,
        'Makelaar': makelaar,
        'MakelaarId': makelaarId,
        'MakelaarTelefoon': makelaarTelefoon,
        'MedeAanbieders': medeAanbieders,
        'Media': media?.map((e) => e.toMap()).toList(),
        'Media-Foto': mediaFoto,
        'MobileURL': mobileUrl,
        'ObjectType': objectType,
        'ObjectTypeMetVoorvoegsel': objectTypeMetVoorvoegsel,
        'OpenHuizen': openHuizen,
        'PerceelOppervlakte': perceelOppervlakte,
        'PermanenteBewoning': permanenteBewoning,
        'Plaats': plaats,
        'Postcode': postcode,
        'Prijs': prijs?.toMap(),
        'PrijsGeformatteerd': prijsGeformatteerd,
        'Project': project,
        'ProjectNaam': projectNaam,
        'PublicatieDatum': publicatieDatum,
        'PublicatieStatus': publicatieStatus,
        'SchuurBerging': schuurBerging,
        'SchuurBergingIsolatie': schuurBergingIsolatie,
        'SchuurBergingVoorzieningen': schuurBergingVoorzieningen,
        'ScrambledId': scrambledId,
        'ServiceKosten': serviceKosten,
        'SoortAanbod': soortAanbod,
        'SoortDak': soortDak,
        'SoortGarage': soortGarage,
        'SoortParkeergelegenheid': soortParkeergelegenheid,
        'SoortPlaatsing': soortPlaatsing,
        'SoortWoning': soortWoning,
        'Titels': titels?.map((e) => e.toMap()).toList(),
        'ToonBezichtigingMaken': toonBezichtigingMaken,
        'ToonBrochureAanvraag': toonBrochureAanvraag,
        'ToonMakelaarWoningaanbod': toonMakelaarWoningaanbod,
        'ToonReageren': toonReageren,
        'TransactieAfmeldDatum': transactieAfmeldDatum,
        'TransactieMakelaarId': transactieMakelaarId,
        'TransactieMakelaarNaam': transactieMakelaarNaam,
        'TuinLigging': tuinLigging,
        'TypeProject': typeProject,
        'URL': url,
        'Veiling': veiling?.toMap(),
        'VerkoopStatus': verkoopStatus,
        'Verwarming': verwarming,
        'Video': video?.toMap(),
        'VolledigeOmschrijving': volledigeOmschrijving,
        'Voorzieningen': voorzieningen,
        'WGS84_X': wgs84X,
        'WGS84_Y': wgs84Y,
        'WarmWater': warmWater,
        'WoonOppervlakte': woonOppervlakte,
        'EersteHuurPrijs': eersteHuurPrijs,
        'EersteHuurPrijsLang': eersteHuurPrijsLang,
        'EersteKoopPrijs': eersteKoopPrijs,
        'EersteKoopPrijsLang': eersteKoopPrijsLang,
        'HuurPrijs': huurPrijs,
        'HuurPrijsLang': huurPrijsLang,
        'HuurPrijsTot': huurPrijsTot,
        'Huurprijs': huurprijs,
        'HuurprijsFormaat': huurprijsFormaat,
        'KoopPrijs': koopPrijs,
        'KoopPrijsLang': koopPrijsLang,
        'Koopprijs': koopprijs,
        'KoopprijsFormaat': koopprijsFormaat,
        'KoopprijsTot': koopprijsTot,
        'ShortURL': shortUrl,
        'Tuin': tuin,
        'VeilingGeformatteerd': veilingGeformatteerd,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [EstateDetail].
  factory EstateDetail.fromJson(String data) {
    return EstateDetail.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [EstateDetail] to a JSON string.
  String toJson() => json.encode(toMap());
}
