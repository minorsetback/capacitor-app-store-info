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
    public let jsName = "CapacitorAppStoreInfo"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "getInfo", returnType: CAPPluginReturnPromise)
    ]

    private let implementation: CapacitorAppStoreInfo = CapacitorAppStoreInfo()

    @objc func getInfo(_ call: CAPPluginCall) {
        Task {
            let info = await implementation.getInfo()
            call.resolve(info)
        }
    }
}