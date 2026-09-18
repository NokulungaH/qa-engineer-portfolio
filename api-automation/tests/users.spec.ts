import { test, expect } from '../fixtures/test';

test.describe('Users API', () => {
  test('@regression user resource contains nested contact and company data', async ({ api }) => {
    const response = await api.get('/users/1');
    await api.expectJson(response, 200);

    const body = await response.json();
    expect(body).toEqual(expect.objectContaining({
      id: 1,
      name: expect.any(String),
      email: expect.stringMatching(/@/),
      address: expect.objectContaining({
        city: expect.any(String),
        geo: expect.objectContaining({
          lat: expect.any(String),
          lng: expect.any(String)
        })
      }),
      company: expect.objectContaining({
        name: expect.any(String)
      })
    }));
  });

  test('@regression posts can be filtered by userId', async ({ api }) => {
    const response = await api.get('/posts?userId=1');
    await api.expectJson(response, 200);

    const body = await response.json();
    expect(body.length).toBeGreaterThan(0);
    for (const post of body) expect(post.userId).toBe(1);
  });
});