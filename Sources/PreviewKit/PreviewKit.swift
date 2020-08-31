#if canImport(SwiftUI)
import SwiftUI

@available(OSX 10.15.0, *)
public struct PreviewKit {
    public struct ScreenSize {
        public let inPoints: CGSize
        public let renderRatio: CGFloat

        public var inPixels: CGSize {
            CGSize(width: inPoints.width*renderRatio, height: inPoints.height*renderRatio)
        }

        public init(points: CGSize, renderRatio: CGFloat) {
            self.inPoints = points
            self.renderRatio = renderRatio
        }
    }

    public enum LayoutMode: Equatable {
        case portrait(Device), landscape(Device), fixed(CGSize), sizeThatFits, currentDevice

    }

    public enum Device {
        case iPhone4s
        case iPhone5, iPhone5s, iPhone5c, iPhoneSE_G1
        case iPhone6, iPhone6s, iPhone7, iPhone8, iPhoneSE_G2
        case iPhone6Plus, iPhone6sPlus, iPhone7Plus, iPhone8Plus
        case iPhone11Pro, iPhoneX, iPhoneXS
        case iPhone11, iPhoneXR
        case iPhone11ProMax, iPhoneXSMax
        case iPad2
        case iPadRetina, iPadAir, iPadMini2, iPadMini3, iPadMini4, iPadAir2, iPad5, iPad6, iPadMini_G5, iPadPro9_7
        case iPad7
        case iPadAir_G3, iPadPro10_5
        case iPadPro11_G1, iPadPro11_G2
        case iPadPro12_9, iPadPro12_9_G2, iPadPro12_9_G3, iPadPro12_9_G4

        public var name: String {
            switch self {
            case .iPhone4s:
                return "iPhone 4s"
            case .iPhone5:
                return "iPhone 5"
            case .iPhone5s:
                return "iPhone 5s"
            case .iPhone5c:
                return "iPhone 5c"
            case .iPhoneSE_G1:
                return "iPhone SE (1st generation)"
            case .iPhoneSE_G2:
                return "iPhone SE (2nd generation)"
            case .iPhone6:
                return "iPhone 6"
            case .iPhone6s:
                return "iPhone 6s"
            case .iPhone7:
                return "iPhone 7"
            case .iPhone8:
                return "iPhone 8"
            case .iPhone6Plus:
                return "iPhone 6 Plus"
            case .iPhone6sPlus:
                return "iPhone 6s Plus"
            case .iPhone7Plus:
                return "iPhone 7 Plus"
            case .iPhone8Plus:
                return "iPhone 8 Plus"
            case .iPhone11Pro:
                return "iPhone 11 Pro"
            case .iPhoneX:
                return "iPhone X"
            case .iPhoneXS:
                return "iPhone Xs"
            case .iPhone11:
                return "iPhone 11"
            case .iPhoneXR:
                return "iPhone Xʀ"
            case .iPhone11ProMax:
                return "iPhone 11 Pro Max"
            case .iPhoneXSMax:
                return "iPhone Xs Max"
            case .iPad2:
                return "iPad 2"
            case .iPadRetina:
                return "iPad with Retina display"
            case .iPadAir:
                return "iPad Air"
            case .iPadMini2:
                return "iPad mini 2"
            case .iPadMini3:
                return "iPad mini 3"
            case .iPadMini4:
                return "iPad mini 4"
            case .iPadAir2:
                return "iPad Air 2"
            case .iPad5:
                return "iPad (5th generation)"
            case .iPad6:
                return "iPad (6th generation)"
            case .iPadMini_G5:
                return "iPad mini 2"
            case .iPad7:
                return "iPad (7th generation)"
            case .iPadAir_G3:
                return "iPad Air (3rd generation)"
            case .iPadPro9_7:
                return "iPad Pro (9.7-inch)"
            case .iPadPro10_5:
                return "iPad Pro (10.5-inch)"
            case .iPadPro11_G1:
                return "iPad Pro (11-inch) (1st generation)"
            case .iPadPro11_G2:
                return "iPad Pro (11-inch) (2nd generation)"
            case .iPadPro12_9:
                return "iPad Pro (12.9-inch)"
            case .iPadPro12_9_G2:
                return "iPad Pro (12.9-inch) (2nd generation)"
            case .iPadPro12_9_G3:
                return "iPad Pro (12.9-inch) (3rd generation)"
            case .iPadPro12_9_G4:
                return "iPad Pro (12.9-inch) (4th generation)"
            }
        }

