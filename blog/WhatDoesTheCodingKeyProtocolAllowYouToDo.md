---
slug: WhatDoesTheCodingKeyProtocolAllowYouToDo
title: What does the CodingKey protocol allow you to do?
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

In the event that the keys in a JSON response do not match the variable names in your `Codable` model exactly, you can use the `CodingKey` protocol to bridge specific properties that differ only in naming.

Simply put, the `CodingKey` protocol provides you with more granular control of the `Codable` protocol’s serialization and deserialization behavior.We can utilize thisprotocolwith the help of a nested enum defined within our Codable model.

Here’s an example JSON:

```json
{
"url": "https://dynaimage.cdn.cnn.com/cnn/best-cakes.jpg",
"img_caption": "Japanese Dessert",
"img_source": "CNN"
}
```

We may want to pick more Swifty names for our variables, so our corresponding `Codable` model may look like this:

```swift
struct Article: Codable {
    let url: String
    let caption: String
    let source: String
}
```
Since the property names and the JSON response’s keys differ,Codable’s default deserialization behavior will fail here.

We’ll need to implement the `CodingKey` protocol:
```swift
struct Article: Codable {
    let url: String
    let caption: String
    let source: String

    enum CodingKeys: String, CodingKey {
        case url
        case caption = "img_caption"
        case source = "img_source"
}
}
```


Now, we are able to influence `Codable’s` deserialization behavior and the JSON response can be converted to an `Article` without issue.
