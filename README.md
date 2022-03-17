# Swift-basic-LED
<hr/>

<h3 align="center"> 🎥 시뮬레이터 🎥 </h3>

<p align="center"> 
  <img src="https://user-images.githubusercontent.com/91595135/158627423-7ced7c1c-6e7a-4e26-a5a0-9394927c878c.gif">
</p>
<hr/>


<h3 align="center">🔧 func review 🔧</h3>

<h2> SettingViewController </h2>

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

<h4> 🚀tapBackgroundColorButton🚀 </h4>

```swift

if sender == self.blackButton {
  self.changeBackgroundColor(color: .black)
  self.backgroundColor = .black
  }

```

<h4> 🚀tapSaveButton🚀 </h4>

ViewController 에 데이터 전송

```swift
self.delegate?.changedSetting(
  text: self.textField.text,
  textColor: self.textColor,
  backgroundColor: self.backgroundColor
)
self.navigationController?.popViewController(animated: true)
```
<h2> ViewController </h2>

<h4> 🚀prepare🚀 </h4>

SettingViewController Downcasting 전달받은 데이터 저장

```swift
if let settingViewController = segue.destination as? SettingViewController {
      settingViewController.delegate = self
      settingViewController.ledText = self.contentsLabel.text
      settingViewController.textColor = self.contentsLabel.textColor
      settingViewController.backgroundColor = self.view.backgroundColor ?? .black //만약 옵셔널이면 블랙
    }
  }
```
