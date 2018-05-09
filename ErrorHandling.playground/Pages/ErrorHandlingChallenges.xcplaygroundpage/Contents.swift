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
