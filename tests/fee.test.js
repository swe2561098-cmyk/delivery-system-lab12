const test = require('node:test');
const assert = require('node:assert/strict');
const { calculateFee } = require('../src/fee');
test('0 км үед суурь үнэ 3000', () => assert.equal(calculateFee(0), 3000));
test('2 км хүргэлтийн үнэ 4000', () => assert.equal(calculateFee(2), 4000));
test('сөрөг зайг зөвшөөрөхгүй', () => assert.throws(() => calculateFee(-1)));
