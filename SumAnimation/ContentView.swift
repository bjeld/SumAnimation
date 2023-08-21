import SwiftUI

struct ContentView: View, Animatable {
    @State var sum: Double = 0;
    
    private var formatter: NumberFormatter {
       let formatter = NumberFormatter()
       formatter.numberStyle = .currency
       formatter.locale = Locale(identifier: "en_US")
       return formatter
    }
    
    var body: some View {
        ZStack {
            TextAnimatableValue(value: sum, formatter: formatter)
               .font(.largeTitle)
               .fontWeight(.heavy)
               .monospacedDigit()
            
            VStack {
               Spacer()
               HStack() {
                  Button(action: {
                     withAnimation(Animation.easeInOut(duration: 1)) {
                           sum -= 1000
                     }
                  }) {
                     Image(systemName: "minus.circle.fill")
                           .font(.system(size: 50))
                           .foregroundColor(.black)
                  }
                  
                  Spacer()
                  
                  Button(action: {
                     withAnimation(Animation.easeInOut(duration: 1)) {
                           sum = 0
                     }
                  }) {
                     Image(systemName: "xmark.circle.fill")
                           .font(.title)
                           .foregroundColor(.black)
                  }
                  
                  Spacer()
                  
                  Button(action: {
                     withAnimation(Animation.easeInOut(duration: 1)) {
                           sum += 1000
                     }
                  }) {
                     Image(systemName: "plus.circle.fill")
                           .font(.system(size: 50))
                           .foregroundColor(.black)
                  }
               }
            }.padding(40)
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
