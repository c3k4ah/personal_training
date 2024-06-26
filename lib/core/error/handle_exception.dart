import 'exception.dart';
import 'failure.dart';

Failure handleException(Exception e) {
  if (e is CacheException) {
    return const CacheFailure();
  }
  if (e is ServerException) {
    return ServerFailure(info: e.message);
  }
  if (e is ExpiredSessionException) {
    return const ExpiredSessionFailure();
  }
  if (e is TypeErrorException) {
    return TypeErrorFailure(info: e.message);
  }
  return const ServerFailure(info: 'Erreur dû au serveur');
}
