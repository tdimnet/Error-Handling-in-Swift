struct Friend {
    let name: String
    let age: String
    let address: String?
}

enum FriendError: Error {
    case invalidData
}

func friend(from dict: [String: String]) -> Friend {
    guard let name = dict["name"], let age = dict["age"] else { return nil }
    
    let address = dict["address"]
    
    return Friend(name: name, age: age, address: address)
}
