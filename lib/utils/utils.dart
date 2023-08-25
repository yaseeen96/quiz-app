// ignore_for_file: a_print

import 'dart:developer' as developer;

// Blue text
logInfo(String msg) {
  developer.log('\x1B[34m$msg\x1B[0m');
}

// Green text
logSuccess(String msg) {
  developer.log('\x1B[32m$msg\x1B[0m');
}

// Yellow text
logWarning(String msg) {
  developer.log('\x1B[33m$msg\x1B[0m');
}

// Red text
logError(String msg) {
  developer.log('\x1B[31m$msg\x1B[0m');
}
