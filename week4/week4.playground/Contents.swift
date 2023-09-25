import UIKit
//1. 第一題為獨立app - 2 section table view;
//A: 回饋一下，這邊我卡了很久。因為我的table view的style 應為plain，結果我設錯設為grouped，所以文字無法顯示。

//2. There are several methods defined in the UITableViewDataSource protocol. Which methods are called by the system after we manually call reloadData() of a table view and what are their sequences? Please describe in as much detail as possible.
// A:UITableViewDataSource protocol會告訴table view要顯示的內容和配置。本題要問的是如果我們使用了reload Data()後，系統會呼叫哪些方法（methods），也問了其順序為何。
//  reloadData 會更新TableView所有數據，包含其 cell、section header、section footer 以及其 index arrays 等等。 為了提高效率，TableView只重新顯示當下的欄位，但如果cell欄位更新後縮小，cell也會更新畫面，縮小欄位高度。reloadData後TableView的delegate跟data  source也重新執行，因此需要消耗較多的效能，因此較適合應用於畫面初始化後，api取得資料後的更動畫面使用。
// 順序：首先是numberOfSections(in:)，然後是tableView(_:numberOfRowsInSection:)，最後是tableView(_:cellForRowAt:)。這些方法的調用次數和具體邏輯取決於你的數據源和表格視圖的配置。如果你在reloadData()之後有其他的UI更新操作，可能會觸發其他相關的方法，比如tableView(_:willDisplay:forRowAt:)用於通知即將顯示某一行，或者tableView(_:didEndDisplaying:forRowAt:)用於通知某一行已經不再顯示等等。

//補充說明：numberOfSections、numberOfRowsInSection、cellForRowAt 各會執行幾次？
//A: 就我的理解他應該是要看資料的配置，比如：
//（1）若你的畫面是一個section，那麼更新資料的時候，dataSource請numberOfSections(in:)跑一次、回傳 Int為1（1個section）。
//（2）numberOfRows(inSection:)也是看畫面，假設畫面有4個cell，那就回傳 Int為4（執行一次）。
//（3）tableView(_:cellForRowAt:)的部份就依資料更新的順序，比如剛好滑到第五個順序，dataSource就讓tableView(_:cellForRowAt:)回傳第五個cell的UITableViewCell（假設你從第一個cell滑到第五個cell，那就會執行五次）。


//3. 第三題為獨立app - URLSession

//4. (Advanced) Please complete the following function that prints a pyramid made of asterisks.
//A: 因為圖示是照順序顯示的，所要要先設定陰影空白的算式，再顯示＊。陰影：第一行～倒數第二行有數字，最後一排沒有。所以要分兩段寫：
var content: String = ""

func drawAPicture(layers: Int) {
    for i in 1...layers {
        if layers > i {
            for _ in 1...(layers - i ) {    //因為我這邊的i變數沒有用到，其實可直接用"_"取代。
                content += " "
            }
            for _ in 1...( 2 * i - 1){      //因為我這邊的j變數沒有用到，其實可直接用"_"取代。
                content += "*"
            }
            //跳到下一排
            content += "\n"
        } else {
            for _ in 1...( 2 * i - 1){
                content += "*"
            }
            //跳到下一排
            content += "\n"
        }
    }
}

drawAPicture(layers: 5)
print(content)

//5. (Optional) Do you have any App ideas that you are interested in and want to develop? List them along with a brief description (2 sentences at most), and no need to consider the availability, required techniques and business models at all.
//A: 其實我過去是文組生，初接觸code所以一切對我來說都很陌生需要學習，目前我會覺得如果可以的話想往實用性高的app學習（如：購物平台、音樂播放app），這類可以接觸到演算法或IOT等等新技術的app，是我覺得目前個人可以發展的方向。如果我的想法太狹隘的話也可以麻煩nick大大跟我說～謝謝。
