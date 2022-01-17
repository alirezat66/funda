import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:funda_assignment/data/model/estate_detail/estate_detail.dart';

void main() {
  const String finalUri = 'test/data/model/estate_detail';
  group('state detail from json test', () {
    group('test sell one', () {
      final file = File('$finalUri/sell_one.json').readAsStringSync();
      final estate =
          EstateDetail.fromMap(jsonDecode(file) as Map<String, dynamic>);
      test('test address', () {
        expect(estate.address, isNotEmpty);
      });
      test('test bedrooms', () {
        expect(estate.numberOfBedRooms, equals(4));
      });
      test('test seeing parts', () {
        expect(estate.seeingDayParts!.length, equals(3));
      });
      test('test viewing days', () {
        expect(estate.viewDays!.length, equals(7));
      });
      test('test construction year', () {
        expect(estate.constructionYear, isNotEmpty);
      });
      test('test detail info promotionLabelType', () {
        expect(estate.detailInfo!.promotionLabelType, equals(1));
      });
      test('test detail info RibbonText', () {
        expect(estate.detailInfo!.ribbonText, null);
      });
      test('test detail info Tagline', () {
        expect(estate.detailInfo!.tagline, isNotEmpty);
      });
      test('test mainPhoto', () {
        expect(estate.mainPhoto, isNotEmpty);
      });
      test('test charecters size', () {
        expect(estate.characteristics!.length, equals(9));
      });
      test('test inner characters size', () {
        expect(estate.characteristics![0].characters!.length, equals(5));
      });
      test('test count of images', () {
        expect(estate.mediaPhotos!.length, equals(62));
      });
      test('test 360 images', () {
        expect(
            estate.media!
                .where((element) => element.categorie == 5)
                .toList()
                .length,
            equals(7));
      });
      test('test detail Address', () {
        expect(estate.detailAddress, equals("1031VC Amsterdam"));
      });
      test('test price value', () {
        expect(estate.price!.showingPrice, equals('\u{20B9} 900.000 k.k.'));
      });
      test('test full description', () {
        expect(estate.fullDescription, isNotEmpty);
      });
      group('video tests', () {
        test('video tumbnail existing', () {
          expect(estate.video!.imageUrl, isNotEmpty);
        });
        test('video size', () {
          expect(estate.video!.videos!.length, equals(3));
        });
        test('video url exist', () {
          expect(estate.video!.videos![0].url, isNotEmpty);
        });
      });
      group('test the location', () {
        test('test longitude', () {
          expect(estate.longitude, equals(4.90683));
        });
        test('test latitude', () {
          expect(estate.latitude, equals(52.38964));
        });
      });
      group('test agent info', () {
        test('agent id', () {
          expect(estate.agentId, equals(60981));
        });
        test('agent name', () {
          expect(estate.agentName, equals("MAKELAAR ALEX"));
        });
        test('agent phone', () {
          expect(estate.agentPhone, equals("06-51573895"));
        });
      });
    });
    group('test sell two', () {
      final file = File('$finalUri/sell_two.json').readAsStringSync();
      final estate =
          EstateDetail.fromMap(jsonDecode(file) as Map<String, dynamic>);
      test('test address', () {
        expect(estate.address, isNotEmpty);
      });
      test('test bedrooms', () {
        expect(estate.numberOfBedRooms, equals(4));
      });
      test('test seeing parts', () {
        expect(estate.seeingDayParts!.length, equals(3));
      });
      test('test viewing days', () {
        expect(estate.viewDays!.length, equals(7));
      });
      test('test construction year', () {
        expect(estate.constructionYear, isNotEmpty);
      });
      test('test detail info promotionLabelType', () {
        expect(estate.detailInfo!.promotionLabelType, equals(1));
      });
      test('test detail info RibbonText', () {
        expect(estate.detailInfo!.ribbonText, null);
      });
      test('test detail info Tagline', () {
        expect(estate.detailInfo!.tagline, isNotEmpty);
      });
      test('test mainPhoto', () {
        expect(estate.mainPhoto, isNotEmpty);
      });
      test('test charecters size', () {
        expect(estate.characteristics!.length, equals(10));
      });
      test('test inner characters size', () {
        expect(estate.characteristics![0].characters!.length, equals(5));
      });
      test('test count of images', () {
        expect(estate.mediaPhotos!.length, equals(29));
      });
      test('test 360 images',(){
        expect(
            estate.media!
                .where((element) => element.categorie == 5)
                .toList()
                .length,
            equals(5));
      });
      test('test detail Address', () {
        expect(estate.detailAddress, equals("3481AM Harmelen"));
      });
      test('test price value', () {
        expect(estate.price!.showingPrice, equals('\u{20B9} 470.000 k.k.'));
      });
      test('test full description', () {
        expect(estate.fullDescription, isNotEmpty);
      });
      group('video tests', () {
        test('video tumbnail existing', () {
          expect(estate.video!.imageUrl, isNotEmpty);
        });
        test('video size', () {
          expect(estate.video!.videos!.length, equals(2));
        });
        test('video url exist', () {
          expect(estate.video!.videos![0].url, isNotEmpty);
        });
      });
      group('test the location', () {
        test('test longitude', () {
          expect(estate.longitude, equals(4.96599054));
        });
        test('test latitude', () {
          expect(estate.latitude, equals(52.0854378));
        });
      });
      group('test agent info', () {
        test('agent id', () {
          expect(estate.agentId, equals(17381));
        });
        test('agent name', () {
          expect(estate.agentName, equals("Sijmons-Dolata"));
        });
        test('agent phone', () {
          expect(estate.agentPhone, equals("0348-442004"));
        });
      });
    });

    group('test sell three', () {
      final file = File('$finalUri/sell_three.json').readAsStringSync();
      final estate =
          EstateDetail.fromMap(jsonDecode(file) as Map<String, dynamic>);
      test('test address', () {
        expect(estate.address, isNotEmpty);
      });
      test('test bedrooms', () {
        expect(estate.numberOfBedRooms, equals(4));
      });
      test('test seeing parts', () {
        expect(estate.seeingDayParts!.length, equals(3));
      });
      test('test viewing days', () {
        expect(estate.viewDays!.length, equals(7));
      });
      test('test construction year', () {
        expect(estate.constructionYear, isNotEmpty);
      });
      test('test detail info promotionLabelType', () {
        expect(estate.detailInfo!.promotionLabelType, equals(0));
      });
      test('test detail info RibbonText', () {
        expect(estate.detailInfo!.ribbonText, null);
      });
      test('test detail info Tagline', () {
        expect(estate.detailInfo!.tagline, null);
      });
      test('test mainPhoto', () {
        expect(estate.mainPhoto, isNotEmpty);
      });
      test('test charecters size', () {
        expect(estate.characteristics!.length, equals(9));
      });
      test('test inner characters size', () {
        expect(estate.characteristics![0].characters!.length, equals(5));
      });
      test('test count of images', () {
        expect(estate.mediaPhotos!.length, equals(48));
      });
      test('test 360 images', () {
        expect(
            estate.media!
                .where((element) => element.categorie == 5)
                .toList()
                .length,
            equals(12));
      });
      test('test detail Address', () {
        expect(estate.detailAddress, equals("3171NB Poortugaal"));
      });
      test('test price value', () {
        expect(estate.price!.showingPrice, equals('\u{20B9} 348.000 k.k.'));
      });
      test('test full description', () {
        expect(estate.fullDescription, isNotEmpty);
      });
      group('video tests', () {
        test('video tumbnail existing', () {
          expect(estate.video!.imageUrl, isNotEmpty);
        });
        test('video size', () {
          expect(estate.video!.videos!.length, equals(3));
        });
        test('video url exist', () {
          expect(estate.video!.videos![0].url, isNotEmpty);
        });
      });
      group('test the location', () {
        test('test longitude', () {
          expect(estate.longitude, equals(4.40115));
        });
        test('test latitude', () {
          expect(estate.latitude, equals(51.8523521));
        });
      });
      group('test agent info', () {
        test('agent id', () {
          expect(estate.agentId, equals(60638));
        });
        test('agent name', () {
          expect(estate.agentName, equals("VBW Makelaars & Taxateurs"));
        });
        test('agent phone', () {
          expect(estate.agentPhone, equals("010-2954888"));
        });
      });
    });
    group('test sell four', () {
      final file = File('$finalUri/sell_four.json').readAsStringSync();
      final estate =
          EstateDetail.fromMap(jsonDecode(file) as Map<String, dynamic>);
      test('test address', () {
        expect(estate.address, isNotEmpty);
      });
      test('test bedrooms', () {
        expect(estate.numberOfBedRooms, equals(2));
      });
      test('test seeing parts', () {
        expect(estate.seeingDayParts!.length, equals(4));
      });
      test('test viewing days', () {
        expect(estate.viewDays!.length, equals(9));
      });
      test('test construction year', () {
        expect(estate.constructionYear, isNotEmpty);
      });
      test('test detail info promotionLabelType', () {
        expect(estate.detailInfo!.promotionLabelType, equals(0));
      });
      test('test detail info RibbonText', () {
        expect(estate.detailInfo!.ribbonText, null);
      });
      test('test detail info Tagline', () {
        expect(estate.detailInfo!.tagline, null);
      });
      test('test mainPhoto', () {
        expect(estate.mainPhoto, isNotEmpty);
      });
      test('test charecters size', () {
        expect(estate.characteristics!.length, equals(9));
      });
      test('test inner characters size', () {
        expect(estate.characteristics![0].characters!.length, equals(5));
      });
      test('test count of images', () {
        expect(estate.mediaPhotos!.length, equals(39));
      });
      test('test 360 images', () {
        expect(
            estate.media!
                .where((element) => element.categorie == 5)
                .toList()
                .length,
            equals(6));
      });
      test('test detail Address', () {
        expect(estate.detailAddress, equals("2316DN Leiden"));
      });
      test('test price value', () {
        expect(estate.price!.showingPrice, equals('\u{20B9} 825.000 k.k.'));
      });
      test('test full description', () {
        expect(estate.fullDescription, isNotEmpty);
      });
      group('video tests', () {
        test('video tumbnail existing', () {
          expect(estate.video!.imageUrl, isNotEmpty);
        });
        test('video size', () {
          expect(estate.video!.videos!.length, equals(3));
        });
        test('video url exist', () {
          expect(estate.video!.videos![0].url, isNotEmpty);
        });
      });
      group('test the location', () {
        test('test longitude', () {
          expect(estate.longitude, equals(4.49456024));
        });
        test('test latitude', () {
          expect(estate.latitude, equals(52.1662827));
        });
      });
      group('test agent info', () {
        test('agent id', () {
          expect(estate.agentId, equals(25028));
        });
        test('agent name', () {
          expect(estate.agentName, equals("Hypodomus Rijnbeek & Den Elsen"));
        });
        test('agent phone', () {
          expect(estate.agentPhone, equals("071-8200011"));
        });
      });
    });
    group('test rent one', () {
      final file = File('$finalUri/rent_one.json').readAsStringSync();
      final estate =
          EstateDetail.fromMap(jsonDecode(file) as Map<String, dynamic>);
      test('test address', () {
        expect(estate.address, isNotEmpty);
      });
      test('test bedrooms', () {
        expect(estate.numberOfBedRooms, equals(2));
      });
      test('test seeing parts', () {
        expect(estate.seeingDayParts!.length, equals(3));
      });
      test('test viewing days', () {
        expect(estate.viewDays!.length, equals(7));
      });
      test('test construction year', () {
        expect(estate.constructionYear, isNotEmpty);
      });
      test('test detail info promotionLabelType', () {
        expect(estate.detailInfo!.promotionLabelType, equals(0));
      });
      test('test detail info RibbonText', () {
        expect(estate.detailInfo!.ribbonText, null);
      });
      test('test detail info Tagline', () {
        expect(estate.detailInfo!.tagline, null);
      });
      test('test mainPhoto', () {
        expect(estate.mainPhoto, isNotEmpty);
      });
      test('test charecters size', () {
        expect(estate.characteristics!.length, equals(8));
      });
      test('test inner characters size', () {
        expect(estate.characteristics![0].characters!.length, equals(7));
      });
      test('test count of images', () {
        expect(estate.mediaPhotos!.length, equals(28));
      });
      test('test 360 images', () {
        expect(
            estate.media!
                .where((element) => element.categorie == 5)
                .toList()
                .length,
            equals(5));
      });
      test('test detail Address', () {
        expect(estate.detailAddress, equals("1059BR Amsterdam"));
      });
      test('test price value', () {
        expect(estate.price!.showingPrice, equals('\u{20B9} 2.500 /mnd'));
      });
      test('test full description', () {
        expect(estate.fullDescription, isNotEmpty);
      });
      group('video tests', () {
        test('video tumbnail existing', () {
          expect(estate.video!.imageUrl, isNotEmpty);
        });
        test('video size', () {
          expect(estate.video!.videos!.length, equals(2));
        });
        test('video url exist', () {
          expect(estate.video!.videos![0].url, isNotEmpty);
        });
      });
      group('test the location', () {
        test('test longitude', () {
          expect(estate.longitude, equals(4.847997));
        });
        test('test latitude', () {
          expect(estate.latitude, equals(52.3464546));
        });
      });
      group('test agent info', () {
        test('agent id', () {
          expect(estate.agentId, equals(24162));
        });
        test('agent name', () {
          expect(estate.agentName, equals("Hoen Makelaars"));
        });
        test('agent phone', () {
          expect(estate.agentPhone, equals("020-3054444"));
        });
      });
    });
  
  });
}
