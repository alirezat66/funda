import 'dart:convert';

import 'seeing_day_parts.dart';
import 'view_days.dart';
import 'detail_info.dart';
import 'energielabel.dart';
import 'characters.dart';
import 'kenmerken_kort.dart';
import 'media.dart';
import 'price.dart';
import 'titel.dart';
import 'veiling.dart';
import 'video.dart';

enum EstateTypes { rent, buy }

class EstateDetail {
  String? aangebodenSinds;
  //aangebodenSindsTekst
  String? offeredSinceText;
  //aantalBadkamers
  int? numberOfBathrooms;
  //aantalKamers
  int? numberOfRooms;
  dynamic aantalSlaapkamers;
  String? aantalWoonlagen;
  int get numberOfBedRooms {
    return numberOfRooms! - numberOfBathrooms!;
  }

  String? aanvaarding;
  //adres
  String? address;
  dynamic afgekochtDatum;
  String? balkonDakterras;
  dynamic bedrijfsruimteCombinatieObject;
  //bezichtingDagdelen
  List<SeeingDayPart>? seeingDayParts;
  //viewDays
  List<ViewDays>? viewDays;
  dynamic bijdrageVve;
  dynamic bijzonderheden;
  //bouwjaar
  String? constructionYear;
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
  String? garage;
  dynamic garageIsolatie;
  dynamic garageVoorzieningen;
  dynamic gelegenOp;
  String? gewijzigdDatum;
  String? mainPhoto;
  String? mainPhotoSource;
  //HoofdTuinType
  String? gardenType;
  int? id;
  bool? hasBasePlacement;
  bool? hasPhotos;
  bool? hasIpix;
  bool? indOpenhuizenTopper;
  bool? indPdf;
  bool? hasMap;
  bool? indTop;
  bool? indVeilingProduct;
  bool? hasVideo;
  int? inhoud;
  String? internalId;
  bool? isIngetrokken;
  bool? isVerhuurd;
  bool? isVerkocht;
  String? isolatie;
  List<Feature>? featires;
  KenmerkenKort? kenmerkenKort;
  dynamic kenmerkenTitel;
  String? locationTitle;
  String? mliUrl;
  //Makelaar
  String? agentName;
  //MakelaarId
  int? agentId;
  //MakelaarTelefoon
  String? agentPhone;
  List<dynamic>? medeAanbieders;
  List<Media>? media;
  List<Media> get photoMedia {
    final list = media!.where((element) => element.categorie == 1).toList();
    return list;
  }

  List<Media> get panoramaImages {
    final list = media!.where((element) => element.categorie == 5).toList();
    return list;
  }

  List<dynamic>? mediaPhotos;
  String? mobileUrl;
  String? objectType;
  String? objectTypeMetVoorvoegsel;
  List<dynamic>? openHuizen;
  //perceelOppervlakte
  int? plotArea;
  String? permanenteBewoning;
  //plaats
  String? place;
  String? postcode;
  String get detailAddress {
    return '$postcode $place';
  }

