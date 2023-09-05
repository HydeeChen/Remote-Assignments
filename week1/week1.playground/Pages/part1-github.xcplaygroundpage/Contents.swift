import UIKit 
//在此回答第一週作業內容。

/*
 Part 1: Git & GitHub
 1. Hydee:已在網頁版的GitHub建立並上傳作業。
 
 2. Here are some Git and GitHub commands we usually use in software development. Please explain the meanings and use cases of them.
 名詞解釋與實作：
 ● git status
 A:查詢目前目錄的「狀態」
 
 ● git add: 
 A:把檔案交給 Git ，讓 Git 開始「追蹤」目錄，此時內容加到暫存區
 
 ● git reset:
 A:git reset 會改變檔案的檔案狀態，使用時機用於想要更改master 或是暫存區的資料
 
 ● git commit:
 A:將暫存區的內容提交到儲存庫（Repository）保留

 ● git log
 A:檢視 Git 紀錄
 
 ● git branch
 A:可以查看目前有哪些分支
 
 ● git merge
 A:想要其他分支裡的 commit 紀錄時，就使用此指令來合併版本。
 
 ● git push [ repo_name ] [ branch_name ]
 A:將local的branch版本更新到遠端上的數據庫
 
 ● git remote
 A:檢視你已經設定好的遠端版本庫， 它會列出每個遠端版本庫的「簡稱」
 
 ● fork
 A:在GitHub上，「fork」就是把一份相同的專案放在你的帳號之下，讓你能夠公開對專案做變更。
 如果你想要參與一個你沒有推送權限的專案，你可以「fork」一份。這代表GitHub會複製一份這個專案的副本給你，並且你對這副本有全部權限。這副本會存在於你的帳號下，你可以對它進行推送。
 
 ● (Advanced) git rebase
 A:使用 git  rebase指令等於是修改歷史，他會使分支移動到不同的Commit重新定義基準點。
 利用 git rebase 的互動模式，可以讓你簡單的去調整 Commit的順序；或是拆分過大的 Commit；也可以刪除不必要的 Commit。
 
 ● (Advanced) git cherry-pick
 A:可將想要「挑選」出來的版本，然後套用在目前的分支上。
 一般來說，整體開發會有一條穩定版本(master或release)，開發者再開其他分支(dev)做修改後、合併。但有時會突然來個臨時功能需要修復或新增這個時候又不想把整個分支dev合併進master時，就可以使用cherry-pick，只挑自己想要的commit合併。
 
 ● (Advanced) git reflog
 A:會詳細顯示你每個指令的 SHA-1 值。配合git reset，就可以恢復原先的記錄。

 ● (Advanced) git tag
 A:使用git tag ＋標籤名稱，可新增標籤。
 
 3. Please describe how to establish a GitHub repo and how to upload the local projects to GitHub. Try to explain your answers with as much detail as possible.
A:
 
壹、在這邊我會說明兩種方法『網頁版』和『下指令版本』。原先我在做過去30幾篇app作品時，我都是使用github網站上傳作業，故先說明我習慣的方法。
一、Xcode 的 GitHub 帳號設定：
  （一）點選 Xcode > Settings 打開 Settings 視窗（也可以用快速鍵 cmd + ），切換到 Accounts 分頁，點選左下角的 + 新增帳號，選擇 GitHub。
  （二）輸入 GitHub 的 account & token。
   備註：取得token的方法;請先連到 GitHub 網站、點擊選單裡的 Settings、點選左下的 Developer settings、點選左下的 Tokens (classic)，再Generate new token(classic)就可以取得了。
  （三）設定Source Control 的 Git 分頁（點選 Xcode > Settings就會看到），輸入版本管理記錄想要顯示的名字跟 email。
二、將專案的 git 版本管理功能打開：建立專案時，勾選 Create Git repository on my Mac。
三、想記錄的時候：點選 Xcode menu 的 Integrate > Commit、點選 Stage All、在 commit message 的框框輸入此次版本做的修改。
    輸入文字後，我們才能點選右邊的 commit 按鈕做記錄。
四、檔案上傳github:
   （一）切換到左邊 navigator 區塊 Source Control navigator頁面的Repositories 分頁。
   （二）滑鼠游標移到專案名字上，從右鍵選單點選 New xxx Remote。
   （三）點選右下角的 Create 按鈕將整個專案上傳到 GitHub;成功後 Remote 的下方會出現 origin。
五、 修改作業：如果看到檔案是說明是Initial Commit，很有可能檔案是空的，記得要push（本人很常犯這樣的錯），
    利用 Integrate > Commit 將所做的修改做記錄時，從 Commit 右邊的下拉箭頭點選 Commit and Push，即可同時將修改上傳到 GitHub。
    點選 Push 上傳。
 
 「下指令版」說明，透過terminal
 （一）下cd指令，前往資料夾（也可以直接把資料夾直接拉進來，就有路徑了）
 （二）輸入git init(資料夾出現git資料夾)，代表成功設定數據庫管理
 （三）確保之前已經設定了
 git config --global user.name "xxx"
 git config --global user.email "xxx＠xxx"
 查詢 git 設定內容：git config --list
 我這邊的狀況是：
 hydeechen@Hydees-MBP cat % git config --list
 credential.helper=osxkeychain
 init.defaultbranch=main
 user.name=HydeeChen
 user.email=hydee0209@hotmail.com
 core.excludesfile=/Users/hydeechen/.gitignore_global
 difftool.sourcetree.cmd=opendiff "$LOCAL" "$REMOTE"
 difftool.sourcetree.path=
 mergetool.sourcetree.cmd=/Applications/Sourcetree.app/Contents/Resources/opendiff-w.sh "$LOCAL" "$REMOTE" -ancestor "$BASE" -merge "$MERGED"
 mergetool.sourcetree.trustexitcode=true
 commit.template=/Users/hydeechen/.stCommitMsg
 core.repositoryformatversion=0
 core.filemode=true
 core.bare=false
 core.logallrefupdates=true
 core.ignorecase=true
 core.precomposeunicode=true
（四）對資料夾做一些更動，可以看出歷史紀錄
 * 將檔案加入到索引：git add .
 * 將索引檔案變成一個更新(commit)：git commit -m "meow"
 會出現：
 [main (root-commit) 1274157] meow
  1 file changed, 0 insertions(+), 0 deletions(-)
  create mode 100644 meow/945200.jpg
 （五）這時也可以看一下git log
 會出現以下資訊：
 commit 1274157e5824d02a9b750940b9492287a7537f02 (HEAD -> main)
 Author: HydeeChen <hydee0209@hotmail.com>
 Date:   Tue Aug 29 22:44:47 2023 +0800

     meow
（以上結束）
 備註：這邊我也會去看source tree那邊看到歷程
 （六）上傳：這邊就在github網頁開一個repo
 然後輸入github的指令
 git remote add origin https://github.com/HydeeChen/cat.git
 git branch -M main
 git push -u origin main
 上傳完成。
 
 */
