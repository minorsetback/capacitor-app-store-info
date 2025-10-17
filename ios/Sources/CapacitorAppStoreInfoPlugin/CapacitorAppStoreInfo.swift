import Foundation
import StoreKit

@objc public class CapacitorAppStoreInfo: NSObject {

    @objc public func getInfo() -> [String: Any] {
        var isTestFlight = false
        var storeCountry: String? = nil

        if let appTransaction = try? await AppTransaction.shared {
            isTestFlight = appTransaction.environment == .sandbox
            storeCountry = appTransaction.storefront.countryCode
        } else {
            isTestFlight = true
        }

        return [
            "isTestFlight": isTestFlight,
            "storeCountry": storeCountry ?? (Locale.current.region?.identifier ?? "Unknown")
        ]
    }
}
