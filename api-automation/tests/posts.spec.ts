import { test, expect } from '../fixtures/test';
import { updatedPost, validPost } from '../data/test-data';

test.describe('Posts API', () => {
  test('@smoke GET returns an existing post with expected contract', async ({ api }) => {
    const response = await api.get('/posts/1');
    await api.expectJson(response, 200);

    const body = await response.json();
    expect(body).toEqual(expect.objectContaining({
      id: 1,
      userId: expect.any(Number),
      title: expect.any(String),
      body: expect.any(String)
    }));
  });

  test('@regression GET collection returns populated post resources', async ({ api }) => {
    const response = await api.get('/posts');
    await api.expectJson(response, 200);

    const body = await response.json();
    expect(Array.isArray(body)).toBeTruthy();
    expect(body.length).toBeGreaterThan(0);
    expect(body[0]).toEqual(expect.objectContaining({
      id: expect.any(Number),
      userId: expect.any(Number),
      title: expect.any(String),
      body: expect.any(String)
    }));
  });

  test('@smoke POST accepts a valid new post', async ({ api }) => {
    const response = await api.post('/posts', validPost);
    await api.expectJson(response, 201);

    const body = await response.json();
    expect(body).toEqual(expect.objectContaining({
      ...validPost,
      id: expect.any(Number)
    }));
  });

  test('@regression PUT returns the updated representation', async ({ api }) => {
    const response = await api.put('/posts/1', updatedPost);
    await api.expectJson(response, 200);

    const body = await response.json();
    expect(body).toEqual(updatedPost);
  });

  test('@regression DELETE returns a successful empty representation', async ({ api }) => {
    const response = await api.delete('/posts/1');
    await api.expectJson(response, 200);

    expect(await response.json()).toEqual({});
  });

  test('@regression unknown resource returns 404', async ({ api }) => {
    const response = await api.get('/posts/999999');
    expect(response.status()).toBe(404);
    expect(await response.json()).toEqual({});
  });
});