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
