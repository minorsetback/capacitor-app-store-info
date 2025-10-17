import { WebPlugin } from '@capacitor/core';

import type { CapacitorAppStoreInfoPlugin } from './definitions';

export class CapacitorAppStoreInfoWeb extends WebPlugin implements CapacitorAppStoreInfoPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
