# Web Automation Framework

A portfolio-grade Playwright + TypeScript framework demonstrating maintainable end-to-end automation and senior QA test design against SauceDemo.

## Why this application?
SauceDemo is a public demonstration e-commerce application used in Sauce Labs testing examples. It gives the suite realistic user journeys without exposing employer systems or confidential data.

## Coverage
- Authentication: successful login, locked account, required-field validation
- Inventory: product sorting and data assertions
- Cart: product selection and cart validation
- Checkout: complete purchase journey
- Cross-browser projects: Chromium, Firefox and WebKit

## Architecture
- **Page Objects** isolate UI interaction and selectors.
- **Fixtures** provide reusable page objects without repeated setup code.
- **Test data** is separated from test logic.
- **Tags** split high-value smoke coverage from broader regression coverage.
- **Failure evidence** retains screenshots, video and Playwright traces.
- **HTML reporting** provides execution evidence.

## Risk-based test strategy
The smoke suite focuses on business-critical paths: authentication and checkout. Regression adds validation rules and catalogue behaviour. The design intentionally avoids automating every possible UI interaction: automation should protect valuable, repeatable behaviour rather than inflate test counts.

## Run locally
```bash
npm install
npx playwright install
npm test
npm run test:smoke
npm run test:regression
```

## Notes
The public demo credentials are intentionally test data, not personal or production credentials. The suite is designed for CI integration in Phase 5.
