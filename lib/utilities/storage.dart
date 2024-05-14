import 'package:ambica/utilities/imports.dart';
import 'package:get_storage/get_storage.dart';

class Storage {
  static final _box = GetStorage();
  static void setMemberType({required String memberType}) =>
      _box.write(StorageKeys.memberType, memberType);
  static String getMemberType() => _box.read(StorageKeys.memberType) ?? AppStrings.committee_member;
}

class StorageKeys {
  static const memberType = "MemberType";
}
