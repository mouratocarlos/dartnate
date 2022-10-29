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
    File file;
    Map yaml;

    if (File('dartnate_configuration.yaml').existsSync()) {
      file = new File('dartnate_configuration.yaml');
    } else {
      throw Exception("Could not find file 'dartnate_configuration.yaml'");
    }

    String yamlString = file.readAsStringSync();

    try {
      yaml = loadYaml(yamlString)['database_connection'];
    } catch (_) {
      throw Exception('Could not connect to database');
    }

    if (yaml['server'] == null ||
        yaml['port'] == null ||
        yaml['database_name'] == null ||
        yaml['username'] == null ||
        yaml['password'] == null ||
        yaml['connection_driver'] == null) {
      throw Exception('Could not connect to database');
    }

    _server = yaml['server'];
    _port = yaml['port'];
    _databaseName = yaml['database_name'];
    _username = yaml['username'];
    _password = yaml['password'];
    _connectionDriver = yaml['connection_driver'];
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
