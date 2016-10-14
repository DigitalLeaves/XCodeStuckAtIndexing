# XCode 8 Stuck At Indexing

This repository contains a sample project that will make XCode 8 get stuck at "indexing" and never be able to compile the project. It's a really simple project, just some buttons in a UIViewController and a method that initializes an array of the buttons and try to do some operations on them.

To test this, you just need to uncomment the content of the following updateButtonsAppearance() method:

```
    // Un-comment this method to make XCode stuck forever at "indexing"
    fileprivate func updateButtonsAppearance() {
        /*
        for button in [buttonKey0, buttonKey1, buttonKey2, buttonKey3, buttonKey4, buttonKey5, buttonKey6, buttonKey7, buttonKey8, buttonKey9, buttonKeyLeftParenthesis, buttonKeyRightParenthesis, buttonKeyPoint, buttonKeyComma, buttonKeyHyphen] {
            button?.setTitleColor(normalFontColor, for: .normal)
            button?.setTitleColor(pressedFontColor, for: [.selected, .highlighted])
            button?.setBackgroundImage(normalBackgroundImage, for: .normal)
            button?.setBackgroundImage(pressedBackgroundImage, for: [.selected, .highlighted])
        }
         */
    }
```
XCode will immediately fail to build and will get stuck at "indexing". Usually CPU usage will sky rocket, until exhausting all memory in the system.

Also, a method called thisCalculationIsOhSoComplex() demonstrates the problems that swift 3 compiler and XCode 8 have with some operations, tagged as "too complex" when trying to build the project.

```
    // Un-comment the line below to get a weird error indicating that the expression is too complex (sigh).
    func thisCalculationIsOhSoComplex() {
        let inputRadius = 1.0
        //let radius = UInt32(floor(inputRadius * 3.0 * CGFloat(sqrt(2 * M_PI)) / 4 + 0.5))
    }
    
```
