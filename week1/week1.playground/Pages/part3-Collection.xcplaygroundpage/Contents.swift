import Foundation

/*
 前言：
 You should know how to declare an Array in Swift, and also how to add, remove, insert, read an object in an array. You should be familiar with the following syntax: append , .insert , remove .
 Arrays are dangerous in Swift. If you access the array with an index which is out of range, your app will crash with fatal error. Please interact with the array very carefully.

 */
//1. Please initialize an empty array with String data type and assign it to a variable named myFriends.
//var myFriends : [String] = [] //一開始沒有朋友QQ，避免變數重複，故先註解。

//2. According to Q1, now I have three friends, ‘Ian’, ‘Bomi’, and ‘Kevin’. Please help me to add their name into myFriends array at once.
var myFriends : [String] = ["Ian", "Bomi", "Kevin"]
//如果 myFriends 已經事先宣告過 (裡面可能有值)，有什麼語法可以把 ["Ian", "Bomi", "Kevin"] 加進去 (不是取代)？
myFriends.append("Ian")  //不是取代，而是新增
myFriends.append("Bomi")
myFriends.append("Kevin")

//3. Oops, I forgot to add ‘Michael’ who is one of my best friends, please help me to add Michael to the end of myFriends array.
myFriends.append("Michael")  //新增第四個值

//4. Because I usually hang out with Kevin, please move Kevin to the beginning of the .myFriends array.
//A:在這邊我先將原本index：2的kevin移除，再另外插入一次。
//myFriends.remove(at: 2)
//myFriends.insert("Kevin", at:0)
//也可以用swapAt
myFriends.swapAt(2, 0)

//5. Use for...in to print all the friends in myFriends array.
print(myFriends)

//6. Now I want to know who is at index 5 in the myFriends array, try to find the answer for me. Please explain how you get the answer and why the answer is it.
//A:因為陣列是由0開始，故index＝5時是out of range的，系統會顯示錯誤。
myFriends[5]

//7. How to get the first element in an array?
myFriends[0] //0就是第一個～
//或者用.first
myFriends.first

//8. How to get the last element in an array?
//我腦袋中第一個想到的
myFriends[myFriends.count - 1] //將array項目數-1就是最後一個index值。
//這是影片的解法
myFriends.last

//9. Please initialize a Dictionary with keys of type String, value of type Int, and assign it to a variable named myCountryNumber.
var myCountryNumber:[String:Int] = [:]

//10. Please add three values 1, 44, 81 to myCountryNumber for keys ‘US’, ‘GB’, ‘JP’ respectively.
myCountryNumber = [ "US": 1,
                    "GB": 44,
                    "JP": 81
]

//11. Change the value of ‘GB’ from 44 to 0.
myCountryNumber["GB"] = 0

//12. How to declare an empty dictionary?
var emptyDictionary:[String:Int] = [:]

//13. How to remove a key-value pair in a dictionary?
//以剛剛國家號碼來示範：
myCountryNumber.removeValue(forKey: "US")
print(myCountryNumber)
//myCountryNumber["US"] = nil 的寫法也可以（感謝nick提供）
