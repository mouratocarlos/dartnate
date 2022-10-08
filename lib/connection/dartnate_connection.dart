import 'package:dartnate/config/dartnate_configuration.dart';
import 'package:dartnate/connection/database_connection.dart';

class DartnateConnection {
  late DartnateConfiguration _configuration;
  late DatabaseConnection _connection;

  DartnateConnection() {
    _configuration = DartnateConfiguration();
    _connection = DatabaseConnection();

    _connection.setProperties(
      _configuration.server,
      _configuration.port,
      _configuration.databaseName,
      _configuration.username,
      _configuration.password,
      _configuration.connectionDriver,
    );
  }

  Future<void> post(String sql, Map<String, dynamic>? map) async {
    await _connection.post(sql, map);
  }

  Future<void> put(String sql, Map<String, dynamic>? map) async {
    await _connection.put(sql, map);
  }

  Future<void> delete(String sql) async {
    await _connection.delete(sql);
  }

  Future<List<Map<String, Map<String, dynamic>>>> findAll(String query,
      {Map<String, dynamic>? substitutionValues}) async {
    return await _connection.findAll(query, substitutionValues);
  }
}
