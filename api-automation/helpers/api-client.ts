import { APIRequestContext, APIResponse, expect } from '@playwright/test';

export class ApiClient {
  constructor(private readonly request: APIRequestContext) {}

  get(path: string): Promise<APIResponse> {
    return this.request.get(path);
  }

  post(path: string, data: unknown): Promise<APIResponse> {
    return this.request.post(path, { data });
  }

  put(path: string, data: unknown): Promise<APIResponse> {
    return this.request.put(path, { data });
  }

  delete(path: string): Promise<APIResponse> {
    return this.request.delete(path);
  }

  async expectJson(response: APIResponse, status: number) {
    expect(response.status()).toBe(status);
    expect(response.headers()['content-type']).toContain('application/json');
  }
}