import Cocoa
import Foundation


enum ImageType: String {
    case jpg
    case bmp
    case gif
    
    init?(rawValue: String) {
        switch rawValue.lowercased() {
            case "jpg", "jpeg": self = .jpg
            case "bmp", "bitmap": self = .bmp
            case "gif", "gifv": self = .gif
            default: return nil
        }
    }
}


func iconName(for fileExtensions: String) -> String {
    guard let imageType = ImageType(rawValue: fileExtensions) else {return "assetIconUnknown"}
    
    switch fileExtensions {
        case "jpg": return "assetIconJpeg"
        case "bmp": return "assetIconBitmap"
        case "gif": return "assetIconGif"
        default: return "assetIconUnknown"
    }
}


iconName(for: "jpg")
iconName(for: "bmp")
