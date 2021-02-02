//
//  FirebaseCollectionReference.swift
//  Market
//
//  Created by Dominique Hosea on 2/2/21.
//

import Foundation
import FirebaseFirestore

enum FCollectionReference: String {
    case User
    case Category
    case Items
    case Basket
}

func FirebaseReference(_ collectionReference: FCollectionReference) ->
    CollectionReference {
    
    return Firestore.firestore().collection(collectionReference.rawValue)
}
