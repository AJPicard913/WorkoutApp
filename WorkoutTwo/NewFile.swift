//
//  NewFile.swift
//  WorkoutTwo
//
//  Created by AJ Picard on 7/7/20.
//  Copyright © 2020 AJ Picard. All rights reserved.
//

import SwiftUI

struct NewFile: View {
    var body: some View {
        VStack {
            
            VStack {
                HStack {
                    Spacer()
                    VStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 35, height: 5)
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 25, height: 5)
                    }
                    .padding(.trailing, 30)
                }
                HStack{
                    Text("Workouts")
                        .font(.system(size: 19, weight: .bold, design: .rounded))
                        .foregroundColor(.gray)
                        .padding(.leading, 45)
                    Spacer()
                }
            }
            
            
            ZStack {
                VStack{
                   Text("")
                }
                .frame(width: 360, height: 230)
                .background(Color(#colorLiteral(red: 0.9421904508, green: 0.9589149746, blue: 0.9472895702, alpha: 1)))
                .cornerRadius(40)
                .offset(x: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, y: 15)
                        
                VStack {
                    VStack(alignment: .leading) {
                        Text("Athena")
                            .font(.system(size: 38, weight: .bold, design: .rounded))
                        Text("Core, Lower")
                            .font(.system(size: 19, weight: .bold, design: .rounded))
                            .foregroundColor(.gray)
                    }
                    .padding(.bottom, 30)
                    .offset(x: -80)
                    HStack {
                        Text("Duration")
                            .font(.system(size: 16, weight: .bold, design: .rounded))
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 60, height: 30)
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
                                .font(.system(size: 16, weight: .bold, design: .rounded))
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 60, height: 30)
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
                        .padding(.leading, 10)
                        
                        
                    }
                    .offset(y: 20)
                }
                .frame(width: 360, height: 230)
                .background(Color(#colorLiteral(red: 1, green: 0.8558854461, blue: 1, alpha: 1)))
                .cornerRadius(40)
            }
            .padding(.vertical, 25)
            
            //MARK: Small Cards
            VStack(alignment: .leading) {
                Text("Categories")
                    .font(.system(size: 19, weight: .bold, design: .rounded))
                    .foregroundColor(.gray)
                    .padding(.vertical, 20)
                    .offset(x: 110)
                HStack {
                    ForEach(cardsData) { item in
                        CategoryCards(cards: item)
                    }
                    
                }
            }
            
            HStack (spacing: 60){
                Image(systemName: "house")
                    .font(.system(size: 28))
                Image(systemName: "arrow.up.right")
                    .font(.system(size: 28))
                Image(systemName: "person.2.fill")
                    .font(.system(size: 28))
                Image(systemName: "person")
                    .font(.system(size: 28))
            }
            .offset(y: 50)
        }
    }
}

struct NewFile_Previews: PreviewProvider {
    static var previews: some View {
        NewFile()
    }
}

struct CategoryCards: View {
    
    var cards: cards
    var body: some View {
        ZStack {
            Image(cards.image)
                .resizable()
                .frame(width: 100, height: 100)
                .offset(y: 50)
            Text(cards.title)
                .font(.system(size: 22, weight: .bold, design: .rounded))
                .foregroundColor(cards.text)
                .offset(x: -10, y: -75)
        }
        .frame(width: 175, height: 240)
        .background(cards.background)
        .cornerRadius(40)
        
    }
}



