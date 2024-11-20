import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CropDetailsRecord extends FirestoreRecord {
  CropDetailsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "variety" field.
  String? _variety;
  String get variety => _variety ?? '';
  bool hasVariety() => _variety != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "quantity" field.
  double? _quantity;
  double get quantity => _quantity ?? 0.0;
  bool hasQuantity() => _quantity != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "croppic" field.
  List<String>? _croppic;
  List<String> get croppic => _croppic ?? const [];
  bool hasCroppic() => _croppic != null;

  // "harvestdate" field.
  DateTime? _harvestdate;
  DateTime? get harvestdate => _harvestdate;
  bool hasHarvestdate() => _harvestdate != null;

  // "farmingmethod" field.
  String? _farmingmethod;
  String get farmingmethod => _farmingmethod ?? '';
  bool hasFarmingmethod() => _farmingmethod != null;

  // "certificate" field.
  String? _certificate;
  String get certificate => _certificate ?? '';
  bool hasCertificate() => _certificate != null;

  // "farmadd" field.
  LatLng? _farmadd;
  LatLng? get farmadd => _farmadd;
  bool hasFarmadd() => _farmadd != null;

  // "uid" field.
  int? _uid;
  int get uid => _uid ?? 0;
  bool hasUid() => _uid != null;

  // "fname" field.
  String? _fname;
  String get fname => _fname ?? '';
  bool hasFname() => _fname != null;

  // "pnum" field.
  String? _pnum;
  String get pnum => _pnum ?? '';
  bool hasPnum() => _pnum != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "cname" field.
  String? _cname;
  String get cname => _cname ?? '';
  bool hasCname() => _cname != null;

  void _initializeFields() {
    _variety = snapshotData['variety'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _quantity = castToType<double>(snapshotData['quantity']);
    _location = snapshotData['location'] as String?;
    _country = snapshotData['country'] as String?;
    _desc = snapshotData['desc'] as String?;
    _croppic = getDataList(snapshotData['croppic']);
    _harvestdate = snapshotData['harvestdate'] as DateTime?;
    _farmingmethod = snapshotData['farmingmethod'] as String?;
    _certificate = snapshotData['certificate'] as String?;
    _farmadd = snapshotData['farmadd'] as LatLng?;
    _uid = castToType<int>(snapshotData['uid']);
    _fname = snapshotData['fname'] as String?;
    _pnum = snapshotData['pnum'] as String?;
    _email = snapshotData['email'] as String?;
    _cname = snapshotData['cname'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('crop_details');

  static Stream<CropDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CropDetailsRecord.fromSnapshot(s));

  static Future<CropDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CropDetailsRecord.fromSnapshot(s));

  static CropDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CropDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CropDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CropDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CropDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CropDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCropDetailsRecordData({
  String? variety,
  double? price,
  double? quantity,
  String? location,
  String? country,
  String? desc,
  DateTime? harvestdate,
  String? farmingmethod,
  String? certificate,
  LatLng? farmadd,
  int? uid,
  String? fname,
  String? pnum,
  String? email,
  String? cname,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'variety': variety,
      'price': price,
      'quantity': quantity,
      'location': location,
      'country': country,
      'desc': desc,
      'harvestdate': harvestdate,
      'farmingmethod': farmingmethod,
      'certificate': certificate,
      'farmadd': farmadd,
      'uid': uid,
      'fname': fname,
      'pnum': pnum,
      'email': email,
      'cname': cname,
    }.withoutNulls,
  );

  return firestoreData;
}

class CropDetailsRecordDocumentEquality implements Equality<CropDetailsRecord> {
  const CropDetailsRecordDocumentEquality();

  @override
  bool equals(CropDetailsRecord? e1, CropDetailsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.variety == e2?.variety &&
        e1?.price == e2?.price &&
        e1?.quantity == e2?.quantity &&
        e1?.location == e2?.location &&
        e1?.country == e2?.country &&
        e1?.desc == e2?.desc &&
        listEquality.equals(e1?.croppic, e2?.croppic) &&
        e1?.harvestdate == e2?.harvestdate &&
        e1?.farmingmethod == e2?.farmingmethod &&
        e1?.certificate == e2?.certificate &&
        e1?.farmadd == e2?.farmadd &&
        e1?.uid == e2?.uid &&
        e1?.fname == e2?.fname &&
        e1?.pnum == e2?.pnum &&
        e1?.email == e2?.email &&
        e1?.cname == e2?.cname;
  }

  @override
  int hash(CropDetailsRecord? e) => const ListEquality().hash([
        e?.variety,
        e?.price,
        e?.quantity,
        e?.location,
        e?.country,
        e?.desc,
        e?.croppic,
        e?.harvestdate,
        e?.farmingmethod,
        e?.certificate,
        e?.farmadd,
        e?.uid,
        e?.fname,
        e?.pnum,
        e?.email,
        e?.cname
      ]);

  @override
  bool isValidKey(Object? o) => o is CropDetailsRecord;
}