import 'dart:io';
import 'package:yaml/yaml.dart';

class DartnateConfiguration {
  String? _server;
  int? _port;
  String? _databaseName;
  String? _username;
  String? _password;
  String? _connectionDriver;

  DartnateConfiguration() {
    try {
      File file = new File('dartnate_configuration.yaml');
      String yamlString = file.readAsStringSync();
      Map yaml = loadYaml(yamlString)['database_connection'];

      _server = yaml['server'];
      _port = yaml['port'];
      _databaseName = yaml['database_name'];
      _username = yaml['username'];
      _password = yaml['password'];
      _connectionDriver = yaml['connection_driver'];
    } catch (_) {
      new Exception('Could not connect to database');
    }
  }

  String get server {
    return _server!;
  }

  set server(String server) {
    _server = server;
  }

  int get port {
    return _port!;
  }

  set port(int port) {
    _port = port;
  }

  String get databaseName {
    return _databaseName!;
  }

  set databaseName(String databaseName) {
    _databaseName = databaseName;
  }

  String get username {
    return _username!;
  }

  set username(String username) {
    _username = username;
  }

  String get password {
    return _password!;
  }

  set password(String password) {
    _password = password;
  }

  String get connectionDriver {
    return _connectionDriver!;
  }

  set connectionDriver(String connectionDriver) {
    _connectionDriver = connectionDriver;
  }
}
