# Swift-basic-LED
<hr/>

<h3 align="center"> 🎥 시뮬레이터 🎥 </h3>

<p align="center"> 
  <img src="https://user-images.githubusercontent.com/91595135/158627423-7ced7c1c-6e7a-4e26-a5a0-9394927c878c.gif">
</p>
<hr/>


<h3 align="center">🔧 func review 🔧</h3>


<h4> 🚀changeTextColor🚀 </h4>

삼항연산자 이용하여 yellowButton 을 눌렀을때 alpha 값을 1 아니면 0.2

```swift

self.yellowButton.alpha = color == UIColor.yellow ? 1 : 0.2

```

<h4> 🚀changeBackgroundColor🚀 </h4>


```swift

self.blackButton.alpha = color == UIColor.black ? 1 : 0.2

```

<h4> 🚀tapTextColorButton🚀 </h4>

yellowButton 을 눌렀을때 func changeTextColor 에 .yellow 를 넘겨주고 textColor 에게도 yellow 를 넘겨준다

```swift

if sender == self.yellowButton {
  self.changeTextColor(color: .yellow)
  self.textColor = .yellow
}

```
