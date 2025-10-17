export interface CapacitorAppStoreInfoPlugin {
  /**
   * Returns information about the app environment:
   * - isTestFlight: true if the app is running in TestFlight
   * - storeCountry: the App Store country code (e.g., "US")
   */
  getInfo(): Promise<{
    isTestFlight: boolean;
    storeCountry: string;
  }>;
}
