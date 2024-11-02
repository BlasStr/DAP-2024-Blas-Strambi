class LogIn {
  String user;
  String password;

  LogIn({
    required this.user,
    required this.password,
  });
}

List<LogIn> logInList = [
  LogIn(user: 'Blas', password: '123'),
  LogIn(user: 'Rocco', password: '456'),
  LogIn(user: 'Luca', password: '789'),
];
