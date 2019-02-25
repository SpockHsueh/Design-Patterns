# Strategy pattern
![](https://i.imgur.com/0HDa1Sn.png)

> 定義一系列可變換的物件，在運行時可以互相切換或設置。當有兩種或多種的可互換的不同邏輯行為時，可以使用此設計模式。跟delegation 設計模式一樣，使用 protocol 而不是 concrete objects，使得維護和擴充上充滿彈性。。此設計模式分為三部分：
> 1. object using a strategy，開發上常搭配 viewController。(開發上如其他物件也想達到可替換功能，也可以使用) 
> 2. strategy protocol 定義方法，每個服從此 protocol 的物件都必須要實作該方法。
> 3. strategies 為服從 strategy protocol 的物件們。


### 規範 strategy protocol
定義好介面要有哪些功能
![](https://i.imgur.com/KAhucq0.png) 

### strategies 
Object that conform to the strategy protocol (需要實作)
![](https://i.imgur.com/1wLti4D.png)

### object using a strategy
在 viewController 裡宣告此 property, viewController 並不知道具體的 MovieRatingStrategy。我們可以直到程式運行時在決定是要哪個 MovieRatingStrategy (常常會給使用者自由選擇)

![](https://i.imgur.com/t5RFFJk.png)

![](https://i.imgur.com/cZ0Ptlt.png)
