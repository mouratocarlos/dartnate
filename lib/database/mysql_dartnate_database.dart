import 'package:dartnate/database/base_dartnate_database.dart';
// import 'package:mysql1/mysql1.dart';

class MySqlDartnateDatabase extends BaseDartnateDatabase {
//   late MySqlConnection _conn;

//   Future<void> setProperties(String server, int port, String dbName,
//       String userName, String password) async {
//     var conn = ConnectionSettings(
//       host: server,
//       port: port,
//       db: dbName,
//       user: userName,
//       password: password,
//     );

//     _conn = await MySqlConnection.connect(conn);
//   }

//   Future<PostgreSQLResult> query(String query,
//       {Map<String, dynamic>? substitutionValues}) async {
//     return await _conn.queryMulti(
//       query,
//       substitutionValues,
//     );
//   }

//   Future<List<Map<String, Map<String, dynamic>>>> queryFind(String query,
//       {Map<String, dynamic>? substitutionValues}) async {
//     return await _conn.mappedResultsQuery(
//       query,
//       substitutionValues: substitutionValues,
//     );
//   }
}