        public var screenSize: ScreenSize {
            switch self {
            case .iPhone4s:
                return ScreenSize(points: CGSize(width: 320, height: 480), renderRatio: 2)
            case .iPhone5, .iPhone5s, .iPhone5c, .iPhoneSE_G1:
                return ScreenSize(points: CGSize(width: 320, height: 568), renderRatio: 2)
            case .iPhone6, .iPhone6s, .iPhone7, .iPhone8, .iPhoneSE_G2:
                return ScreenSize(points: CGSize(width: 375, height: 667), renderRatio: 2)
            case .iPhone6Plus, .iPhone6sPlus, .iPhone7Plus, .iPhone8Plus:
                return ScreenSize(points: CGSize(width: 414, height: 736), renderRatio: 3/1.15)
            case .iPhone11Pro, .iPhoneX, .iPhoneXS:
                return ScreenSize(points: CGSize(width: 375, height: 812), renderRatio: 3)
            case .iPhone11, .iPhoneXR:
                return ScreenSize(points: CGSize(width: 414, height: 896), renderRatio: 2)
            case .iPhone11ProMax, .iPhoneXSMax:
                return ScreenSize(points: CGSize(width: 414, height: 896), renderRatio: 3)
            case .iPad2:
                return ScreenSize(points: CGSize(width: 768, height: 1024), renderRatio: 1)
            case .iPadRetina, .iPadAir, .iPadMini2, .iPadMini3, .iPadMini4, .iPadAir2, .iPad5, .iPad6, .iPadMini_G5, .iPadPro9_7:
                return ScreenSize(points: CGSize(width: 768, height: 1024), renderRatio: 2)
            case .iPad7:
                return ScreenSize(points: CGSize(width: 810, height: 1080), renderRatio: 2)
            case .iPadAir_G3, .iPadPro10_5:
                return ScreenSize(points: CGSize(width: 834, height: 1112), renderRatio: 2)
            case .iPadPro11_G1, .iPadPro11_G2:
                return ScreenSize(points: CGSize(width: 834, height: 1194), renderRatio: 2)
            case .iPadPro12_9, .iPadPro12_9_G2, .iPadPro12_9_G3, .iPadPro12_9_G4:
                return ScreenSize(points: CGSize(width: 1024, height: 1366), renderRatio: 2)
            }
        }
    }
}

@available(OSX 10.15.0, *)
public struct PreviewOptions: ViewModifier {
    public let title: String?
    public let layoutMode: PreviewKit.LayoutMode

    public var previewTitle: String? {
        if let title = title {
            return title
        }

        switch layoutMode {
        case .currentDevice:
            return "Current Device"

        case .fixed(let size):
            return "Fixed: \(Int(size.width)) x \(Int(size.height))"

        case .sizeThatFits:
            return "Size that fits"

        case .landscape(let device):
            return "\(device.name) Landscape Mode"

        case .portrait(let device):
            return "\(device.name) Portrait Mode"
        }
    }

    // TODO: - If iOS 14 released, Use `if let` and `switch` statements inside function builders.

    public func body(content: Content) -> some View {
        previewView(content: content).previewDisplayName(previewTitle)
    }

    private func previewView(content: Content) -> some View {
        switch layoutMode {
        case .sizeThatFits:
            return content.previewDevice(nil).previewLayout(.sizeThatFits)
        case .fixed(let size):
            return content.previewDevice(nil).previewLayout(.fixed(width: size.width, height: size.height))
        case .portrait(let device):
            return content.previewDevice(PreviewDevice(rawValue: device.name)).previewLayout(.device)
        case .landscape(let device):
            return content.previewDevice(nil).previewLayout(.fixed(width: device.screenSize.inPoints.height, height: device.screenSize.inPoints.width))
        default:
            return content.previewDevice(nil).previewLayout(.device)
        }
    }
}

@available(OSX 10.15.0, *)
extension View {
    func previewOptions(title: String? = nil, layoutMode: PreviewKit.LayoutMode = .currentDevice) -> some View {
        self.modifier(PreviewOptions(title: title, layoutMode: layoutMode))
    }

    func previewOptions(layoutMode: PreviewKit.LayoutMode = .currentDevice) -> some View {
        self.modifier(PreviewOptions(title: nil, layoutMode: layoutMode))
    }
}
#endif
