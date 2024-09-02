---
title: "Real-time Communication Using WebSockets"
description: "Learn how to implement real-time communication in your Vapor project using WebSockets to enable constant, open connections for instant data exchange."
---

WebSockets enable real-time communication between a server and client by maintaining an open connection, allowing data to be sent and received instantly without repeated requests.

<details>

**URL:** [https://docs.vapor.codes/4.0/websockets/](https://docs.vapor.codes/4.0/websockets/)

**Source:** [Book: Server-Side Swift](#)

**Author:** `[Author Name]`

**Tags:**  
`WebSockets`, `Vapor`, `Swift`, `Real-time Communication`

**Platforms Supported:** macOS, Linux

**Swift Version:** 5.x
</details>

## Implementing WebSockets in Vapor

### Step 1: Create a WebSocket Endpoint
In `Routes.swift`, add a WebSocket route:
```swift
app.webSocket("talk-back") { req, ws in
    ws.onText { ws, text in
        if text.lowercased() == "hello" {
            ws.send("Is it me you're looking for...?")
        }
    }
}
```
This route listens for WebSocket connections and responds with a message when "hello" is received.

### Step 2: Connect with an iOS Client
Using the `Starscream` library, connect an iOS app to the WebSocket server:
```swift
guard let url = URL(string: "ws://127.0.0.1:8080/talk-back") else { return }

let socket = WebSocket(url: url)
socket.connect()
```
Add an action to send a message:
```swift
@IBAction func onSendRequest(_ sender: Any) {
    socket.write(string: "Hello")
}
```

### Step 3: Test the WebSocket Communication
Run the Vapor server and iOS app. When the message "Hello" is sent from the app, the server will respond with "Is it me you're looking for...?"

## How it Works
WebSockets maintain a continuous, open connection, unlike traditional HTTP requests. This allows real-time communication between a client and server without the need for repeated requests or polling.

## Advanced WebSocket Handling

### Monitoring Connection Health
Use `onPing` and `onPong` to monitor the connection:
```swift
ws.onPing { ws in }
ws.onPong { ws in }
```

### Sending and Receiving Data
Send text or binary data:
```swift
ws.send("Message text")
ws.send([1, 2, 3]) // Binary data
```
Handle completion with an event loop promise:
```swift
let promise = eventLoop.makePromise(of: Void.self)
ws.send("Message", promise: promise)
promise.futureResult.whenComplete { result in
    // Handle result
}
```

### Closing the Connection
Close the WebSocket connection gracefully:
```swift
ws.close()
ws.onClose.whenComplete { result in
    // Handle closure
}
```

## Conclusion
WebSockets in Vapor enable efficient real-time communication for use cases like chat applications, live dashboards, and more.

## Related Snippets
- [WebSocket Documentation in Vapor](#)
- [Building Real-Time Features in iOS](#)

<LinkCard title="Learn More about Vapor WebSockets" href="https://docs.vapor.codes/4.0/websockets/" />
