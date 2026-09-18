# API Automation Framework

A Playwright + TypeScript service-level test suite demonstrating API validation, reusable request abstractions and risk-focused test design against JSONPlaceholder.

## Coverage
- GET single-resource validation
- GET collection and response-contract checks
- POST create workflow
- PUT update workflow
- DELETE workflow
- 404 negative-path validation
- query/filter validation
- nested user/contact/company data assertions

## Architecture
- **ApiClient** centralizes HTTP operations and common response checks.
- **Fixtures** provide the reusable client to tests.
- **Test data** is separated from test logic.
- **Smoke/regression tags** allow purposeful suite selection.
- **HTML reporting** provides execution evidence.

## Test strategy
The suite checks more than HTTP status codes. Assertions cover response media type, resource shape, types, nested structures, data integrity and filtering behaviour. Negative-path coverage verifies the service's behaviour for an unknown resource.

JSONPlaceholder simulates write operations rather than persisting them. The tests therefore validate the documented response behaviour without incorrectly expecting created/updated/deleted data to remain changed after the request.

## Run
```bash
npm install
npx playwright install
npm test
npm run test:smoke
npm run test:regression
```

The suite is intended as portfolio demonstration work and contains no employer or production data.
