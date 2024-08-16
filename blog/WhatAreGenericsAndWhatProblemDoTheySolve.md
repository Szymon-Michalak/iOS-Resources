---
slug: WhatAreGenericsAndWhatProblemDoTheySolve
title: What are generics and what problem do they solve?
authors: [ace-the-ios-interview]
tags: [general]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**

  **Further Reading:**

</details>

:::info[TL/DR]

:::

Generic classes and functions not only allow you to write more reusable code, but they also help you write less code overall. In simple terms, generics allow you to write the code once, but apply it to a variety of different data types.

While the syntax appears daunting at first, after some practice, generics become much more approachable.

Consider a function,exists(), which simply checksif some specific value exists within an array of elements:
```swift
func exists<T: Equatable>(item:T, elements:[T]) -> Bool
```

This function declaration states that we are going to pass something intoexists()that conforms to `Equatable`(see `<T: Equatable>`). We don't know what entity that will be yet, but we promise it will implement the `Equatable` protocol when the time comes.

We use the variable `T` to represent this placeholdertype. The method declaration then continues on to say that the remaining parameters will also expect some input matching the type of `T`.

With this method, we can use an input array of anyEquatabletype and easily check if it contains the target element -item. We are free touse any custom objects, structs, primitive data types, or anything else that implementsEquatable.

Since the items in elements all implement the `Equatable` protocol, we can simply use `==` to check for equality:

```swift
// Here's our generic exists() function
func exists<T: Equatable>(item:T, elements:[T]) -> Bool {
    for element in elements {
        if item == element {
            return true
        }
    }

    return false
}

// The main takeaway here is that we've written the code once, but

// we can apply it over a wide variety of data types.

// Output: true
exists(item: "1", elements: ["1", "2", "3", "4"]))

// Output: false
exists(item: - 1 , elements: [ 1 , 2 , 3 , 4 ])

// Output: true
exists(item: CGPoint(x: 0 , y: 0 ), elements: [CGPoint(x: 0 , y: 0 ),
CGPoint(x: 0 , y: 1 ),
CGPoint(x: 0 , y: 2 )])
```

Here's an advanced Swift example:

```swift
extension UIView {
// We're saying that `T` is eventually going to be a `UIView`.
//
// It could be a `UIButton`, `UIImageView`, or
// an ordinary `UIView` - it doesn't matter.
//
// Now, we can load any `UIView` or a subclass from a `.nib`.

    class func fromNib<T: UIView>() -> T {
        return Bundle(for: T.self).loadNibNamed(String(describing:T.self), owner: nil, options: nil)![ 0 ] as! T
    }
}

// Usage: let view = RestaurantView.fromNib()
// Usage: let cell = PictureCell.fromNib()
// Usage: let photoGallery = GalleryView.fromNib()
```
