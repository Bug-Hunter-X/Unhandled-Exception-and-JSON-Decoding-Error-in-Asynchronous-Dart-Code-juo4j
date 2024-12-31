# Unhandled Exception and JSON Decoding Error in Asynchronous Dart Code

This repository demonstrates a common error in Dart asynchronous programming: improper exception handling and data processing within a `Future`.  The `bug.dart` file shows the flawed code, while `bugSolution.dart` provides a corrected version.

## Problem

The original code fails to properly handle potential errors during network requests and JSON decoding. It directly returns the response body without processing or error handling, leading to potential crashes or unexpected behavior.

## Solution

The solution implements robust error handling using `try-catch` blocks and processes the JSON response before returning any data.  It also includes meaningful error messages to improve debugging.