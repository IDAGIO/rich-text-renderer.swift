// RichTextRenderer

import UIKit

// Set these values to override default system colors
public struct Color {
    public static var richTextColor: UIColor? = nil
    public static var richTextBackgroundColor: UIColor? = nil
}

public extension UIColor {
    /// Returns `UIColor.systemBackground` color or fallbacks to white.
    static var rtrSystemBackground: UIColor {
        if let richTextBackgroundColor = Color.richTextBackgroundColor { return richTextBackgroundColor }

        #if os(tvOS)
            return .white
        #else
        if #available(iOS 13.0, *) {
            return .systemBackground
        } else {
            return .white
        }
        #endif
    }

    /// Returns `UIColor.label` color or fallbacks to black.
    static var rtrLabel: UIColor {
        if let richTextColor = Color.richTextColor { return richTextColor }

        if #available(iOS 13.0, *) {
            return .label
        } else {
            return .black
        }
    }
}
