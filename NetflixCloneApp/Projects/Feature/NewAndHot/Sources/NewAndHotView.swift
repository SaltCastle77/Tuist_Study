

import SwiftUI
import Foundation

public struct NewAndHotView: View {
    public var body: some View {
        VStack {
            Text("NewAndHotView")
                .font(.largeTitle)
        }
    }
    
    public init() {}
}

public struct NewAndHotViewPreviews:PreviewProvider {
    public static var previews: some View {
        NewAndHotView()
    }
}
