import 'package:dartnate/config/postgres/postgres_connection.dart';

class DartnateConfiguration {
  late PostgresConnection _conn;

  DartnateConfiguration(String server, int port, String dbName, String password,
      String userName, String jdbc) {
    _conn = PostgresConnection();
    _conn.setProperties(server, port, dbName, userName, password);
  }

  PostgresConnection get conn {
    return _conn;
  }
}
