/*:

 # Conceitos

 */
/*:
 ## What is a unit test?
  */
//: > *"A unit test is a function you write that tests something about your app. A good unit test is small. It tests just one thing in isolation. For example, if your app adds up the total amount of time your user spent doing something, you might write a test to check if this total is correct. Unit tests should be automated, and they should run fast. That way, you can run them right after you build your app to see if any code changes you introduced broke your app." - x-team.com*

//: > *"Unit tests are automated tests that run and validate a piece of code (known as the “unit”) to make sure it behaves as intended and meets its design.Unit tests have their own target in Xcode and are written using the XCTest framework. A subclass of XCTestCase contains test methods to run in which only the methods starting with “test” will be parsed by Xcode and available to run." - avanderlee.com*
/*:
## XCTest
 */
//: > *Use the XCTest framework to write unit tests for your Xcode projects that integrate seamlessly with Xcode's testing workflow. Tests assert that certain conditions are satisfied during code execution, and record test failures (with optional messages) if those conditions are not satisfied. Tests can also measure the performance of blocks of code to check for performance regressions, and can interact with an application's UI to validate user interaction flows. - Apple®*

import UIKit
import XCTest

/*:
 ### Boolean Assertions
 Test a condition that generates a true or false result.
  */
func XCTAssert(() -> Bool, () -> String, file: StaticString, line: UInt)
func XCTAssertTrue(() -> Bool, () -> String, file: StaticString, line: UInt)
func XCTAssertFalse(() -> Bool, () -> String, file: StaticString, line: UInt)

/*:
 ### Nil and Non-nil Assertions
 Check whether a test condition is nil or non-nil.
  */
func XCTAssertNil(() -> Any?, () -> String, file: StaticString, line: UInt)
func XCTAssertNotNil(() -> Any?, () -> String, file: StaticString, line: UInt)
func XCTUnwrap<T>(() -> T?, () -> String, file: StaticString, line: UInt) -> T

/*:
 ### Equality and Inequality Assertions
 Check whether two values are equal or unequal.
  */
func XCTAssertEqual<T>(() -> T, () -> T, () -> String, file: StaticString, line: UInt)
func XCTAssertNotEqual<T>(() -> T, () -> T, () -> String, file: StaticString, line: UInt)

/*:
 ### Comparable Value Assertions
 Compare two values to determine whether one is larger or smaller than the other.
  */
func XCTAssertGreaterThan<T>(() -> T, () -> T, () -> String, file: StaticString, line: UInt)
func XCTAssertGreaterThanOrEqual<T>(() -> T, () -> T, () -> String, file: StaticString, line: UInt)
func XCTAssertLessThanOrEqual<T>(() -> T, () -> T, () -> String, file: StaticString, line: UInt)
func XCTAssertLessThan<T>(() -> T, () -> T, () -> String, file: StaticString, line: UInt)

/*:
 ### Error Assertions
 Check whether a function call throws (or does not throw) an error.
  */
func XCTAssertThrowsError<T>(() -> T, () -> String, file: StaticString, line: UInt, (Error) -> Void)
func XCTAssertNoThrow<T>(() -> T, () -> String, file: StaticString, line: UInt)

/*:
 ### Failing Unconditionally
 Generate a failure immediately and unconditionally.
  */
func XCTFail(String, file: StaticString, line: UInt)

/*:
 ****
 [Previous](@previous) | [Next](@next)
 */
