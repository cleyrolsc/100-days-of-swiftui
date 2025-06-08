import Cocoa

enum Weather {
    case sun, rain, wind, snow, unknown
}


let forecast = Weather.sun

//When checking conditions for the same variable (Preferably enum), is better to use switch cases, since swift will actually stop you when trying to check the same variable twice, something that could be done when using if else statemnents
//As soon as it finds the code that meets the case, it will stop running the code
//Default is only to be used if not all of the cases are covered, meaning, none of the case might not match the actual value
//default should always be at the end, once it is ran the other block will never be ran
//You can use the keyword fallthrough, which will call the following case following through as long as that case follows a valid one... Meaning, if the first case is met but the fallthrough is in the 4th case, then that wouldnt do anything

switch forecast {
    case .sun:
    print("It is a sunny day!")
    fallthrough
    case .rain:
    print("It is raining today!")
    fallthrough
case .wind:
    print("Wear something warm")
    fallthrough
case .snow:
    print("It is snowy today!")
case .unknown:
    print("Our forecast generator is broken!")

}
