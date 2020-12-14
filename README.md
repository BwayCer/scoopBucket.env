視窗環境
=======


我的工程窗環境。

命令行以 git-bash 為主，並搭配 powershell、cmd 穿插使用。<br>
程式包管理工具使用 [Scoop](https://scoop.sh)。



## Scoop 安裝方式


**安裝命令行：**

```ps1
# 設定 Scoop 安裝程式包目錄路徑
# $scoopPath       = 'C:\bway\cwapp\scoop'
# $scoopGlobalPath = 'C:\bway\cwapp\scoop_global'
# 預設安裝程式包桶: extras
# 預設安裝程式包: git, wsltty
iwr https://raw.githubusercontent.com/BwayCer/scoopBucket.env/main/bin/installTerminal.ps1 | iex
```

**下載本專案程式包桶：**

關於 Buckets 的資訊請見 [GitHub lukesampson/scoop/wiki/Buckets](https://github.com/lukesampson/scoop/wiki/Buckets)。

```sh
# BwayCer 的自製桶
# 當程式包名稱相同時會依照 bucket 的名稱排序來選擇參考的 JSON 文件，
# 其中數字又優先於英文字母。
# 為避免此種情況發生，建議使用 `scoop install <bucket>/<package>` 的命令方式。
scoop bucket add bway https://github.com/BwayCer/scoopBucket.env
```



## 活頁筆記


* bin
  * [Surface 鍵盤以設定鍵交換右邊 Ctrl 鍵的鍵盤布局](./bin/surfaceAddRightCtrl.reg)
* 視窗語法
  * [鍵盤布局登入文件](./looseLeaf/windowsCode/keyboardLayoutRegistry.md)
* Bucket
  * bway
    * [Windows Context Menu 訂製工具](./looseLeaf/bucket/ultimate-windows-context-menu-customizer.md)

