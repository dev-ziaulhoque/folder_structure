import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static late SharedPreferences _prefs;

  // Initialize SharedPreferences (call once at app startup)
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Save data
  static Future<void> saveData({required String key, required dynamic data}) async {
    if (data is String) {
      await _prefs.setString(key, data);
    } else if (data is int) {
      await _prefs.setInt(key, data);
    } else if (data is double) {
      await _prefs.setDouble(key, data);
    } else if (data is bool) {
      await _prefs.setBool(key, data);
    } else if (data is List<String>) {
      await _prefs.setStringList(key, data);
    } else {
      // For other types, convert to JSON string
      await _prefs.setString(key, data.toString());
    }
  }

  // Get data
  static dynamic getData({required String key}) {
    return _prefs.get(key);
  }

  // Remove specific data
  static Future<void> removeData({required String key}) async {
    await _prefs.remove(key);
  }

  // Remove all data
  static Future<void> removeAllData() async {
    await _prefs.clear();
  }
}

/*

///===============================================
/// Usage
///===============================================

// Save
await LocalStorage.saveData(key: 'name', data: 'Rahim');
await LocalStorage.saveData(key: 'age', data: 25);
await LocalStorage.saveData(key: 'isPremium', data: true);
await LocalStorage.saveData(key: 'tags', data: ['vip', 'admin']);

// Get
String? name = LocalStorage.getData(key: 'name');
int? age = LocalStorage.getData(key: 'age');
bool? isPremium = LocalStorage.getData(key: 'isPremium');
List<String>? tags = LocalStorage.getData(key: 'tags');

// Remove
await LocalStorage.removeData(key: 'name');
await LocalStorage.removeAllData();



///===============================================
/// json object save
///===============================================

// Save Map or Object
await LocalStorage.saveData(key: 'user', data: jsonEncode({'name': 'Karim', 'age': 30}));

// Get and decode
String? jsonString = LocalStorage.getData(key: 'user');
if (jsonString != null) {
  Map<String, dynamic> user = jsonDecode(jsonString);
}

 */
