
# 🏦계산기2 _ 웨일's 민트🧮


## 📖 목차
🍀 [소개](#-소개) <br>
👨‍💻 [팀원](#-팀원) <br>
⏱️ [타임라인](#-타임라인) <br>
👀 [시각화된 프로젝트 구조](#-시각화된-프로젝트-구조) <br>
💻 [실행 화면](#-실행-화면) <br>
🧨 [트러블 슈팅](#-트러블-슈팅) <br>
📚 [참고 링크](#-참고-링크) <br>
👥 [팀 회고](#-팀-회고) <br>

</br>

## 🍀 소개
쉿! 비밀스럽게 민트와 웨일이 만든 계산기.
사용자는 숫자패드와 기호를 눌러 정수와 실수의 사칙연산을 할 수 있습니다.

⚠️ 주의 ⚠️ 
- 연산자 우선 순위를 무시하고 입력 순서로 계산 되는 어딘가 요상한 계산기입니다.
- 혹시라도 돈 계산을 하고 싶으시다면 다른 계산기를 추천드립니다.🫣

</br>

## 👨‍💻 팀원
| 🐬Whales🐬 | 😈MINT😈 |
| :--------: | :--------: |
| <Img src = "https://hackmd.io/_uploads/rk7CplUPn.jpg"  width="200" height="300"> | <Img src = "https://hackmd.io/_uploads/H1BNni4Pn.jpg"  width="200" height="300"> |
|[Github Profile](https://github.com/WhalesJin) |[Github Profile](https://github.com/mint3382) |


</br>

## ⏱️ 타임라인
|날짜|내용|
|:--:|--|
|2023.06.12.| - Queue 구현 linked list로 전환 |
|2023.06.13.| - linked list test 추가 <br> - test 병합 |
|2023.06.14.| - NumberFormatter 수정 <br> - Form Manager 구현 <br> - UILabel+, UIStackView+ 구현 |
|2023.06.15.| - Calculator Manager 구현 <br> - 네이밍 및 컨벤션 수정 |
|2023.06.16.| - 네이밍 및 컨벤션 수정 |


</br>

## 👀 시각화된 프로젝트 구조
### ℹ️ File Tree
````
Calculator
    ├── Extension
    │   ├── String+
    │   └── Double+
    │   └── UILabel+
    │   └── UIStackView+
    ├── Model
    │   ├── Node
    │   ├── Linkedlist
    │   ├── Queueable
    │   ├── CalculatorItemQueue
    │   ├── CalculateItem
    │   ├── Operator
    │   ├── Formula
    │   ├── ExpressionParser
    │   ├── FormManager
    │   ├── CalculatorManager
    ├── View
    │   ├── LaunchScreen
    │   ├── Main
    ├── Controller
    │   ├── AppDelegate
    │   ├── SceneDelegate
    │   ├── CalculateViewController
    ├── Resource
    │   ├── Assets
    │   ├── Info
    ├── CalculatorTests
        ├── TestPlan
        ├── ExpressionParserTests
        ├── FormulaTests 
        ├── CalculatorItemQueueTests
````

### 📐 Diagram
<p align="center">
<img width="800" src= "https://hackmd.io/_uploads/S1fm2F_vh.png" >

</br>

## 💻 실행 화면

| AC 버튼 | CE 버튼 | +/- 버튼 |
|:--------:|:--------:|:--------:|
|<img src="https://hackmd.io/_uploads/ByiQ3SmPh.gif" width="250">|<img src="https://hackmd.io/_uploads/Hy6UnBmPn.gif" width="250">|<img src="https://hackmd.io/_uploads/BJyO3Hmwh.gif" width="250">|

| 정수 연산 | 소수 연산 | 실수 연산 |
|:--------:|:--------:|:--------:|
|<img src="https://hackmd.io/_uploads/ryu8ArmD2.gif" width="250">|<img src="https://hackmd.io/_uploads/HJFH0HmP2.gif" width="250">|<img src="https://hackmd.io/_uploads/Byefa1qOD3.gif" width="250">|

| ÷ 0 | 10 ÷ 3 | 5 ÷ 3 |
|:--------:|:--------:|:--------:|
|<img src="https://hackmd.io/_uploads/Hy090Smv3.gif" width="250">|<img src="https://hackmd.io/_uploads/rJkh0BXvn.gif" width="250">|<img src="https://hackmd.io/_uploads/B1i3CHXDn.gif" width="250">|

| 0버튼 예외처리 | dot 버튼 예외처리 | 결과값 예외처리 |
|:--------:|:--------:|:--------:|
|<img src="https://hackmd.io/_uploads/B1RXkUXwh.gif" width="250">|<img src="https://hackmd.io/_uploads/SkdOl9_Dn.gif" width="240">|<img src="https://hackmd.io/_uploads/ByJ8yLQwn.gif" width="250">|

| 연산이 길어질 경우 자동 스크롤 | 천단위 구분 기호 | dot으로 끝날 경우 수식 표현 |
|:--------:|:--------:|:--------:|
|<img src="https://hackmd.io/_uploads/SkbbxLXP3.gif" width="250">|<img src="https://hackmd.io/_uploads/ByG0y9dv3.gif" width="250">|<img src="https://hackmd.io/_uploads/Syb1g8QP2.gif" width="250">|



</br>

## 🧨 트러블 슈팅

1️⃣ **`Linked  List` vs `Double Stack`** <br>
-
🔒 **문제점** <br>
그 전 계산기 프로젝트의 step 2의 `ExpressionParser` 타입, `Formula` 타입, `String`의 `split(with:)` 메서드의 구현은 둘 다 같은 방법을 사용했어서 비교하여 선택할 필요가 없었습니다. 그러나 스텝 1의 경우 웨일은 `linked list`를, 민트는 `Double stack`을 사용하여 선택에 대한 논의가 있었습니다. 웨일은 `append`와 `removeFirst` 메서드의 시간복잡도가 `O(1)`으로 낮아서 `linked list`를 구현하였고 민트는 `linked list`의 가장 큰 장점인 중간 삽입을 `queue`에서는 사용하지 않고, `linked list` 구현을 위해 `node` 타입을 추가로 구현하는 것이 불필요한 메모리를 사용하는 것 같아서 `Double Stack`을 구현하였습니다.

🔑 **해결방법** <br>
논의 끝에 `Double Stack`은 `dequeue`를 위해 `reversed()`를 사용할 때 시간 복잡도가 `O(n)`이 되므로 이를 줄이기 위해서, 그리고 `Queable protocol`을 활용해 SOLID를 신경 쓴 부분에서 `linked list`가 더 나은 방법이라고 생각해 이것으로 선택하였습니다.

<br>

2️⃣ **`UILabel`과 `UIStackView`의 `ViewController`로부터의 분리** <br>
-
🔒 **문제점** <br>
`CalculateViewContorller`에서 코드베이스로 `UIStackView`와 `UILabel`을 매번 설정하고 만들어서 사용하니 `CalculateViewController`의 내용이 점점 길어져서 이 `View Controller`의 역할을 더 줄이고 싶었습니다.

🔑 **해결방법** <br>
두 가지 방법을 찾을 수 있었습니다.
1. `extension`으로 `convenience init`을 사용하여 조건들을 설정해주는 방법
2. `Custom Stack View`를 구현하는 방법
그 중에서 `extension`을 사용하는 방법이 더 저희의 이해도에 맞는 것 같아 이것으로 구현하였습니다.
```swift
extension UILabel {
    convenience init(text: String, font: UIFont = .preferredFont(forTextStyle: .title2), textColor: UIColor = .white) {
        self.init(frame: .zero)
        self.text = text
        self.font = font
        self.textColor = textColor
    }
}

extension UIStackView {
    convenience init(firstLabel: UILabel, secondLabel: UILabel, spacing: CGFloat = 8, alignment: Alignment = .bottom) {
        self.init(frame: .zero)
        self.spacing = spacing
        self.alignment = alignment
        self.addArrangedSubview(firstLabel)
        self.addArrangedSubview(secondLabel)
    }
}
```

`convenience init`은 보조적인 것으로 필요한 경우 생성하여 사용할 수 있습니다. 이때 `self` 키워드를 붙여주기 위해 `self.init`이 필요합니다. `(frame: .zero)`는 기본값으로 빈 것을 나타냅니다.

이를 사용하여 `ViewController`에서 `stackView`와 `Label`을 구현하는 과정을 분리할 수 있었습니다.
<br>

3️⃣ **`Button method`의 `ViewController`로부터 분리** <br>
-
🔒 **문제점** <br>
연산자 버튼을 터치했을 때 스택뷰가 쌓이도록 코드를 구현하면서 새로운 스택뷰를 반복적으로 만들어주는 것을 보고 `makeCurrentFormulaLabelStackView` 라는 메서드를 따로 만들어 호출하는 형식으로 진행하였습니다. 그랬더니 `CalculateViewController`의 내용이 점점 길어져서 이 `View Controller`의 역할을 더 줄이고 싶었습니다.

현재 CalculateViewController가 하고 있는 일을 구별해보니
- 사용자의 입력 받기
- 각각 받아온 입력을 상황에 맞게 가공하기
- 가공된 입력을 토대로 계산을 요청하거나, 새로운 뷰를 만들어 넣기 

이렇게 여러가지 일을 하고 있는 것을 보고 역할 분리를 진행해 보았습니다.

- 사용자의 입력 받기 -> CalculateViewController
- 각각 받아온 입력을 상황에 맞게 가공하기 -> FormManager
- 가공된 입력을 토대로 계산을 요청하거나, 새로운 뷰를 만들어 넣기 -> CalculatorManager


🔑 **해결방법** <br>
`ViewController`에서 버튼이 눌려질 때 해야하는 일들과 검증해야하는 조건들을 다른 `Manager` 객체로 분리하였습니다. 옵셔널을 반환값으로 주어 `nil`인 경우는 `ViewController`에서 그 버튼을 누른 경우 `return`이 되게 하였고, 값이 있는 경우는 그 값을 `label`의 `text`로 입력해 주었습니다. 

이렇게 변경하였더니 수식을 추가하는 `addCurrentFormula` 메서드에 대해서도
- `addCurrentFormula` : `ViewController`에서는 `StackView`에 수식이 추가되는 것이고 
```swift
private mutating func addFormula(_ currentLabelText: String, _ buttonText: String = "") {
    let operandText = FormManager.transformResult(from: (currentLabelText)).replacingOccurrences(of: ",", with: "")

    formulasUntilNow += " \(buttonText) \(operandText) "
}
```
- `addCurrentFormulaOnView` : `CalculatorManager`에서는 `parse`에 넣을 문자열에 수식이 추가되는 것으로 분리하여 바꿀 수 있었습니다. 전체적으로 조금 더 `Controller`와 `Model`의 역할에 맞게 분리할 수 있었습니다. 
```swift
private func addCurrentFormulaOnView() {
    guard let operatorLabelText = currentOperatorLabel.text,
          let operandLabelText = currentOperandLabel.text else {
        return
    }
        
    setCurrentFormulaViewOnScroll(operatorLabelText, FormManager.transformResult(from: operandLabelText))
}
```
- `ViewController`의 `OperandsButton`에서는 `CalculatorManager`에 `View`로부터 입력된 값을 넘기기만 한 후 그 결과를 옵셔널 바인딩만 진행하여 버튼 `action`을 성공하게 할지 안할지 결정합니다.
```swift
@IBAction func tappedOperandsButton(_ sender: UIButton) {
    guard let number = sender.currentTitle,
          let operandLabelText = currentOperandLabel.text,
          let labelText = calculatorManager.verifyButton(for: number, currentLabel: operandLabelText) else {
        return
    }

    currentOperandLabel.text = labelText
}
```

- `Calculator Manager` 에서는 `ViewController`로부터 값을 전달받아 조건에 따라 `nil`이나 양식에 맞게 변환한 값을 반환합니다.
```swift
private func verifyOperandLabel(_ currentLabelText: String, _ buttonText: String) -> String? {
    guard isCalculated == false,
          (currentLabelText + buttonText).count <= 20 else {
        return nil
    }

    guard currentLabelText != "0" else {
        return buttonText
    }

    return FormManager.transformResult(from: currentLabelText + buttonText)
}
```
<br>

4️⃣ **`NumberFormatter` -> 네임스페이스의 프로퍼티로 수정** <br>
-
🔒 **문제점** <br>
계산기 요구사항을 맞추기위해 `NumberFormatter`를 사용하는 데에 있어서 민트와 웨일의 방법이 달랐습니다.
- 민트는 직접 넣을 수 있도록 `String`을 매개변수로 받아서 `String` 타입을 반환하는 메서드로 구현하였고
``` swift
private func formattingNumber(_ input: String) -> String {
    let formatter = NumberFormatter()
    let number = NSDecimalNumber.init(string: input)

    formatter.maximumSignificantDigits = 15
    formatter.numberStyle = .decimal
    formatter.roundingMode = .halfUp
    formatter.usesSignificantDigits = true
        
    return formatter.string(from: number) ?? "NaN"
}
```

- 웨일은 `NumberFormatter` 자체의 메서드를 불러오도록 `NumberFormatter` 타입을 반환하는 메서드로 구현하였습니다.
``` swift
func formatter() -> NumberFormatter {
    let numberFormatter = NumberFormatter()

    numberFormatter.numberStyle = .decimal
    numberFormatter.roundingMode = .halfUp
    numberFormatter.maximumFractionDigits = 20

    return numberFormatter
}
```

🔑 **해결방법** <br>
- 최종적으로 네임스페이스를 이용해 `NumberFormatter`를 만들어주면 인스턴스 생성도 필요하지 않고 연산 프로퍼티를 이용해 구현하여 로직을 `ViewController`에서 분리할 수 있어서 효율성 측면에서도 가독성 측면에서도 좋다고 생각이 되어 아래와 같이 코드를 구현하였습니다.
``` swift
enum FormManager {
    static let numberFormatter = NumberFormatter()
    
    static var configuredNumberFormatter : NumberFormatter {
        self.numberFormatter.numberStyle = .decimal
        self.numberFormatter.maximumFractionDigits = 19
        self.numberFormatter.maximumIntegerDigits = 20
        
        return self.numberFormatter
    }
}
```

<br>

5️⃣ **`weak` 키워드를 이용한 `removeFirst` 메서드 수정** <br>
-
🔒 **문제점** <br>
`removeFirst` 메서드를 구현할 때 고려했던 부분이 <br>
    1. 비어있다면 `nil` 반환 <br>
    2. 노드가 하나라면 `head`와 `tail` 모두 `nil`을 주고 원래 `head`의 `data` 반환 <br>
    3. 그 외의 경우는 `head`를 두 번째로 넘기고 `count` 하나 줄이며 원래 `head`의 `data` 반환 <br>

이렇게 세 가지였습니다.
    
```swift
private var tail: Node<T>?
private(set) var count: Int = 0

mutating func removeFirst() -> T? {
    guard !isEmpty else {
        return nil
    }

    let data = head?.data

    if count == 1 {
        head = nil
        tail = nil
        count = 0
    } else {
        head = head?.next
        count -= 1
    }

    return data
}
```
- 리팩토링을 진행하면서 보니 `count`라는 프로퍼티가 뚜렷하게 필요한 부분이 보이지 않아 삭제하고 싶었고 이에 따라 문제가 되는 부분이 `removeFirst`메서드 뿐이었습니다.
노드가 하나일 때 실행되는 로직을 보면 `head`를 `nil`로 바꿔주는 부분은 `head?.next`와 일맥상통하고, `count`는 지워줄거라 문제가 되지 않는데 `tail`에 대한 고민이 많았습니다. `tail`을 직접 `nil`로 바꿔주지 않는다면 계속 메모리 상에 살아있다가 나중에 새로 노드를 만들어줄 때 해제되기 때문에 `메모리적 낭비`가 생긴다고 생각하였습니다.

🔑 **해결방법** <br>
그러다 선택한 방법이 `weak` 키워드였습니다. `weak` 키워드를 이용해 약한 참조를 하면 `ARC`로 인해 자동으로 `tail`의 노드가 해제되는 방법으로 해결할 수 있었습니다.

```swift
private weak var tail: Node<T>?

mutating func removeFirst() -> T? {
    let data = head?.data

    head = head?.next

    return data
}
```

<br>

6️⃣ **`if` vs `guard`** <br>
-
🔒 **문제점** <br>
만약이라는 조건문인 `if`문과 `early exit` 이라는 특징을 가진 `guard`문의 코드 안에서의 역할이 비슷하여 코드를 구현하는 동안 여러 부분에서 문맥상 어떤 방법이 좋을지 고민을 하였습니다.

🔑 **해결방법** <br>
`early exit` 이라는 특징에 초점을 잡아서 `return`을 하고 메서드가 끝나는 경우 `guard` 문을 주로 사용하였습니다.
```swift
guard input.hasSuffix(".") else {
    return input
}

return input.replacingOccurrences(of: ".", with: "")
```
그리고 어떤 메서드는 로직을 읽어보면 문맥상 `만약에`라는 조건문이 더 자연스럽다고 느껴져서 `if` 문으로 수정하였습니다.
- before
```swift
guard output != "-0" else {
    return "0"
}

return output
```
- after
```swift
if output == "-0" {
    return "0"
} else {
    return output
}
```



<br>

## 📚 참고 링크
- [🍎Apple Docs: Number Formatter](https://developer.apple.com/documentation/foundation/numberformatter)
- [🍎Apple Docs: Protocols](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/protocols/)
- [🍎Apple Docs: Extensions](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/extensions/)
- [🍎Apple Docs: UIScrollView](https://developer.apple.com/documentation/uikit/uiscrollview)
- [🍎Apple Docs: ARC](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/automaticreferencecounting/)
- <Img src = "https://github.com/mint3382/ios-calculator-app/assets/124643545/56986ab4-dc23-4e29-bdda-f00ec1db809b" width="20"/> [야곰닷넷: 오토레이아웃 정복하기](https://yagom.net/courses/autolayout/)
- <Img src = "https://hackmd.io/_uploads/ByTEsGUv3.png" width="20"/> [blog: 연산 프로퍼티](https://babbab2.tistory.com/119)
- <Img src = "https://hackmd.io/_uploads/ByTEsGUv3.png" width="20"/> [blog: LinkedList vs DoubleStack](https://velog.io/@yeahg_dev/Queue-타입-구현-Linked-List-Double-Stack)
- <Img src = "https://hackmd.io/_uploads/ByTEsGUv3.png" width="20"/> [blog: removeArrangedSubview](https://ios-development.tistory.com/1367)
- <Img src = "https://hackmd.io/_uploads/ByTEsGUv3.png" width="20"/> [blog: stackView property](https://vanillacreamdonut.tistory.com/240#Alignment-1)
- <Img src = "https://hackmd.io/_uploads/ByTEsGUv3.png" width="20"/> [blog: UIStackView 코드로 작성하기](https://velog.io/@sun02/UIStackView-코드로-작성하기)

</br>

## 👥 팀 회고
- [팀 회고 링크](https://github.com/mint3382/ios-calculator-app/wiki/%F0%9F%8F%A6%EA%B3%84%EC%82%B0%EA%B8%B02-_-%EC%9B%A8%EC%9D%BC's-%EB%AF%BC%ED%8A%B8%F0%9F%A7%AE)

