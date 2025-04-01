//
//  ContentView.swift
//  Matchia
//
//  Created by PACO on 01/04/25.
//



import SwiftUI


struct ContentView: View {
  /*  let carreras = [
        "Actuaría",
        "Arquitectura",
        "Ciencia de datos",
        "Ciencias políticas",
        "Comunicación",
        "Derecho",
        "Diseño gráfico",
        "Economía",
        "Enseñanza de inglés",
        "Filosofía",
        "Historia",
        "Ingeniería civil",
        "Lengua y literatura",
        "Matemáticas aplicadas",
        "Pedagogía",
        "Relaciones Internacionales",
        "Sociología"
    ]
    let carreras = [
        "Álgebra",
        "Cálculo",
        "Diseño",
        "Ecuaciones diferenciales",
        "Estadística",
        "Optimización",
        "Probabilidad",
        "Topología"
    ]*/
    let carreras = [
        "Daniel Correa",
        "Cesár Segura",
        "Brenda Vargas"
    ]
    var body: some View {
        NavigationView {
            ZStack {
                Image("fondo")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                List(carreras, id: \.self) { carrera in
                    NavigationLink(destination: Text("Información sobre \(carrera)")) {
                        Text(carrera)
                            .font(.title)
                            .listRowBackground(Color.clear)
                    }.buttonStyle(PlainButtonStyle())
                        .listRowBackground(Color.clear)
                }
                .scrollContentBackground(.hidden)
                .background(Color.clear)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                       // Text("Carreras")
                       // Text("Materias")
                        Text("Tutores Álgebra")
                            .font(.largeTitle)
                            .frame(maxWidth: .infinity)
                            .multilineTextAlignment(.center)
                    }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
