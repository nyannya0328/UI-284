//
//  Message.swift
//  Message
//
//  Created by nyannyan0328 on 2021/08/13.
//

import SwiftUI

struct Message: Identifiable {
    var id = UUID().uuidString
    var message : String
    var userName : String
    var tintColor : Color
    
}

var messages : [Message] = [


    Message(message: "The best in MLB", userName: "Jacobe", tintColor: .blue),
    Message(message: "The best in NYY", userName: "Cole", tintColor: .gray),
    Message(message: "Legend Closer", userName: "Chapman", tintColor: .orange),
    Message(message: "The best struck out in MLB", userName: "Darvish", tintColor: .purple),
    Message(message: "Two way player", userName: "Shohey", tintColor: .cyan),
    Message(message: "Power & Control", userName: "Roki", tintColor: .green),
    Message(message: "The best in Annoucer", userName: "Manami", tintColor: .red),
    Message(message: "I hope happiness", userName: "Tubasa", tintColor: .pink),
    Message(message: "My birthday", userName: "Miyaji", tintColor: .red),
    Message(message: "I followed through on my intencion", userName: "Taro", tintColor: .green),
    Message(message: "Le Pere Tanguy", userName: "Goho", tintColor: .blue),
    Message(message: "Let's go to Dissney", userName: "Micky", tintColor: .orange),
    Message(message: "Let's go to Dissney", userName: "Minny", tintColor: .blue),
    Message(message: "Don't take people grant", userName: "Honda", tintColor: .pink),

]
