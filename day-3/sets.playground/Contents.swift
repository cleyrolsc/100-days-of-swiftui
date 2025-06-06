import Cocoa

//such as the other containers, set also has multiple ways to be declared
//similar to arrays, but sets do not contain duplicates and are in an unordered way, therefore we dont use append. instead we use insert, since we are just inserting it
//if use sorted() in a set, it will return back an array
//They are also way faster for data lookup since there is no order and swift does not have to go item by item to find the one we are looking for

var players = Set(["Lebron James", "Kobe Bryant", "Michael Jordan", "Magic Johnson"])

players.insert("Luka doncic")

print(players)

var ingredients = Set<String>()
ingredients.insert( "Apples" )
ingredients.insert( "Oranges" )
ingredients.insert( "Bananas" )
ingredients.insert( "Apples" ) 

print(ingredients)

var scores: Set<Int> = []

scores.insert(100)
scores.insert(80)
scores.insert(90)
scores.insert(80)

print(scores)
