import 'package:dartnate/database/postgres_dartnate_database.dart';
import 'package:postgres/postgres.dart';

class DatabaseConnection {
  late PostgresDartnateDatabase _postgres;
  String? _connectionDriver;

  void setProperties(String server, int port, String dbName, String userName,
      String password, String connectionDriver) {
    _connectionDriver = connectionDriver;

    if (_connectionDriver == 'postgresql') {
      PostgreSQLConnection connection = PostgreSQLConnection(
        server,
        port,
        dbName,
        username: userName,
        password: password,
      );

      _postgres = PostgresDartnateDatabase();
      _postgres.connection = connection;
    }
  }

  Future<void> post(String sql, Map<String, dynamic>? map) async {
    if (_connectionDriver == 'postgresql') {
      await _postgres.query(sql, substitutionValues: map);
    }
  }

  Future<void> put(String sql, Map<String, dynamic>? map) async {
    if (_connectionDriver == 'postgresql') {
      await _postgres.query(sql, substitutionValues: map);
    }
  }

  Future<void> delete(String sql) async {
    if (_connectionDriver == 'postgresql') {
      await _postgres.query(sql);
    }
  }

  Future<List<Map<String, Map<String, dynamic>>>> findById(
      String query, Map<String, dynamic>? substitutionValues) async {
    return await _postgres.queryFind(query,
        substitutionValues: substitutionValues);
  }

  Future<List<Map<String, Map<String, dynamic>>>> findAll(
      String query, Map<String, dynamic>? substitutionValues) async {
    return await _postgres.queryFind(query,
        substitutionValues: substitutionValues);
  }
}
