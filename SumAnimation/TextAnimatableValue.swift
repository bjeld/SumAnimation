import SwiftUI

struct TextAnimatableValue: View, Animatable {
    var value: Double
    
    // Default Formatter
    var formatter: NumberFormatter = {
       let formatter = NumberFormatter()
       formatter.numberStyle = .currency
       formatter.locale = Locale(identifier: "en_US")
       return formatter
    }()
    
    var animatableData: Double {
       get { value }
       set {
          value = newValue
       }
    }
    
    
    var body: some View {
        Text(formatter.string(for: value) ?? "")
    }
}
