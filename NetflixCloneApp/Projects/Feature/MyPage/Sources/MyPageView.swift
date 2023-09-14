
import SwiftUI
import Foundation

public struct MyPageView: View {
    public var body: some View {
        VStack {
            Text("MypageView")
                .font(.largeTitle)
        }
    }
    
    public init() {} 
}

public struct MypagViewPreviews:PreviewProvider {
    public static var previews: some View {
        MyPageView()
    }
}
