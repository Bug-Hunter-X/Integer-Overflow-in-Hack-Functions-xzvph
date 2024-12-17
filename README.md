# Integer Overflow in Hack

This repository demonstrates a potential integer overflow issue in Hack code.  The `baz` function, through nested calls to `foo` and `bar`, could produce unexpected results if given a sufficiently large integer input.  The solution offers a potential mitigation strategy.

## Setup

The Hack code is contained in `bug.hack`.  The solution is provided in `bugSolution.hack`.

## How to Run

To run the code and observe the issue:

1. Install Hack compiler and HHVM.
2. Compile and run the code with `hhvm bug.hack`.