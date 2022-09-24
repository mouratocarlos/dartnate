import 'package:postgres/postgres.dart';

class PostgresConnection {
  late final _conn;

  void setProperties(String server, int port, String dbName, String userName,
      String password) {
    _conn = PostgreSQLConnection(
      server,
      port,
      dbName,
      username: userName,
      password: password,
    );
  }

  Future<PostgreSQLResult> query(String query,
      {Map<String, dynamic>? substitutionValues}) async {
    await _conn.open();
    return await _conn.query(
      query,
      substitutionValues: substitutionValues,
    );
  }

  Future<List<Map<String, Map<String, dynamic>>>> queryFind(String query,
      {Map<String, dynamic>? substitutionValues}) async {
    await _conn.open();
    return await _conn.mappedResultsQuery(
      query,
      substitutionValues: substitutionValues,
    );
  }
}
