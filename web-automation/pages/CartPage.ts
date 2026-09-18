import { expect, Page } from '@playwright/test';

export class CartPage {
  constructor(private readonly page: Page) {}

  async expectProduct(name: string) {
    await expect(this.page.getByTestId('inventory-item').filter({ hasText: name })).toBeVisible();
  }

  async checkout() { await this.page.getByTestId('checkout').click(); }
}