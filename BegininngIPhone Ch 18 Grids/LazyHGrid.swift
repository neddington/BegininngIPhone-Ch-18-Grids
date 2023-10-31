import SwiftUI

struct HGrid: View {
    let rows = [GridItem(.fixed(500), spacing: 10)]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows) {
                VStack{
                    Image(.owl1)
                        .resizable()
                        .scaledToFit()
                    Text("Owl1")
                }
                VStack{
                    Image(.owl2)
                        .resizable()
                        .scaledToFit()
                    Text("Owl2")
                }
                VStack{
                    Image(.raccoon1)
                        .resizable()
                        .scaledToFit()
                    Text("Raccoon1")
                }
                VStack{
                    Image(.raccoon2)
                        .resizable()
                        .scaledToFit()
                    Text("Raccoon2")
                }
                VStack{
                    Image(.turtle1)
                        .resizable()
                        .scaledToFit()
                    Text("Turtle2")
                }
                VStack{
                    Image(.turtle2)
                        .resizable()
                        .scaledToFit()
                    Text("Turtle2")
                }
            }
            .padding()
        }
    }
}


#Preview {
    HGrid()
}
