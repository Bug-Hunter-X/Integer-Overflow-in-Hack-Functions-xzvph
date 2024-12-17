```hack
function foo(x: int): int {
  if (x > 2147483646) {
    throw new Exception("Integer overflow potential in foo");
  }
  return x + 1;
}

function bar(x: int): int {
  if (x > 1073741823) {
    throw new Exception("Integer overflow potential in bar");
  }
  return foo(x) * 2;
}

function baz(x: int): int {
  if (x > 1073741822) {
    throw new Exception("Integer overflow potential in baz");
  }
  return bar(x) + 3;
}

function main(): void {
  try {
    echo baz(5);
    echo baz(2147483646);
  } catch (Exception $e) {
    echo $e->getMessage();
  }
}
```