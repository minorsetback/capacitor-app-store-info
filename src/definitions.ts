export interface CapacitorAppStoreInfoPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
