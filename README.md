# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code and how to properly handle exceptions during network requests.

The `bug.dart` file contains code with insufficient error handling. The `bugSolution.dart` file provides a corrected version with improved error handling.

## Problem

The original code lacks comprehensive exception handling.  Exceptions occurring during network requests may not be properly caught and handled, potentially leading to crashes or unexpected behavior. 

## Solution

The solution utilizes a `try-catch` block to handle exceptions during the `http.get` request. It checks the response status code and throws a custom exception if the request fails.  The `rethrow` statement allows higher-level functions to handle the exception appropriately. 

This comprehensive approach prevents silent failures and provides more robust error handling.