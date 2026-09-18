import { test } from '../fixtures/test';
import { checkoutCustomer, users } from '../data/test-data';

test('@smoke user can complete a purchase', async ({ loginPage, inventoryPage, cartPage, checkoutPage }) => {
  await loginPage.goto();
  await loginPage.login(users.standard.username, users.standard.password);
  await inventoryPage.expectLoaded();

  await inventoryPage.addProduct('sauce-labs-backpack');
  await inventoryPage.openCart();
  await cartPage.expectProduct('Sauce Labs Backpack');
  await cartPage.checkout();

  await checkoutPage.enterCustomer(
    checkoutCustomer.firstName,
    checkoutCustomer.lastName,
    checkoutCustomer.postalCode
  );
  await checkoutPage.finish();
  await checkoutPage.expectComplete();
});