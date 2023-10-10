import 'package:contact_list/core/data/model/contact_model.dart';

abstract class ContactService {
  Future<void> post(ContactModel contact);

  Future<List<ContactModel>> get(String userId);

  Future<void> put(ContactModel contact);

  Future<void> delete(String objectId);
}
