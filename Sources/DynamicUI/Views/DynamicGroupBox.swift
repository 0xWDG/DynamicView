//
//  DynamicGroupBox.swift
//  DynamicUI
//
//  Created by Wesley de Groot on 19/04/2024.
//  https://wesleydegroot.nl
//
//  https://github.com/0xWDG/DynamicUI
//  MIT LICENCE

import SwiftUI

/// DynamicUI: GroupBox
/// 
/// DynamicGroupBox is a SwiftUI View that can be used to display an GroupBox.
///
/// JSON Example:
/// ```json
/// {
///    "type": "GroupBox",
///    "children": [ ]
/// }
/// ```
/// 
/// - Note: This is a internal view, you should not use this directly. \
///         Use ``DynamicUI`` instead. this function is public to generate documentation.
public struct DynamicGroupBox: View {
    @Environment(\.internalDynamicUIEnvironment)
    /// Internal: dynamicUIEnvironment
    private var dynamicUIEnvironment

    /// The component to display
    private let component: UIComponent

    /// Initialize the DynamicGroupBox
    init(_ component: UIComponent) {
        self.component = component
    }

    /// Generated body for SwiftUI
    public var body: some View {
         GroupBox {
            if let children = component.children {
                AnyView(dynamicUIEnvironment.buildView(for: children))
            }
        }
    }
}