  Price? price;
  String? formatedPrice;
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
  //volledigeOmschrijving
  String? fullDescription;
  String? voorzieningen;
  //wgs84X
  double? longitude;
  //wgs84Y
  double? latitude;
  String? warmWater;
  //woonOppervlakte
  int? resedentialArea;
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
    this.offeredSinceText,
    this.numberOfBathrooms,
    this.numberOfRooms,
    this.aantalSlaapkamers,
    this.aantalWoonlagen,
    this.aanvaarding,
    this.address,
    this.afgekochtDatum,
    this.balkonDakterras,
    this.bedrijfsruimteCombinatieObject,
    this.seeingDayParts,
    this.viewDays,
    this.bijdrageVve,
    this.bijzonderheden,
    this.constructionYear,
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
    this.mainPhoto,
    this.mainPhotoSource,
    this.gardenType,
    this.id,
    this.hasBasePlacement,
    this.hasPhotos,
    this.hasIpix,
    this.indOpenhuizenTopper,
    this.indPdf,
    this.hasMap,
    this.indTop,
    this.indVeilingProduct,
    this.hasVideo,
    this.inhoud,
    this.internalId,
    this.isIngetrokken,
    this.isVerhuurd,
    this.isVerkocht,
    this.isolatie,
    this.featires,
    this.kenmerkenKort,
    this.kenmerkenTitel,
    this.locationTitle,
    this.mliUrl,
    this.agentName,
    this.agentId,
    this.agentPhone,
    this.medeAanbieders,
    this.media,
    this.mediaPhotos,
    this.mobileUrl,
    this.objectType,
    this.objectTypeMetVoorvoegsel,
    this.openHuizen,
    this.plotArea,
    this.permanenteBewoning,
    this.place,
    this.postcode,
    this.price,
    this.formatedPrice,
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
    this.fullDescription,
    this.voorzieningen,
    this.longitude,
    this.latitude,
    this.warmWater,
    this.resedentialArea,
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
        offeredSinceText: data['AangebodenSindsTekst'] as String?,
        numberOfBathrooms: data['AantalBadkamers'] as int?,
        numberOfRooms: data['AantalKamers'] as int?,
        aantalSlaapkamers: data['AantalSlaapkamers'] as dynamic,
        aantalWoonlagen: data['AantalWoonlagen'] as String?,
        aanvaarding: data['Aanvaarding'] as String?,
        address: data['Adres'] as String?,
        afgekochtDatum: data['AfgekochtDatum'] as dynamic,
        balkonDakterras: data['BalkonDakterras'] as String?,
        bedrijfsruimteCombinatieObject:
            data['BedrijfsruimteCombinatieObject'] as dynamic,
        seeingDayParts: (data['BezichtingDagdelen'] as List<dynamic>?)
            ?.map((e) => SeeingDayPart.fromMap(e as Map<String, dynamic>))
            .toList(),
        viewDays: (data['BezichtingDagen'] as List<dynamic>?)
            ?.map((e) => ViewDays.fromMap(e as Map<String, dynamic>))
            .toList(),
        bijdrageVve: data['BijdrageVVE'] as dynamic,
        bijzonderheden: data['Bijzonderheden'] as dynamic,
        constructionYear: data['Bouwjaar'] as String?,
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
        garage: data['Garage'] as String?,
        garageIsolatie: data['GarageIsolatie'] as dynamic,
        garageVoorzieningen: data['GarageVoorzieningen'] as dynamic,
        gelegenOp: data['GelegenOp'] as dynamic,
        gewijzigdDatum: data['GewijzigdDatum'] as String?,
        mainPhoto: data['HoofdFoto'] as String?,
        mainPhotoSource: data['HoofdFotoSecure'] as String?,
        gardenType: data['HoofdTuinType'] as String?,
        id: data['Id'] as int?,
        hasBasePlacement: data['IndBasisPlaatsing'] as bool?,
        hasPhotos: data['IndFotos'] as bool?,
        hasIpix: data['IndIpix'] as bool?,
        indOpenhuizenTopper: data['IndOpenhuizenTopper'] as bool?,
        indPdf: data['IndPDF'] as bool?,
        hasMap: data['IndPlattegrond'] as bool?,
        indTop: data['IndTop'] as bool?,
        indVeilingProduct: data['IndVeilingProduct'] as bool?,
        hasVideo: data['IndVideo'] as bool?,
        inhoud: data['Inhoud'] as int?,
        internalId: data['InternalId'] as String?,
        isIngetrokken: data['IsIngetrokken'] as bool?,
        isVerhuurd: data['IsVerhuurd'] as bool?,
        isVerkocht: data['IsVerkocht'] as bool?,
        isolatie: data['Isolatie'] as String?,
        featires: (data['Kenmerken'] as List<dynamic>?)
            ?.map((e) => Feature.fromMap(e as Map<String, dynamic>))
            .toList(),
        kenmerkenKort: data['KenmerkenKort'] == null
            ? null
            : KenmerkenKort.fromMap(
                data['KenmerkenKort'] as Map<String, dynamic>),
        kenmerkenTitel: data['KenmerkenTitel'] as dynamic,
        locationTitle: data['Ligging'] as String?,
        mliUrl: data['MLIUrl'] as String?,
        agentName: data['Makelaar'] as String?,
        agentId: data['MakelaarId'] as int?,
        agentPhone: data['MakelaarTelefoon'] as String?,
        medeAanbieders: data['MedeAanbieders'] as List<dynamic>?,
        media: (data['Media'] as List<dynamic>?)
            ?.map((e) => Media.fromMap(e as Map<String, dynamic>))
            .toList(),
        mediaPhotos: data['Media-Foto'] as List<dynamic>?,
        mobileUrl: data['MobileURL'] as String?,
        objectType: data['ObjectType'] as String?,
        objectTypeMetVoorvoegsel: data['ObjectTypeMetVoorvoegsel'] as String?,
        openHuizen: data['OpenHuizen'] as List<dynamic>?,
        plotArea: data['PerceelOppervlakte'] as int?,
        permanenteBewoning: data['PermanenteBewoning'] as String?,
        place: data['Plaats'] as String?,
        postcode: data['Postcode'] as String?,
        price: data['Prijs'] == null
            ? null
            : Price.fromMap(data['Prijs'] as Map<String, dynamic>),
        formatedPrice: data['PrijsGeformatteerd'] as String?,
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
        fullDescription: data['VolledigeOmschrijving'] as String?,
        voorzieningen: data['Voorzieningen'] as String?,
        longitude: (data['WGS84_X'] as num?)?.toDouble(),
        latitude: (data['WGS84_Y'] as num?)?.toDouble(),
        warmWater: data['WarmWater'] as String?,
        resedentialArea: data['WoonOppervlakte'] as int?,
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
        'AangebodenSindsTekst': offeredSinceText,
        'AantalBadkamers': numberOfBathrooms,
        'AantalKamers': numberOfRooms,
        'AantalSlaapkamers': aantalSlaapkamers,
        'AantalWoonlagen': aantalWoonlagen,
        'Aanvaarding': aanvaarding,
        'Adres': address,
        'AfgekochtDatum': afgekochtDatum,
        'BalkonDakterras': balkonDakterras,
        'BedrijfsruimteCombinatieObject': bedrijfsruimteCombinatieObject,
        'BezichtingDagdelen': seeingDayParts?.map((e) => e.toMap()).toList(),
        'BezichtingDagen': viewDays?.map((e) => e.toMap()).toList(),
        'BijdrageVVE': bijdrageVve,
        'Bijzonderheden': bijzonderheden,
        'Bouwjaar': constructionYear,
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
        'HoofdFoto': mainPhoto,
        'HoofdFotoSecure': mainPhotoSource,
        'HoofdTuinType': gardenType,
        'Id': id,
        'IndBasisPlaatsing': hasBasePlacement,
        'IndFotos': hasPhotos,
        'IndIpix': hasIpix,
        'IndOpenhuizenTopper': indOpenhuizenTopper,
        'IndPDF': indPdf,
        'IndPlattegrond': hasMap,
        'IndTop': indTop,
        'IndVeilingProduct': indVeilingProduct,
        'IndVideo': hasVideo,
        'Inhoud': inhoud,
        'InternalId': internalId,
        'IsIngetrokken': isIngetrokken,
        'IsVerhuurd': isVerhuurd,
        'IsVerkocht': isVerkocht,
        'Isolatie': isolatie,
        'Kenmerken': featires?.map((e) => e.toMap()).toList(),
        'KenmerkenKort': kenmerkenKort?.toMap(),
        'KenmerkenTitel': kenmerkenTitel,
        'Ligging': locationTitle,
        'MLIUrl': mliUrl,
        'Makelaar': agentName,
        'MakelaarId': agentId,
        'MakelaarTelefoon': agentPhone,
        'MedeAanbieders': medeAanbieders,
        'Media': media?.map((e) => e.toMap()).toList(),
        'Media-Foto': mediaPhotos,
        'MobileURL': mobileUrl,
        'ObjectType': objectType,
        'ObjectTypeMetVoorvoegsel': objectTypeMetVoorvoegsel,
        'OpenHuizen': openHuizen,
        'PerceelOppervlakte': plotArea,
        'PermanenteBewoning': permanenteBewoning,
        'Plaats': place,
        'Postcode': postcode,
        'Prijs': price?.toMap(),
        'PrijsGeformatteerd': formatedPrice,
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
        'VolledigeOmschrijving': fullDescription,
        'Voorzieningen': voorzieningen,
        'WGS84_X': longitude,
        'WGS84_Y': latitude,
        'WarmWater': warmWater,
        'WoonOppervlakte': resedentialArea,
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
