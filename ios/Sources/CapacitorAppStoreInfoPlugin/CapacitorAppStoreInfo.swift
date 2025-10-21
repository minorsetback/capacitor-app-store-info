import Foundation
import StoreKit

@objc public class CapacitorAppStoreInfo: NSObject {

    @objc public func getInfo() async -> [String: Any] {
        var isTestFlight = false
        var storeCountry = "Unknown"

        if #available(iOS 16.0, *) {
            async let storefront = try? Storefront.current
            async let transaction = try? AppTransaction.shared

            let store = await storefront
            if let code = store?.countryCode {
                storeCountry = code
            }

            if let result = await transaction {
                switch result {
                    case .verified(let t):
                        isTestFlight = (t.environment == .sandbox)
                    case .unverified:
                        isTestFlight = true
                }
            } else if let receiptURL = Bundle.main.appStoreReceiptURL {
                isTestFlight = receiptURL.lastPathComponent == "sandboxReceipt"
            }
        } else {
            if let receiptURL = Bundle.main.appStoreReceiptURL {
                isTestFlight = receiptURL.lastPathComponent == "sandboxReceipt"
            }
        }

        let info: [String: Any] = [
            "isTestFlight": isTestFlight,
            "storeCountry": storeCountry
        ]

        return info
    }
}
