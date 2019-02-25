# Model-view-controller (MVC)

![](https://i.imgur.com/YaArNdr.png)

>The model-view-controller (MVC) pattern separates objects into three types: models, views and controllers.
>
>Models hold onto application data. They are usually structs or simple classes.
>
>Views display visual elements and controls on screen. They are usually subclasses of UIView.
>
>Controllers coordinate between models and views. They are usually subclasses of UIViewController.


Key points
* Controllers 可以擁有 view 和 model 的強屬性(strong properties)，所以可以直接擁有他們的權限，並且可以擁有不只一個 model or view。
* 相反的，model 和 view 對於控制自己的 controller 不能擁有強參考(strong reference)，這樣會導致 retain cycle。
* 其中一種正確做法是，model 透過 property observing 與 controller 溝通; view 透過 IBActions 與 controller 溝通。透過這樣，達到 reuse models and views。


Explain
### Controller 擁有 model 和 view 的 strong reference
![](https://i.imgur.com/8FxhemF.png)

### Model 如何通知 Controller 發生變話，必須要更新 view?
透過屬性觀察，將 controller 裡的 model property 變成 computed property ：
![](https://i.imgur.com/vnED2BM.png)

### View 如何通知 Controller 發生變化，然後必須更新 Model？
![](https://i.imgur.com/k6YKsvH.png)

### Controller 通知 View 改變 (寫成一個 function )
![](https://i.imgur.com/jSIHBzg.png)
