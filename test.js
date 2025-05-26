const assert = require('assert');
const app = require('./index');

// Simple test example
assert.strictEqual(typeof app, 'function', 'App should be a function');
console.log('All tests passed!');