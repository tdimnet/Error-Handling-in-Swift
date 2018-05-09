// 1
/*
 1.1
    For this task, start by creating an enum to model a series of errors. Name the error type NetworkError.
 1.2
    Add a single enum member, invalidURL to the error object we created.
 */

enum NetworkError: Error {
   case invalidURL
}



// 2
/*
 For this task, let's get some practice throwing an error. You've been provided with an error object in the editor. Errors are typically thrown from inside functions so let's start by creating a function that can throw.
 Name this function lend. It takes no parameters and has no return type.
 */
enum BookError: Error {
    case incorrectTitle
}

func lend() throws {
    throw BookError.incorrectTitle
}



// 3
/*
 3.1
 In the editor, you have a struct named Parser whose job is to deconstruct information from the web. The incoming data can be nil, keys may not exist, and values might be nil as well.
 In this task, complete the body of the parse function. If the data is nil, throw the EmptyDictionary error. If the key "someKey" doesn't exist throw the InvalidKey error.
 Hint: To get a list of keys in a dictionary you can use the keys property which returns an array. Use the contains method on it to check if the value exists in the array
 
 3.2
 Now that you have good error handling code, let's call the parse method. Remember that since this is a throwing function, you will need to use a do catch block. For this task, just use a generic catch block rather than pattern matching on specific errors.
 In the catch clause, simply log an error message of your choosing.
 
 3.3
 Perfect! We're almost done. Rather than a generic catch clause, let's pattern match on the specific errors so that we can log better error messages.
 In this task, change the catch statement to include specific error cases. Like before you can just log an error message of your choosing.
 */

//do {
//    let myFriend = try friend(from: response)
//    send(message: "Hello", to: myFriend)
//} catch FriendError.invalidData(let description) {
//    // Inform the user that they passed in invalidData
//    print(description)
//} catch FriendError.someError {
//    // Do something else but do not inform the user
//}

enum ParserError: Error {
    case emptyDictionary
    case invalidKey
}

struct Parser {
    var data: [String : String?]?
    
    func parse() throws {
        guard let data = data else {
            throw ParserError.emptyDictionary
        }
        
        guard let someKey = data["someKey"] else {
            throw ParserError.invalidKey
        }
    }
}

let data: [String : String?]? = ["someKey": nil]
let parser = Parser(data: data)

do {
    try parser.parse()
} catch ParserError.emptyDictionary {
    print("An error occurs: emptyDictionary")
} catch ParserError.invalidKey {
    print("An error occurs: invalidKey")
}























