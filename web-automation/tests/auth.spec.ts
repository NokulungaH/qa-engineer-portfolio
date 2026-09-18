import { test } from '../fixtures/test';
import { users } from '../data/test-data';

test.describe('Authentication', () => {
  test('@smoke standard user can sign in', async ({ loginPage, inventoryPage }) => {
    await loginPage.goto();
    await loginPage.login(users.standard.username, users.standard.password);
    await inventoryPage.expectLoaded();
  });

  test('@regression locked user is prevented from signing in', async ({ loginPage }) => {
    await loginPage.goto();
    await loginPage.login(users.locked.username, users.locked.password);
    await loginPage.expectLoginError('Sorry, this user has been locked out');
  });

  test('@regression missing credentials are validated', async ({ loginPage }) => {
    await loginPage.goto();
    await loginPage.login('', '');
    await loginPage.expectLoginError('Username is required');
  });
});