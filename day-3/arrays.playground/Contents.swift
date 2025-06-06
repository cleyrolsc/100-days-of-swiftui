import Cocoa

//Arrays are a way to store multiple values in an ordered way
// To access them we need to use index (position of elements), the positions start from 0 all the way to the size of the array
//If an invalid index is used, we will ge an error
//Once an array is declared with an specific type, it can't be change

//Declares an array empty with  type String
var favoriteSongs = Array<String>()
favoriteSongs.append("Imagine")
favoriteSongs.append("Hallelujah")
favoriteSongs.append("No one")
favoriteSongs.append("Empire State")

//When using let to declare an array, it cannot be modified since it is immutable
let favoriteSports = Array<String>()
//favoriteSports.append("nba")... This will give an error

//Short way to declare arrays of x type in this case strings. same rules for let
var favoriteSports2 = [String]()
favoriteSports2.append("nba")

var favoriteMovies = [String]()
favoriteMovies.append("Now you see me")
favoriteMovies.append("The accountant")

//There are functionalities added to arrays in Swift we have the following:
//count, remove(at: {index}), removeAll(), sorted(), sort(), reversed(), reverse()

//append(elemnt to add): add an elemnt to the end of the array
//count: provides the amount of elements in the given array
//remove(at: {index}): removes the element in the given index. Returns the value
//removeAll(): remove all the elements in the given array. returns void


//There is a difference between the following one sort() vs sorted(), reverse vs reversed()

//sort(): sorts the array in place, meaning there will not return a new sorted array, instead it will mutate the original array. Cannot be used if the array is declared with let since it is immutable

//sorted(): returns a new sorted array, the original does not get modiifed. Can be assigned to a new variable

//reverse(): reverse the array in place, meaning there will not return a new sorted array, instead it will mutate the original array. Cannot be used if the array is declared with let since it is immutable

//reversed(): reverses the array but in a lazy way, it does not do it immediately, instead it waits up until this array is iterated over to be shown as reversed. Swift is in charged of keeping track of its order

print(favoriteSongs.count)
favoriteSongs.remove(at: 2)
print(favoriteSongs.count)
favoriteSongs.removeAll()
print(favoriteSongs.count)

//We can also create an array by passing the values and swift will infere its type
var favoriteTeams = ["Lakers", "Celtics", "Bulls"]
favoriteTeams.reversed()
print(favoriteTeams)
//print(favoriteTeamsSorted)
var favoriteTeamsReversed = favoriteTeams.reversed()
print(favoriteTeamsReversed)
