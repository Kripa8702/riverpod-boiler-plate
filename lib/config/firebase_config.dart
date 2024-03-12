//Replace with your Firebase configuration
class FirebaseConfig {
  final String apiKey = 'AIzaSyD-9tSrZ0w3Yz3t3J2Y3z3t3J2Y3z3t3J2';
  final String authDomain = 'getx-boiler-plate.firebaseapp.com';
  final String databaseURL = 'https://getx-boiler-plate.firebaseio.com';
  final String projectId = 'getx-boiler-plate';
  final String storageBucket = 'getx-boiler-plate.appspot.com';
  final String messagingSenderId = '123456789';
  final String appId = '1:123456789:web:123456789';
  final String measurementId = 'G-123456789';

  Map<String, String> get firebaseConfig => {
        'apiKey': apiKey,
        'authDomain': authDomain,
        'databaseURL': databaseURL,
        'projectId': projectId,
        'storageBucket': storageBucket,
        'messagingSenderId': messagingSenderId,
        'appId': appId,
        'measurementId': measurementId
      };
}
