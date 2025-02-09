import { expect, test } from 'vitest'
import { sum } from './sum.js'

test('adds 1 + 2 to equal 3', () => {
  expect(sum(1, 2)).toBe(3)
})

test('adds 2 + 0 to equal 2', () => {
  expect(sum(2, 0)).toBe(2)
})