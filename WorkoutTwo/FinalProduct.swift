//
//  FinalProduct.swift
//  WorkoutTwo
//
//  Created by AJ Picard on 7/8/20.
//  Copyright © 2020 AJ Picard. All rights reserved.
//

import SwiftUI

struct FinalProduct: View {
    var body: some View {
        VStack {
            
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                    VStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 35, height: 8)
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 25, height: 8)
                    }
                }
                .padding(.trailing, 30)
                Text("Workouts")
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .foregroundColor(.gray)
                    .padding(.leading, 30)
            }
            
            ZStack {
                VStack {
                    Text("")
                }
                .frame(width: 360, height: 230)
                .background(Color(#colorLiteral(red: 0.9515855924, green: 0.9554905679, blue: 0.9571266335, alpha: 1)))
                .cornerRadius(40)
                .offset(x: 10, y: 20)
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Athena")
                                .font(.system(size: 40, weight: .bold, design: .rounded))
                            Text("Core, Lower")
                                .font(.system(size: 22, weight: .bold, design: .rounded))
                                .foregroundColor(.gray)
                        }
                        .padding(.leading, 30)
                        .offset(y: -20)
                        Spacer()
                    }
                    
                    HStack {
                        Text("Duration")
                            .font(.system(size: 18, weight: .bold, design: .rounded))
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 50, height: 25)
                                .foregroundColor(.white)
                            HStack {
                                Circle()
                                    .frame(width: 6, height: 6)
                                Circle()
                                    .frame(width: 6, height: 6)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(width: 6, height: 6)
                                    .foregroundColor(.gray)
                            }
                            

                        }
                        HStack {
                            Text("Difficulty")
                                .font(.system(size: 18, weight: .bold, design: .rounded))
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 50, height: 25)
                                    .foregroundColor(.white)
                                HStack {
                                    Circle()
                                        .frame(width: 6, height: 6)
                                    Circle()
                                        .frame(width: 6, height: 6)
                                        .foregroundColor(.gray)
                                    Circle()
                                        .frame(width: 6, height: 6)
                                        .foregroundColor(.gray)
                                }
                                

                            }
                        }
                        .padding(.leading, 20)
                       
                    }
                    .offset(y: 20)
                }
                .frame(width: 360, height: 230)
                .background(Color(#colorLiteral(red: 0.9965658784, green: 0.8522849083, blue: 0.996501267, alpha: 1)))
                .cornerRadius(40)
            }
            .padding(.vertical, 20)
            
            //MARK: Small Cards
            VStack(alignment: .leading) {
                Text("Categories")
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .foregroundColor(.gray)
                    .padding(.leading, 95)
                HStack {
                    ForEach(cardsData) { item in
                        card(cards: item)
                    }
                }
            }
            .padding(.vertical, 20)
            
            HStack (spacing: 75){
                Image(systemName: "house")
                    .font(.system(size: 28))
                Image(systemName: "line.diagonal.arrow")
                    .font(.system(size: 28))
                Image(systemName: "person.2")
                    .font(.system(size: 28))
                Image(systemName: "person.crop.circle")
                    .font(.system(size: 28))
                
            }
            .padding(.top, 20)
            
        }
    }
}

struct FinalProduct_Previews: PreviewProvider {
    static var previews: some View {
        FinalProduct()
    }
}

struct cards: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var background: Color
    var text: Color
}

let cardsData = [
    cards(title: "Cardio", image: "Cardio", background: Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)), text: Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))),
    cards(title: "Full Body", image: "Fullbody", background: Color(#colorLiteral(red: 0.9775737627, green: 0.969097198, blue: 0.9702811782, alpha: 1)), text: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))),
    cards(title: "Yoga", image: "Yoga", background: Color(#colorLiteral(red: 0.9318239093, green: 0.8697302341, blue: 0.9659574628, alpha: 1)), text: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))),
]

struct card: View {
    
    var cards: cards
    
    var body: some View {
        ZStack {
            Image(cards.image)
                .resizable()
                .frame(width: 100, height: 100)
                .offset(y: 20)
            Text(cards.title)
                .font(.system(size: 24, weight: .bold, design: .rounded))
                .foregroundColor(cards.text)
                .offset(x: -20, y: -70)
        }
        .frame(width: 175, height: 240)
        .background(cards.background)
        .cornerRadius(40)
    }
}
