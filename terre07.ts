'use strict'

// Displays the number of characters
// in a string passed as an argument.
// Langage : Typescript
// Exec Command in Shell : npx ts-node terre07.ts "test-argument-007"

const myArgs = process.argv[2];

if (process.argv.length === 2) {
  console.error('Expected at least one string argument!');
  process.exit(1);
}

console.log(`Argument : '${myArgs}'`, `/ Number of Characters : ${myArgs.length}`);
