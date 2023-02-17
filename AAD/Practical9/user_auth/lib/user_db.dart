class UserDb {
  final Map<String, String> _users = {
    'student': 'password123',
    'mvlu': 'password456',
    'system': 'admin'
  };

  bool authenticate(String email, String password) {
    if (_users.containsKey(email) && _users[email] == password) {
      return true;
    }
    return false;
  }
}
