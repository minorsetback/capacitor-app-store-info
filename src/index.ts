import { registerPlugin } from '@capacitor/core';

import type { CapacitorAppStoreInfoPlugin } from './definitions';

const CapacitorAppStoreInfo = registerPlugin<CapacitorAppStoreInfoPlugin>('CapacitorAppStoreInfo', {
  web: () => import('./web').then((m) => new m.CapacitorAppStoreInfoWeb()),
});

export * from './definitions';
export { CapacitorAppStoreInfo };
