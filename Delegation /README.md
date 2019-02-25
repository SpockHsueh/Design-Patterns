# Delegation pattern
![](https://i.imgur.com/5m0VwLu.png)

>使物件能夠使用另一個“幫助“物件來提供數據或執行任務，而不是自己執行任務，此設計模式可以分為三個部分：

>1. 需要委托的物件，也稱為委託物件(delegating object)。它是具有委託的物件。(委托通常使用 weak property 以避免 retain cycle)
>2. 委託協議(delegate protocol)，定義應該實施的方法。
>3. 委托(delegate)，它是實現委托協議的幫助物件。

### UITableViewDataSource and UITableViewDelegate 都是 delegate protocols, 定義了幫助物件必須實作的方法。
![](https://i.imgur.com/Pe33YB8.png)

![](https://i.imgur.com/eciCPAY.png)
