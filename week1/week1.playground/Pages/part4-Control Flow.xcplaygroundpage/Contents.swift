
import Foundation

//1. Here is an array:
//Please use For-In loop and Range to print the last three members in the lottoNumbers array.
let lottoNumbers = [10, 9, 8, 7, 6, 5]
var i5 = lottoNumbers.count - 1
for _ in 1...3{
    print(lottoNumbers[i5])
    i5 -= 1
}

//2. Please use a for-in loop to print the results as the images listed below respectively (through lottoNumbers.):
//（2-1）A:第一小題是從5印到10
//A:
var index = lottoNumbers.count - 1
for _ in 0...index{
    print(lottoNumbers[index])
    index -= 1
}
//（2-2）A:第二小題是印出10、8、6
//A:
var index2 = 0
for index2 in 0...5 where index2 % 2 == 0 {
    print(lottoNumbers[index2])
}

//3. Please use a while loop to solve the Q2.
//（3-1）A:第一小題是從5印到10
var i = lottoNumbers.count - 1
while i >= 0 {
    print(lottoNumbers[i])
    i -= 1
}

//（3-2）A:第二小題是印出10、8、6
var i2 = 0
while i2 < lottoNumbers.count{
    print(lottoNumbers[i2])
    i2 += 2
}

//4. Please use a repeat-while loop to solve Q2.
//(4-1)A:第一小題是從5印到10
var i3 = lottoNumbers.count - 1
repeat{
    print(lottoNumbers[i3])
    i3 -= 1
} while i3 >= 0
//(4-2)A:第二小題是印出10、8、6
var i4 = 0
repeat{
    print(lottoNumbers[i4])
    i4 += 2
} while i4 < lottoNumbers.count

//5. What are the differences between while and repeat-while?
//A:以影片的題目作為說明，while and repeat-while差別在於 『repeat-while至少會先執行一次{}裡面的code，再依while的判斷式判別是否要繼續執行』。
 
//6. Declare a variable isRaining to record the weather. Please write a statement that if the weather is raining, print “It’s raining, I don’t want to work today.”, otherwise print “Although it’s sunny, I still don’t want to work today.”
var isRaining:Bool
isRaining = true
if isRaining == true{
    print("It’s raining, I don’t want to work today.")
} else{print("Although it’s sunny, I still don’t want to work today.") }

//7. In a company, we might use numbers to represent job levels. Let’s make an example. We use 1 for the Member, 2 for Team Leader, 3 for Manager, and 4 for Director. Now, declare a variable named jobLevel and assign a number to it. If the jobLevel number is in our list, print the relative job title name; if not, just print “We don't have this job”. Please use the if-else statement and the switch statement to complete this requirement separately.
//A:自己加了random函數，測試各種數字時皆有效。
var jobLevel: Int = Int.random(in: 1...10)
if jobLevel == 1 {
    print("Member")
} else if jobLevel == 2 {
    print("Team Leader")
} else if jobLevel == 3 {
    print("Manager")
} else if jobLevel == 4 {
    print("Director")
} else {
    print("We don't have this job")
}

//補充switch寫法
switch jobLevel {
case 1:
    print("Member")
case 2:
    print("Team Leader")
case 3:
    print("Manager")
case 4:
    print("Director")
default:
    print("We don't have this job")
}
