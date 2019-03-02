# Memento pattern
只要想保存並稍後回復 object 狀態，就可以使用 Memento pattern 
可以讓 object 被儲存或釋放，使用時包含三個部分：

![](https://i.imgur.com/bGWCpbi.png)

>1. Originator 代表要被儲存或釋放的物件
>2. Memento 代表儲存狀態
>3. CareTaker 要求 Originator 進行儲存，並收到 Menento 作為回應。並負責保留 Menento 狀態，提供給 Originator 來恢復原本狀態。

以遊戲來做例子的話，originator 就是目前玩家狀態(血量，等級..)，memento 就是用來儲存遊戲資料，caretaker 則是遊戲系統。

通常，使用 Encoder 來 encode Originator 狀態到 Memento，使用 Decoder 來 decode Memento 回復 Originator。(ex. JSONEncoder and JSONDecoder)


### Originator
Conform Codable, Swift 會自動將 object encoder or decoder ，型態也會自動依照外部
![](https://i.imgur.com/lGFbZHK.png)


### Memento
基本上就是系統 (Data) 本身
![](https://i.imgur.com/vUWDkJ0.png)

### CareTaker 
控制 memento (系統)(這邊應該是 xcode) ， 儲存目前 Originator 狀態 or 讀取，通常會使用 codable 來進行讀取和儲存 。
![](https://i.imgur.com/SaAzez0.png)
