var assert = require('assert');
var lib = require('../lib');

describe('lib', function() {
  it('adds two numbers', function() {
    assert.strictEqual(lib.add(1, 2), 3);
  })
})
