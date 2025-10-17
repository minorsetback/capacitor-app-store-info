import Foundation
import Capacitor
import StoreKit

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(CapacitorAppStoreInfoPlugin)
public class CapacitorAppStoreInfoPlugin: CAPPlugin, CAPBridgedPlugin {

    public let identifier = "CapacitorAppStoreInfoPlugin"
    public let jsName = "AppStoreInfo"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "getInfo", returnType: CAPPluginReturnPromise)
    ]

    private let implementation = CapacitorAppStoreInfo()

    @objc func getInfo(_ call: CAPPluginCall) {
        Task {
            let info = implementation.getInfo()
            call.resolve(info)
        }
    }
}