//
//  ContentView.swift
//  EJ1
//
//  Created by -a.s  on 01/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let imageURL = "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.itl.cat%2Fpngfile%2Fbig%2F31-315457_gradient-yellow-and-pink-colors-abstract-wallpaper-yellow.jpg&f=1&nofb=1&ipt=cb32bab3abba810514fe8eaf7d51c3d12ec13ab9ae37ae8f7dfb65aeff590ce9&ipo=images"
        
        ZStack {
            AsyncImage(url: URL(string: imageURL)){
                estadoDeImagen in
                
                switch estadoDeImagen {
                case .empty:
                    //mientras busca y carga la imagen
                    ProgressView()
                    
                case .success(let image) :
                    //manipulando la imagen descargada
                    image
                        .resizable()
                        // esto hace que ignore los bordes del celular
                        .ignoresSafeArea()
                    
                case .failure:
                    //en caso de que no cargue la url
                    Image(systemName: "tokyo")
                        .imageScale(.large)
                    
                default:
                    EmptyView()
                }
            }
            
            VStack(alignment: .center) {
                Image(systemName: "globe")
                    .font(.system(size:40))
                    .imageScale(.large)
                    .foregroundColor(.green)
                    .accentColor(.purple)
                    .shadow(color: .blue, radius: 10, x:0, y:10)
                    
                
                    HStack {
                        Text("Amarillo").foregroundColor(Color.green)
                        Text("Azul ").foregroundColor(Color.red)
                        Text("Naranja").foregroundColor(Color.blue)
                        
                    }
                   
                .padding(.bottom, 40)
                
                HStack {
                    Text("NEGRO ")
                        .foregroundColor(Color.white)
                        .background(Color("DarkBlue"))
                        .font(.largeTitle)
                    
                    Image("bob")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Text("ROJO ")
                        .foregroundColor(Color.red)
                        .background(Color("BrightBlue"))
                        .font(.largeTitle)
                    
                }
                VStack() {
                    Text("Verde ")
                        .font(.title)
                        .padding(.vertical,20)
                        .padding(.horizontal,150)
                        .background(Color.orange)
                        .border(Color.black)
                        .foregroundColor(Color.white)
                    
                    
                }
                
                VStack() {
                    Text("Morado ")
                        .font(.caption)
                        .padding(.top,5)
                        .padding(.trailing, 300)
                        .bold()
                    
                }
                
                VStack(alignment: .leading) {
                    Text("Naranja ")
                        .font(.title)
                        .underline()
                        .padding(.vertical,50)
                        .padding(.leading,250)
                    
                }
                
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.colorScheme, .light)
    }
}
