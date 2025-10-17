import { WebPlugin } from '@capacitor/core';

import type { CapacitorAppStoreInfoPlugin } from './definitions';

export class CapacitorAppStoreInfoWeb extends WebPlugin implements CapacitorAppStoreInfoPlugin {
  async getInfo(): Promise<{ isTestFlight: boolean; storeCountry: string }> {
    console.warn('CapacitorAppStoreInfo plugin is iOS-only');
    return {
      isTestFlight: false,
      storeCountry: 'Unknown',
    };
  }
}

const CapacitorAppStoreInfo = new CapacitorAppStoreInfoWeb();
export { CapacitorAppStoreInfo };
