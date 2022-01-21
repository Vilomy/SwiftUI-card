import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.1, green: 0.74, blue: 0.61).ignoresSafeArea()
            VStack {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(lineWidth: 5))
                Text("Puss In Boots")
                    .font(.title2)
                    .fontWeight(.heavy)
                Text("IOS developer / Data Scientist")
                    .font(.headline)
                    .fontWeight(.light)
                Divider()
                Card(image: "phone.fill", message: "+0 (123) 456 78 90")
                Card(image: "envelope.fill", message: "PussInBoots@gogle.com")
            }.foregroundColor(.white)
       
            
        }
    }
}

struct Card: View {
    let image: String
    let message: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .padding(.horizontal)
            .overlay(
                HStack {
                    Image(systemName: image)
                    Text(message)
                        .fontWeight(.semibold)
                }.foregroundColor(Color(red: 0.1, green: 0.74, blue: 0.61))
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
