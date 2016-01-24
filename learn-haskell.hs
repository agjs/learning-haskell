doubleMeX x = x + x
doubleMeY y = y + y
doubleUs x y = doubleMeX x + doubleMeY y

statement x = if x > 5
              then x
              else x * 2

doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1

conan0'Brien = "It's a-me, Conan O'Brien!"

-- let lostNumbers = [4,8,15,16,23,42] - Use let when defining a variable inside ghci
-- Lists in Haskell are homogeneus aka they can store several elements of the same type

lostNumbers = [4,8,15,16,23,42]

-- Concatination

list1 = [1, 3, 5]
list2 = [99, 6, 11]

listSum = list1 ++ list2

hello = "hello" ++ " " ++ "world"
woot = ['w', 'o'] ++ ['o', 't']

-- In haskell, strings are really just lists of characters. For example, the string 'hello' is actually the same as the list
-- ['h', 'e','l','l',0]. Because of this, we can use list functions on strings, which is really handy

-- cons operator :
-- Add an element to the beginning of a list
consOperator = 'A': " SMALL CAT"
consOperator2 =  5:[1,2,3,4,5] -- [5,1,2,3,4,5]

-- Accesing List elements
-- If you want to get an element of a list by index, use !! operator.
-- As with most programming languages, the indices start at 0

name = "Aleksandar" !! 3

-- Comparing lists

compareLists = list1 > list2

-- Some basic list functions
-- The head function takes a list and returns its head (the first element)

listHead = head list1

-- The tail function takes a list and returns its tail. In other words, its chops off a list's head

listTail = tail list1

-- The last function returns a list's last element

listLastElement = last list1

-- When using head, tail, last and init, be careful not to use them on empty lists. This error cannot be caught at compile time,
-- so it's always good practise to take precautions against accidentally telling Haskell to give you elements from an empty list

-- The length function takes a list and returns its length

listLength = length list1

-- The null function checks if a list is empty. If it is, it returns True, otherwise it returns false

listNotNull = null list1
listNull = null []

-- The reverse function reverses a list

listReverse = reverse list1

-- The take function takes a number and a list. It extracts the specified number elements from the beginning of the list, like this

listTake = take 2 list1

-- If we try to take more elements than there are in the list, Haskell just returns the entire list. If we take 0 elements, we get an empty list

-- The drop function works in a similar way, only it drops (at most) the specified number of elements from the beginning of a list

listDrop = drop 2 list1

-- The maximum function takes a list of items that can be put in some kind of order and returns the largest element. The minimum function is similar but it returns the smallest items

listMaximum = maximum list1
listMinimum = minimum list1

-- The sum function takes a list of numbers and returns their sum. The product function takes a list of numbers and returns their product

listSum2 = sum list1
listProduct = product list1

-- The elem function takes an item and a list of items and tells us if that item is an element of the list. It's usually called as an infix function because it's easier to read that way.


listElem = 4  `elem` list1

-- Ranges - To make a list containing all the natural numbers from 1 to 20, you can just type [1..20].

listRangeNumbers = [1..20];
listRangeAlphabet = ['a'..'z']

-- We can also specify a step between items in the range. What if we want a list of every even number between 1 and 20 ? Or every third number between 1 and 20 ? Its simply a matter of separating the first two elements with a comma and specifying the upper limit:

-- https://wiki.haskell.org/List_comprehension

listRangeStep = [2,4..20]

-- List Comprehension

listComprehension = [x * 2 | x <- [1..10]]

-- Example with a predicate. Predicates go at the end of the list comprehension and are separated from the rest of the comprehension by a comma. Lets say we want only the elements which, after being doubled, are greater than or equal to 12:

listComprehensionPredicate = [x * 2 | x <- [1..10], x * 2 >= 12]

-- What if we want all numbers from 50 to 100 whose reminder when divided by 7 is 3 ?

listComprehensionPredicateRemainder = [x | x <- [50..100], x  `mod` 7 == 3]


-- Now for another example. Let's say we want a comprehension that replaces every odd number greater than 10 with "BANG!", and every odd number less then 10 with "BOOM!". If a number isn't odd, we throw it out of our list. For convinience, we ll put that comprehension inside a function so we can easily reuse it:

boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
