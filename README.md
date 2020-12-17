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
# 預設安裝程式包桶子: extras
# 預設安裝程式包: git, wsltty
iwr https://raw.githubusercontent.com/BwayCer/scoopBucket.env/main/bin/installTerminal.ps1 | iex
```

**安裝常用程式包：**

```ps1
iwr https://raw.githubusercontent.com/BwayCer/scoopBucket.env/main/bin/installCommonPackages.ps1 | iex
```


**相關說明：**

  * 關於應用清單的規範請見 [GitHub lukesampson/scoop/wiki/App-Manifests](https://github.com/lukesampson/scoop/wiki/App-Manifests)。
  * 關於程式包桶子的資訊請見 [GitHub lukesampson/scoop/wiki/Buckets](https://github.com/lukesampson/scoop/wiki/Buckets)。
  * 當程式包名稱相同時會依照 bucket 的名稱排序來選擇參考的 JSON 文件，
    其中數字又優先於英文字母。
    為避免此種情況發生，
    建議使用 `scoop install <bucket>/<package>` 的命令方式。



## 活頁筆記


* bin
  * [Surface 鍵盤以設定鍵交換右邊 Ctrl 鍵的鍵盤布局](./bin/surfaceAddRightCtrl.reg)
* 視窗語法
  * [鍵盤布局登入文件](./looseLeaf/windowsCode/keyboardLayoutRegistry.md)
* 程式包桶子
  * bway
    * [.NET Runtime](./looseLeaf/bucket/dotnet-desktop-runtime.md)
    * [PowerToys](./looseLeaf/bucket/powertoys.md)
    * [Ultimate Windows Context Menu Customizer](./looseLeaf/bucket/ultimate-windows-context-menu-customizer.md)

