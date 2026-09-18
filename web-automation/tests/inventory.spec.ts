import { test, expect } from '../fixtures/test';
import { users } from '../data/test-data';

test.beforeEach(async ({ loginPage, inventoryPage }) => {
  await loginPage.goto();
  await loginPage.login(users.standard.username, users.standard.password);
  await inventoryPage.expectLoaded();
});

test('@regression products can be sorted price low to high', async ({ inventoryPage }) => {
  await inventoryPage.sortBy('lohi');
  const prices = await inventoryPage.productPrices();
  expect(prices).toEqual([...prices].sort((a, b) => a - b));
});