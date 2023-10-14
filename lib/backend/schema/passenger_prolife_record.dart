import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PassengerProlifeRecord extends FirestoreRecord {
  PassengerProlifeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "PassengerName" field.
  String? _passengerName;
  String get passengerName => _passengerName ?? '';
  bool hasPassengerName() => _passengerName != null;

  // "PhoneNumber" field.
  int? _phoneNumber;
  int get phoneNumber => _phoneNumber ?? 0;
  bool hasPhoneNumber() => _phoneNumber != null;

  // "Month" field.
  String? _month;
  String get month => _month ?? '';
  bool hasMonth() => _month != null;

  // "Origin" field.
  String? _origin;
  String get origin => _origin ?? '';
  bool hasOrigin() => _origin != null;

  // "Destination" field.
  String? _destination;
  String get destination => _destination ?? '';
  bool hasDestination() => _destination != null;

  void _initializeFields() {
    _passengerName = snapshotData['PassengerName'] as String?;
    _phoneNumber = castToType<int>(snapshotData['PhoneNumber']);
    _month = snapshotData['Month'] as String?;
    _origin = snapshotData['Origin'] as String?;
    _destination = snapshotData['Destination'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PassengerProlife');

  static Stream<PassengerProlifeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PassengerProlifeRecord.fromSnapshot(s));

  static Future<PassengerProlifeRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PassengerProlifeRecord.fromSnapshot(s));

  static PassengerProlifeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PassengerProlifeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PassengerProlifeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PassengerProlifeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PassengerProlifeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PassengerProlifeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPassengerProlifeRecordData({
  String? passengerName,
  int? phoneNumber,
  String? month,
  String? origin,
  String? destination,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'PassengerName': passengerName,
      'PhoneNumber': phoneNumber,
      'Month': month,
      'Origin': origin,
      'Destination': destination,
    }.withoutNulls,
  );

  return firestoreData;
}

class PassengerProlifeRecordDocumentEquality
    implements Equality<PassengerProlifeRecord> {
  const PassengerProlifeRecordDocumentEquality();

  @override
  bool equals(PassengerProlifeRecord? e1, PassengerProlifeRecord? e2) {
    return e1?.passengerName == e2?.passengerName &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.month == e2?.month &&
        e1?.origin == e2?.origin &&
        e1?.destination == e2?.destination;
  }

  @override
  int hash(PassengerProlifeRecord? e) => const ListEquality().hash(
      [e?.passengerName, e?.phoneNumber, e?.month, e?.origin, e?.destination]);

  @override
  bool isValidKey(Object? o) => o is PassengerProlifeRecord;
}
