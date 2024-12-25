# Objective-C Memory Management Bug

This repository demonstrates a common, subtle bug in Objective-C related to memory management using `retain`, `release`, and `autorelease`.  The bug occurs due to improper handling of memory in the `dealloc` method and can lead to memory leaks or crashes.

## Bug Description
The issue lies in how the `myString` property is managed.  Incorrect usage of `retain`, `release`, and `autorelease` can result in either memory leaks (if not released properly) or double-free crashes (if released more than once).

## Solution
The provided solution demonstrates correct memory management practices, using `copy` instead of `retain` to prevent this issue.  `copy` creates a new copy of the string, eliminating the need for manual release in the `dealloc` method because the object will release it's own copy when it is deallocated.

## How to Reproduce
1. Clone the repository.
2. Build and run the project in Xcode.
3. Observe the memory usage (using Instruments or similar tools) to detect the leak in the original code, and the absence of leaks when running the corrected code.

This example highlights the importance of careful memory management in Objective-C to prevent memory leaks and crashes.