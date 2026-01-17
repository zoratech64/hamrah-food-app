import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ErrorHandler {
  ErrorHandler();

  Future<T> safeExecute<T>(
    String method, {
    required Future<T> Function() execute,
    T? returnValue,
  }) async {
    try {
      return await execute();
    } on AuthException catch (error, stackTrace) {
      debugPrint('Error: $error\nStack trace: $stackTrace');

      if (returnValue != null) {
        return returnValue;
      }

      switch (error.message.toLowerCase()) {
        case 'invalid login credentials':
          throw 'Email or password is incorrect!'; // Tr
        default:
          throw 'Something went wrong! Please try again.'; // Tr
      }
    } on PostgrestException catch (error, stackTrace) {
      debugPrint('Error: $error\nStack trace: $stackTrace');

      if (returnValue != null) {
        return returnValue;
      }

      throw 'Something went wrong! Please try again.'; // Tr
    } on SocketException catch (error, stackTrace) {
      debugPrint('Error: $error\nStack trace: $stackTrace');

      if (returnValue != null) {
        return returnValue;
      }

      throw 'No internet connection! Please try again.'; // Tr
    } on Exception catch (error, stackTrace) {
      debugPrint('Error: $error\nStack trace: $stackTrace');

      if (returnValue != null) {
        return returnValue;
      }

      throw error.toString(); // Tr
    }
  }
}
