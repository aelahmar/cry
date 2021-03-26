
class Application {
  String? baseUrl;
  int? connectTimeout;
  int? receiveTimeout;


  Application({
    this.baseUrl,
    this.connectTimeout,
    this.receiveTimeout,
  });

  Application copyWith({
    String? baseUrl,
    int? connectTimeout,
    int? receiveTimeout,
  }) {
    return new Application(
      baseUrl: baseUrl ?? this.baseUrl,
      connectTimeout: connectTimeout ?? this.connectTimeout,
      receiveTimeout: receiveTimeout ?? this.receiveTimeout,
    );
  }

  @override
  String toString() {
    return 'Application{baseUrl: $baseUrl, connectTimeout: $connectTimeout, receiveTimeout: $receiveTimeout}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Application && runtimeType == other.runtimeType && baseUrl == other.baseUrl && connectTimeout == other.connectTimeout && receiveTimeout == other.receiveTimeout);

  @override
  int get hashCode => baseUrl.hashCode ^ connectTimeout.hashCode ^ receiveTimeout.hashCode;

  factory Application.fromMap(Map<String, dynamic> map) {
    return new Application(
      baseUrl: map['baseUrl'] as String,
      connectTimeout: map['connectTimeout'] as int,
      receiveTimeout: map['receiveTimeout'] as int,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'baseUrl': this.baseUrl,
      'connectTimeout': this.connectTimeout,
      'receiveTimeout': this.receiveTimeout,
    } as Map<String, dynamic>;
  }

//</editor-fold>

}