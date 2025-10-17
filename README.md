# capacitor-app-store-info

Capacitor AppStore app info

## Install

```bash
npm install capacitor-app-store-info
npx cap sync
```

## API

<docgen-index>

* [`getInfo()`](#getinfo)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### getInfo()

```typescript
getInfo() => Promise<{ isTestFlight: boolean; storeCountry: string; }>
```

Returns information about the app environment:
- isTestFlight: true if the app is running in TestFlight
- storeCountry: the App Store country code (e.g., "US")

**Returns:** <code>Promise&lt;{ isTestFlight: boolean; storeCountry: string; }&gt;</code>

--------------------

</docgen-api>
