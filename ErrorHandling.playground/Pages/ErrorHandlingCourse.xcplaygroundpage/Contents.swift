struct Friend {
    let name: String
    let age: String
    let address: String?
}

enum FriendError: Error {
    case invalidData(description: String)
}

func friend(from dict: [String: String]) throws -> Friend {
    guard let name = dict["name"] else {
        throw FriendError.invalidData(description: "Invalid name value")
    }
    
    guard let age = dict["age"] else {
        throw FriendError.invalidData(description: "Invalid age value")
    }
    
    let address = dict["address"]
    
    return Friend(name: name, age: age, address: address)
}

let response = ["name": "Thomas", "age": "29", "address": "someAddress"]
let someFriend = try friend(from: response)

print(someFriend)
