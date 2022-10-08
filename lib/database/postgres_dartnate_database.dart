import 'package:dartnate/database/base_dartnate_database.dart';
import 'package:postgres/postgres.dart';

class PostgresDartnateDatabase extends BaseDartnateDatabase {
  late PostgreSQLConnection _conn;

  set connection(PostgreSQLConnection connection) {
    _conn = connection;
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
