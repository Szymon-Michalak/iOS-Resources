---
title: 📈⌛ Values over Time
description: A deep dive into the world of reactive programming and data streams
---

In this deep dive, we’ll explore how to tackle **real-time, asynchronous challenges** in iOS development by leveraging three powerful frameworks: **Combine**, **RxSwift**, and **Swift Concurrency**. Each of these solutions offers unique tools and patterns to manage values as they evolve over time, making it easier to build responsive, data-driven applications.

We’ll cover a range of common scenarios, from handling real-time notifications to managing dependencies between tasks. For each problem, we’ll present implementations using each framework, highlighting key differences and when to choose one approach over another. By the end, you’ll have a comprehensive understanding of how to approach these types of challenges in a way that best suits your project’s needs.

Here’s a quick reference to the documentation for each framework:

- **[Combine Documentation](https://developer.apple.com/documentation/combine)** – Apple’s reactive programming framework, introduced in iOS 13, designed to handle asynchronous events with a declarative Swift API.
- **[RxSwift Documentation](https://github.com/ReactiveX/RxSwift)** – A popular, community-driven framework that brings **Reactive Extensions** to Swift, allowing for powerful, flexible reactive programming.
- **[Swift Concurrency Documentation](https://developer.apple.com/documentation/swift/swift_standard_library/concurrency)** – A native Swift feature for handling asynchronous tasks using `async`/`await`, alongside powerful tools like `AsyncSequence` and `AsyncStream`.

Each approach is designed to handle **asynchronous events and changing values over time**, but they differ in their syntax, capabilities, and ideal use cases. As we go through each task, you’ll gain a practical understanding of how each framework can be applied to solve real-world iOS problems effectively.

---

## Task 1: **Network Requests with Retry and Error Handling**

Fetch a list of items from a REST API with a retry mechanism, attempting up to 3 times if the initial requests fail. Display the fetched data or, if the retries fail, show an error message to the user.

### Solution 1: **Combine**
In this **Combine** solution:
- **Retry Mechanism**: The `retry(3)` operator retries the request up to 3 times upon failure.
- **Error Handling**: If all attempts fail, `sink(receiveCompletion:)` captures the error and updates `errorMessage`.
- **Data Handling**: Successfully fetched items are assigned to `items`, which is observed by the UI using `@Published`.

```swift
import Combine
import Foundation

struct Item: Codable {
    let id: Int
    let name: String
}

class ViewModel: ObservableObject {
    @Published var items: [Item] = []
    @Published var errorMessage: String?
    
    private var cancellables = Set<AnyCancellable>()
    
    func fetchItems() {
        let url = URL(string: "https://api.example.com/items")!
        
        URLSession.shared.dataTaskPublisher(for: url)
            .retry(3) // Retry up to 3 times if an error occurs
            .map { $0.data }
            .decode(type: [Item].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                if case .failure(let error) = completion {
                    self.errorMessage = "Failed to load data: \(error.localizedDescription)"
                }
            }, receiveValue: { [weak self] items in
                self?.items = items
            })
            .store(in: &cancellables)
    }
}
```
### Solution 2: **RxSwift**

In this **RxSwift** solution:
- **Retry Mechanism**: The `retry(3)` operator retries the network request up to 3 times upon failure.
- **Error Handling**: If all retries fail, `onError` updates `errorMessage` to notify observers.
- **Data Handling**: Successfully decoded items are emitted to the `items` subject, which can be subscribed to by the UI.

```swift
import RxSwift
import RxCocoa

struct Item: Codable {
    let id: Int
    let name: String
}

class ViewModel {
    let items = PublishSubject<[Item]>()
    let errorMessage = PublishSubject<String>()
    
    private let disposeBag = DisposeBag()
    
    func fetchItems() {
        let url = URL(string: "https://api.example.com/items")!
        
        URLSession.shared.rx.data(request: URLRequest(url: url))
            .retry(3) // Retry up to 3 times if an error occurs
            .map { data -> [Item] in
                let decoder = JSONDecoder()
                return try decoder.decode([Item].self, from: data)
            }
            .observe(on: MainScheduler.instance)
            .subscribe(
                onNext: { [weak self] items in
                    self?.items.onNext(items)
                },
                onError: { [weak self] error in
                    self?.errorMessage.onNext("Failed to load data: \(error.localizedDescription)")
                }
            )
            .disposed(by: disposeBag)
    }
}
```

### Solution 3: **Swift Concurrency**

In this **Swift Concurrency** solution using the **Observation** framework:
- **Retry Mechanism**: We manually implement a retry mechanism using a `while` loop, which retries up to 3 times.
- **Error Handling**: After 3 failed attempts, `errorMessage` is set to notify the UI of the failure.
- **Data Handling**: If successful, `items` is populated and automatically observed by SwiftUI or other components due to the `@Observable` property wrapper.


```swift
import Foundation
import Observation

struct Item: Codable {
    let id: Int
    let name: String
}

@Observable
class ViewModel {
    var items: [Item] = []
    var errorMessage: String?

    func fetchItems() async {
        let url = URL(string: "https://api.example.com/items")!
        var attempts = 0
        
        while attempts < 3 {
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                items = try JSONDecoder().decode([Item].self, from: data)
                return // Exit if successful
            } catch {
                attempts += 1
                if attempts == 3 {
                    errorMessage = "Failed to load data: \(error.localizedDescription)"
                }
            }
        }
    }
}
```

### Summary of Differences

- **Retry Mechanism**: 
  - **Combine** and **RxSwift** offer built-in `retry` operators, simplifying retries.
  - **Swift Concurrency** requires a manual retry loop, giving full control over retries but requiring extra code.
  
- **Error Handling**:
  - **Combine** and **RxSwift** manage errors through their respective `sink` and `subscribe` methods.
  - **Swift Concurrency** uses a `do-catch` block and checks retry attempts to handle errors.
  
- **State Observation**:
  - **Combine** and **RxSwift** use `@Published` and `PublishSubject`, respectively, for reactive updates.
  - **Swift Concurrency** leverages the **Observation** framework with `@Observable`, making it a fully native Swift approach that is easy to use with SwiftUI.

---

## Task 2: **Real-Time Search with Debounce**

Implement a real-time search that updates the results as the user types, but with a debounce to avoid making a request for every keystroke. This means waiting for a short pause (e.g., 0.5 seconds) before sending the search request.

---

### Solution 1: **Combine**

```swift
import Combine
import Foundation

struct SearchResult: Codable {
    let id: Int
    let name: String
}

class SearchViewModel: ObservableObject {
    @Published var query: String = ""
    @Published var results: [SearchResult] = []
    @Published var errorMessage: String?
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        $query
            .debounce(for: .milliseconds(500), scheduler: DispatchQueue.main) // Debounce for 0.5 seconds
            .removeDuplicates()
            .flatMap { query -> AnyPublisher<[SearchResult], Never> in
                guard !query.isEmpty else {
                    return Just([]).eraseToAnyPublisher()
                }
                let url = URL(string: "https://api.example.com/search?query=\(query)")!
                return URLSession.shared.dataTaskPublisher(for: url)
                    .map { $0.data }
                    .decode(type: [SearchResult].self, decoder: JSONDecoder())
                    .catch { _ in Just([]) }
                    .eraseToAnyPublisher()
            }
            .receive(on: DispatchQueue.main)
            .assign(to: \.results, on: self)
            .store(in: &cancellables)
    }
}
```

In this **Combine** solution:
- **Debounce**: The `debounce` operator delays the search request by 0.5 seconds after the last keystroke.
- **FlatMap and Error Handling**: `flatMap` allows the query to be mapped to a network request, while `catch` handles errors by returning an empty result.
- **Real-Time Update**: The search results are directly assigned to `results`, updating the UI whenever new results are available.

### Solution 2: **RxSwift**

```swift
import RxSwift
import RxCocoa

struct SearchResult: Codable {
    let id: Int
    let name: String
}

class SearchViewModel {
    let query = BehaviorSubject<String>(value: "")
    let results = PublishSubject<[SearchResult]>()
    let errorMessage = PublishSubject<String>()
    
    private let disposeBag = DisposeBag()
    
    init() {
        query
            .debounce(.milliseconds(500), scheduler: MainScheduler.instance) // Debounce for 0.5 seconds
            .distinctUntilChanged()
            .flatMapLatest { query -> Observable<[SearchResult]> in
                guard !query.isEmpty else {
                    return Observable.just([])
                }
                let url = URL(string: "https://api.example.com/search?query=\(query)")!
                return URLSession.shared.rx.data(request: URLRequest(url: url))
                    .map { data in
                        try JSONDecoder().decode([SearchResult].self, from: data)
                    }
                    .catchAndReturn([])
            }
            .bind(to: results)
            .disposed(by: disposeBag)
    }
}
```

In this **RxSwift** solution:
- **Debounce**: The `debounce` operator with `distinctUntilChanged` prevents unnecessary requests and only triggers when the query text changes.
- **FlatMapLatest and Error Handling**: `flatMapLatest` maps each query to a network request, and `catchAndReturn([])` provides an empty result if an error occurs.
- **Real-Time Update**: Results are bound to `results`, which observers (like UI components) can reactively subscribe to.

### Solution 3: **Swift Concurrency**

```swift
import Foundation
import Observation

struct SearchResult: Codable {
    let id: Int
    let name: String
}

@Observable
class SearchViewModel {
    var query: String = "" {
        didSet { debounceSearch() }
    }
    var results: [SearchResult] = []
    var errorMessage: String?
    
    private var searchTask: Task<Void, Never>? = nil
    
    func debounceSearch() {
        searchTask?.cancel() // Cancel any existing task
        searchTask = Task {
            try await Task.sleep(nanoseconds: 500_000_000) // 0.5-second debounce
            
            await performSearch(for: query)
        }
    }
    
    private func performSearch(for query: String) async {
        guard !query.isEmpty else {
            results = []
            return
        }
        
        let url = URL(string: "https://api.example.com/search?query=\(query)")!
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let decodedResults = try JSONDecoder().decode([SearchResult].self, from: data)
            results = decodedResults
        } catch {
            errorMessage = "Failed to load search results: \(error.localizedDescription)"
        }
    }
}
```

In this **Swift Concurrency** solution:
- **Debounce**: `debounceSearch()` cancels any ongoing `Task` and starts a new one, adding a 0.5-second delay before calling `performSearch`.
- **Error Handling**: The `do-catch` block within `performSearch` handles any potential network or decoding errors.
- **Real-Time Update**: The results are directly updated in `results`, which is observed by SwiftUI due to the `@Observable` attribute.

### Summary of Differences

- **Debounce Mechanism**:
  - **Combine** and **RxSwift** leverage built-in `debounce` operators.
  - **Swift Concurrency** requires a custom debounce function with `Task.sleep`.

- **Error Handling**:
  - **Combine** and **RxSwift** use `catch` and `catchAndReturn` to handle errors and provide fallback values.
  - **Swift Concurrency** uses a `do-catch` block for error handling within the `performSearch` function.

- **State Observation**:
  - **Combine** and **RxSwift** rely on reactive properties like `@Published` and `PublishSubject`.
  - **Swift Concurrency** with **Observation** uses `@Observable`, allowing automatic UI updates.

---

## Task 3: **Form Validation and Input Handling**

Validate form fields in real-time and enable the submit button only when all fields are valid. We’ll assume a form with two fields: an email and a password. The email must follow a valid format, and the password must be at least 8 characters long.

### Solution 1: **Combine**

```swift
import Combine
import Foundation

class FormViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var isFormValid: Bool = false
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        Publishers.CombineLatest($email, $password)
            .map { email, password in
                return self.isValidEmail(email) && self.isValidPassword(password)
            }
            .assign(to: &$isFormValid)
    }
    
    private func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: email)
    }
    
    private func isValidPassword(_ password: String) -> Bool {
        return password.count >= 8
    }
}
```

In this **Combine** solution:
- **CombineLatest**: We use `Publishers.CombineLatest` to observe changes in both `email` and `password` fields.
- **Validation Logic**: `map` applies the validation logic, checking the email format and password length, and updates `isFormValid` based on both fields' validity.
- **Real-Time Update**: `@Published` ensures that `isFormValid` updates reactively, enabling or disabling the submit button in the UI.

### Solution 2: **RxSwift**

```swift
import RxSwift
import RxCocoa

class FormViewModel {
    let email = BehaviorSubject<String>(value: "")
    let password = BehaviorSubject<String>(value: "")
    let isFormValid: Observable<Bool>
    
    init() {
        isFormValid = Observable.combineLatest(email, password)
            .map { email, password in
                return self.isValidEmail(email) && self.isValidPassword(password)
            }
    }
    
    private func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: email)
    }
    
    private func isValidPassword(_ password: String) -> Bool {
        return password.count >= 8
    }
}
```

In this **RxSwift** solution:
- **CombineLatest**: `Observable.combineLatest` observes changes to both `email` and `password`.
- **Validation Logic**: `map` checks the email and password validity. The `isFormValid` observable emits `true` or `false` based on the fields' validity.
- **Real-Time Update**: `isFormValid` can be bound to the UI, updating the submit button's state in real-time.

### Solution 3: **Swift Concurrency**

```swift
import Foundation
import Observation

@Observable
class FormViewModel {
    var email: String = "" {
        didSet { validateForm() }
    }
    var password: String = "" {
        didSet { validateForm() }
    }
    var isFormValid: Bool = false
    
    private func validateForm() {
        isFormValid = isValidEmail(email) && isValidPassword(password)
    }
    
    private func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: email)
    }
    
    private func isValidPassword(_ password: String) -> Bool {
        return password.count >= 8
    }
}
```

In this **Swift Concurrency** solution using **Observation**:
- **Real-Time Validation**: The `didSet` observers on `email` and `password` trigger the `validateForm()` function, updating `isFormValid` whenever either field changes.
- **Validation Logic**: `isFormValid` is updated based on `isValidEmail` and `isValidPassword` results.
- **Real-Time Update**: Using `@Observable` automatically makes `isFormValid` observable, so any UI component that observes `FormViewModel` will reactively update.

### Summary of Differences

- **CombineLatest**:
  - **Combine** and **RxSwift** use `CombineLatest` operators to monitor changes in `email` and `password` and apply validation logic in a `map` function.
  - **Swift Concurrency** does not use `CombineLatest` but leverages `didSet` to trigger validation when fields change.

- **Validation Logic**:
  - **Combine** and **RxSwift** handle validation in their reactive pipeline with `map`.
  - **Swift Concurrency** performs validation within `validateForm()`, directly setting `isFormValid`.

- **State Observation**:
  - **Combine** and **RxSwift** use `@Published` and `BehaviorSubject`, respectively, for reactive updates.
  - **Swift Concurrency** uses `@Observable`, making the state changes natively observable.

---

## Task 4: **Real-Time Notifications with Polling**


Set up a mechanism to fetch new data from the server periodically, simulating a real-time notifications feature. For this example, we'll poll an API every 10 seconds for new messages. If there are new messages, they will be appended to the list; otherwise, no updates will be made.

---

### Solution 1: **Combine**

```swift
import Combine
import Foundation

struct Message: Codable {
    let id: Int
    let content: String
}

class NotificationViewModel: ObservableObject {
    @Published var messages: [Message] = []
    private var cancellables = Set<AnyCancellable>()
    
    func startPolling() {
        Timer.publish(every: 10, on: .main, in: .common)
            .autoconnect()
            .flatMap { _ -> AnyPublisher<[Message], Never> in
                let url = URL(string: "https://api.example.com/messages")!
                return URLSession.shared.dataTaskPublisher(for: url)
                    .map { $0.data }
                    .decode(type: [Message].self, decoder: JSONDecoder())
                    .catch { _ in Just([]) }
                    .eraseToAnyPublisher()
            }
            .receive(on: DispatchQueue.main)
            .sink { [weak self] newMessages in
                self?.messages.append(contentsOf: newMessages)
            }
            .store(in: &cancellables)
    }
}
```

In this **Combine** solution:
- **Polling with Timer**: We use `Timer.publish` to trigger the polling every 10 seconds.
- **Data Fetching**: `flatMap` makes a network request to fetch new messages. If the request fails, we return an empty array to avoid disrupting the stream.
- **Data Handling**: New messages are appended to `messages`, which the UI observes for real-time updates.

---

### Solution 2: **RxSwift**

```swift
import RxSwift
import RxCocoa

struct Message: Codable {
    let id: Int
    let content: String
}

class NotificationViewModel {
    let messages = BehaviorSubject<[Message]>(value: [])
    private let disposeBag = DisposeBag()
    
    func startPolling() {
        Observable<Int>.interval(.seconds(10), scheduler: MainScheduler.instance)
            .flatMapLatest { _ -> Observable<[Message]> in
                let url = URL(string: "https://api.example.com/messages")!
                return URLSession.shared.rx.data(request: URLRequest(url: url))
                    .map { data in
                        try JSONDecoder().decode([Message].self, from: data)
                    }
                    .catchAndReturn([])
            }
            .scan([]) { currentMessages, newMessages in
                return currentMessages + newMessages // Append new messages
            }
            .bind(to: messages)
            .disposed(by: disposeBag)
    }
}
```

In this **RxSwift** solution:
- **Polling with Interval**: `Observable.interval` triggers every 10 seconds.
- **Data Fetching**: `flatMapLatest` performs the network request, returning an empty array on error.
- **Accumulating Messages**: `scan` accumulates messages by appending new ones to the current list and emitting the updated list.

### Solution 3: **Swift Concurrency**

```swift
import Foundation
import Observation
import AsyncAlgorithms

struct Message: Codable {
    let id: Int
    let content: String
}

@Observable
class NotificationViewModel {
    var messages: [Message] = []
    private var pollingTask: Task<Void, Never>? = nil
    
    func startPolling() {
        pollingTask?.cancel() // Cancel any existing polling task if already running
        
        pollingTask = Task {
            for await _ in AsyncTimerSequence.repeating(every: .seconds(10)) {
                await fetchMessages()
            }
        }
    }
    
    func stopPolling() {
        pollingTask?.cancel() // Stop polling when needed
    }
    
    private func fetchMessages() async {
        let url = URL(string: "https://api.example.com/messages")!
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let newMessages = try JSONDecoder().decode([Message].self, from: data)
            messages.append(contentsOf: newMessages)
        } catch {
            print("Failed to fetch messages: \(error.localizedDescription)")
        }
    }
}
```

In this **Swift Concurrency** solution with **AsyncAlgorithms**:
- **Polling with AsyncTimerSequence**: We use `AsyncTimerSequence.repeating` to poll every 10 seconds asynchronously, creating an elegant, asynchronous loop without blocking the main thread.
- **Task Cancelation**: `pollingTask?.cancel()` allows us to start and stop polling as needed, controlling the task’s lifecycle.
- **Data Fetching**: `fetchMessages()` performs the network request, appending any new messages to `messages`.

### Summary of Differences

- **Polling Mechanism**:
  - **Combine** uses `Timer.publish` for periodic polling.
  - **RxSwift** uses `Observable.interval`.
  - **Swift Concurrency** with **AsyncAlgorithms** utilizes `AsyncTimerSequence.repeating` for asynchronous polling, which integrates well with the concurrency model.
  
- **Task Management**:
  - **Combine** and **RxSwift** don’t directly manage tasks, instead relying on publishers or observables for continuous polling.
  - **Swift Concurrency** manages a `Task` (`pollingTask`) explicitly, allowing for start/stop control through `cancel()`.

- **Data Accumulation**:
  - **Combine** and **RxSwift** append new messages using `sink` and `scan`, respectively.
  - **Swift Concurrency** appends new messages directly in `fetchMessages`, updating `messages` for real-time UI binding.

---

## Task 5: **Handling Complex User Interactions with Sequential Button Taps**


Implement a sequence of interactions where three buttons need to be tapped in the correct order (Button A, Button B, Button C) to unlock a special feature. If the user taps out of order, the sequence resets. This task highlights managing ordered events and handling sequences of user actions reactively.

### Solution 1: **Combine**

```swift
import Combine
import Foundation

class InteractionViewModel: ObservableObject {
    @Published var isFeatureUnlocked: Bool = false
    private var cancellables = Set<AnyCancellable>()
    
    // Enum for button sequence
    enum Button: String {
        case A, B, C
    }
    
    // Subject to track button taps
    private let buttonTapSubject = PassthroughSubject<Button, Never>()
    
    init() {
        buttonTapSubject
            .scan([]) { (sequence: [Button], newButton: Button) in
                // Reset sequence if tapped out of order
                let expectedSequence: [Button] = [.A, .B, .C]
                if sequence + [newButton] == Array(expectedSequence.prefix(sequence.count + 1)) {
                    return sequence + [newButton]
                } else {
                    return [newButton] == [.A] ? [newButton] : []
                }
            }
            .map { sequence in
                return sequence == [.A, .B, .C]
            }
            .assign(to: &$isFeatureUnlocked)
    }
    
    func tapButton(_ button: Button) {
        buttonTapSubject.send(button)
    }
}
```

In this **Combine** solution:
- **Button Sequence Tracking**: We use `PassthroughSubject` to emit button taps as events.
- **Sequence Logic with Scan**: `scan` accumulates button taps into a sequence, resetting if the order is incorrect or starting over if Button A is tapped out of sequence.
- **Unlock Feature**: When the correct sequence `[A, B, C]` is completed, `isFeatureUnlocked` is set to `true`, which the UI observes.

### Solution 2: **RxSwift**

```swift
import RxSwift
import RxCocoa

class InteractionViewModel {
    let isFeatureUnlocked = BehaviorSubject<Bool>(value: false)
    
    // Enum for button sequence
    enum Button: String {
        case A, B, C
    }
    
    // PublishSubject to track button taps
    private let buttonTapSubject = PublishSubject<Button>()
    private let disposeBag = DisposeBag()
    
    init() {
        buttonTapSubject
            .scan([]) { (sequence: [Button], newButton: Button) in
                // Reset sequence if tapped out of order
                let expectedSequence: [Button] = [.A, .B, .C]
                if sequence + [newButton] == Array(expectedSequence.prefix(sequence.count + 1)) {
                    return sequence + [newButton]
                } else {
                    return [newButton] == [.A] ? [newButton] : []
                }
            }
            .map { sequence in
                return sequence == [.A, .B, .C]
            }
            .bind(to: isFeatureUnlocked)
            .disposed(by: disposeBag)
    }
    
    func tapButton(_ button: Button) {
        buttonTapSubject.onNext(button)
    }
}
```

In this **RxSwift** solution:
- **Button Sequence Tracking**: `PublishSubject` is used to emit each button tap.
- **Sequence Logic with Scan**: `scan` maintains the sequence, resetting if tapped out of order. If Button A is tapped after an invalid tap, the sequence restarts from Button A.
- **Unlock Feature**: When the sequence `[A, B, C]` is achieved, `isFeatureUnlocked` is updated, which the UI can observe reactively.

### Solution 3: **Swift Concurrency**

```swift
import Foundation
import Observation
import AsyncAlgorithms

@Observable
class InteractionViewModel {
    var isFeatureUnlocked: Bool = false
    private var buttonTapStream = AsyncChannel<Button>()
    
    // Enum for button sequence
    enum Button: String {
        case A, B, C
    }
    
    init() {
        Task {
            await observeButtonTaps()
        }
    }
    
    func tapButton(_ button: Button) {
        Task {
            await buttonTapStream.send(button)
        }
    }
    
    private func observeButtonTaps() async {
        let expectedSequence: [Button] = [.A, .B, .C]
        var sequence: [Button] = []
        
        for await button in buttonTapStream {
            sequence.append(button)
            
            if sequence == Array(expectedSequence.prefix(sequence.count)) {
                if sequence == expectedSequence {
                    isFeatureUnlocked = true
                    sequence = [] // Reset the sequence after unlocking
                }
            } else {
                sequence = button == .A ? [button] : [] // Reset or start over if Button A is tapped
            }
        }
    }
}
```

In this **Swift Concurrency** solution with **AsyncAlgorithms**:
- **AsyncChannel for Event Stream**: `AsyncChannel` allows us to capture button taps as a continuous stream.
- **Sequence Logic**: `observeButtonTaps` runs in an async loop, tracking the sequence. If a button is tapped out of order, it resets the sequence unless it starts with Button A.
- **Unlock Feature**: Once the correct sequence `[A, B, C]` is detected, `isFeatureUnlocked` is set to `true`, notifying the UI.

### Summary of Differences

- **Event Stream**:
  - **Combine** and **RxSwift** use `PassthroughSubject` and `PublishSubject`, respectively, to emit button taps as events.
  - **Swift Concurrency** with **AsyncAlgorithms** uses `AsyncChannel` to capture button taps as an asynchronous sequence.

- **Sequence Logic**:
  - **Combine** and **RxSwift** use `scan` to maintain and check the sequence order.
  - **Swift Concurrency** manages the sequence manually in `observeButtonTaps`, providing explicit control over sequence validation.

- **Feature Unlocking**:
  - All three frameworks update `isFeatureUnlocked` when the correct sequence `[A, B, C]` is completed, enabling the UI to reactively respond.

---

## Task 6: **Animation Triggers and UI State Changes**


Implement a loading indicator that appears while data is being fetched and disappears once the data load completes. Additionally, we’ll animate the indicator’s appearance and disappearance to create a smooth transition.

### Solution 1: **Combine**

```swift
import Combine
import Foundation

class AnimationViewModel: ObservableObject {
    @Published var isLoading: Bool = false
    @Published var data: [String] = []
    
    private var cancellables = Set<AnyCancellable>()
    
    func fetchData() {
        isLoading = true
        
        let url = URL(string: "https://api.example.com/data")!
        
        URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: [String].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { [weak self] completion in
                self?.isLoading = false
                if case .failure(let error) = completion {
                    print("Error fetching data: \(error)")
                }
            }, receiveValue: { [weak self] data in
                self?.data = data
            })
            .store(in: &cancellables)
    }
}
```

In this **Combine** solution:
- **Loading State**: `isLoading` is set to `true` at the start of the fetch and `false` upon completion.
- **Animation Trigger**: `isLoading` can be observed by the UI to animate the loading indicator in/out based on its value.
- **Data Fetching**: The network request updates `data` when complete, and any errors are printed to the console.

### Solution 2: **RxSwift**

```swift
import RxSwift
import RxCocoa

class AnimationViewModel {
    let isLoading = BehaviorSubject<Bool>(value: false)
    let data = BehaviorSubject<[String]>(value: [])
    
    private let disposeBag = DisposeBag()
    
    func fetchData() {
        isLoading.onNext(true)
        
        let url = URL(string: "https://api.example.com/data")!
        
        URLSession.shared.rx.data(request: URLRequest(url: url))
            .map { data in
                try JSONDecoder().decode([String].self, from: data)
            }
            .observe(on: MainScheduler.instance)
            .subscribe(
                onNext: { [weak self] data in
                    self?.data.onNext(data)
                    self?.isLoading.onNext(false)
                },
                onError: { [weak self] error in
                    print("Error fetching data: \(error)")
                    self?.isLoading.onNext(false)
                }
            )
            .disposed(by: disposeBag)
    }
}
```

In this **RxSwift** solution:
- **Loading State**: `isLoading` emits `true` at the start and `false` when complete, signaling the UI to animate the loading indicator in/out.
- **Data Fetching**: The network request updates `data` upon successful completion, or logs an error if it fails.
- **Animation Trigger**: The UI can subscribe to `isLoading` and trigger animations based on its values.

### Solution 3: **Swift Concurrency**

```swift
import Foundation
import Observation

@Observable
class AnimationViewModel {
    var isLoading: Bool = false
    var data: [String] = []
    
    func fetchData() async {
        isLoading = true
        
        let url = URL(string: "https://api.example.com/data")!
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            self.data = try JSONDecoder().decode([String].self, from: data)
        } catch {
            print("Error fetching data: \(error)")
        }
        
        isLoading = false
    }
}
```

In this **Swift Concurrency** solution using **Observation**:
- **Loading State**: `isLoading` is set to `true` at the start and `false` after the request completes, updating the UI to animate in/out the loading indicator.
- **Data Fetching**: The asynchronous network request assigns the decoded data to `data`.
- **Animation Trigger**: Since `isLoading` is observable, UI components can animate based on its state changes.

### Summary of Differences

- **Loading State Management**:
  - **Combine** and **RxSwift** use `@Published` and `BehaviorSubject`, respectively, to track the loading state.
  - **Swift Concurrency** with **Observation** directly modifies the `isLoading` property, making it observable for UI updates.

- **Data Fetching**:
  - **Combine** and **RxSwift** use reactive operators (`map`, `decode`, `observe`) to handle data fetch and update the UI reactively.
  - **Swift Concurrency** performs data fetching with `async`/`await`, directly assigning the result to `data`.

- **Animation Trigger**:
  - All solutions enable the UI to observe `isLoading` and use it to trigger animations. However, **Combine** and **RxSwift** use reactive streams, while **Swift Concurrency** leverages property observation with `@Observable`.

---

## Task 7: **Polling and Periodic Updates**


Set up a mechanism to periodically fetch data from an API (e.g., every 15 seconds). This will allow us to display up-to-date information without requiring the user to manually refresh.

### Solution 1: **Combine**

```swift
import Combine
import Foundation

class PollingViewModel: ObservableObject {
    @Published var data: [String] = []
    private var cancellables = Set<AnyCancellable>()
    
    func startPolling() {
        Timer.publish(every: 15, on: .main, in: .common)
            .autoconnect()
            .flatMap { _ -> AnyPublisher<[String], Never> in
                let url = URL(string: "https://api.example.com/data")!
                return URLSession.shared.dataTaskPublisher(for: url)
                    .map { $0.data }
                    .decode(type: [String].self, decoder: JSONDecoder())
                    .catch { _ in Just([]) }
                    .eraseToAnyPublisher()
            }
            .receive(on: DispatchQueue.main)
            .sink { [weak self] newData in
                self?.data = newData
            }
            .store(in: &cancellables)
    }
    
    func stopPolling() {
        cancellables.removeAll()
    }
}
```

In this **Combine** solution:
- **Periodic Polling**: `Timer.publish` triggers every 15 seconds to initiate a data fetch.
- **Data Fetching**: `flatMap` performs the network request, and any errors are handled by returning an empty array.
- **Polling Control**: Calling `stopPolling()` cancels all publishers, effectively stopping the periodic updates.

### Solution 2: **RxSwift**

```swift
import RxSwift
import RxCocoa

class PollingViewModel {
    let data = BehaviorSubject<[String]>(value: [])
    private let disposeBag = DisposeBag()
    private let interval = Observable<Int>.interval(.seconds(15), scheduler: MainScheduler.instance)
    
    func startPolling() {
        interval
            .flatMapLatest { _ -> Observable<[String]> in
                let url = URL(string: "https://api.example.com/data")!
                return URLSession.shared.rx.data(request: URLRequest(url: url))
                    .map { data in
                        try JSONDecoder().decode([String].self, from: data)
                    }
                    .catchAndReturn([])
            }
            .bind(to: data)
            .disposed(by: disposeBag)
    }
}
```

In this **RxSwift** solution:
- **Periodic Polling**: `Observable.interval` emits an event every 15 seconds, triggering the data fetch.
- **Data Fetching**: `flatMapLatest` performs the network request, handling errors with `catchAndReturn([])` to return an empty array in case of failure.
- **Data Binding**: The result is bound to `data`, which the UI can observe for real-time updates.

### Solution 3: **Swift Concurrency**

```swift
import Foundation
import Observation
import AsyncAlgorithms

@Observable
class PollingViewModel {
    var data: [String] = []
    private var pollingTask: Task<Void, Never>? = nil
    
    func startPolling() {
        pollingTask?.cancel() // Cancel any existing polling task if already running
        
        pollingTask = Task {
            for await _ in AsyncTimerSequence.repeating(every: .seconds(15)) {
                await fetchData()
            }
        }
    }
    
    func stopPolling() {
        pollingTask?.cancel() // Stop polling when needed
    }
    
    private func fetchData() async {
        let url = URL(string: "https://api.example.com/data")!
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            self.data = try JSONDecoder().decode([String].self, from: data)
        } catch {
            print("Error fetching data: \(error)")
        }
    }
}
```

In this **Swift Concurrency** solution with **AsyncAlgorithms**:
- **Periodic Polling**: We use `AsyncTimerSequence.repeating` to create a repeating async sequence, polling every 15 seconds without blocking the main thread.
- **Task Control**: `pollingTask` is used to manage the task’s lifecycle, allowing for start/stop control with `startPolling` and `stopPolling`.
- **Data Fetching**: `fetchData()` performs the network request, decoding the data and updating `data` with the results.

### Summary of Differences

- **Periodic Polling**:
  - **Combine** uses `Timer.publish` for timed events.
  - **RxSwift** uses `Observable.interval`.
  - **Swift Concurrency** with **AsyncAlgorithms** uses `AsyncTimerSequence.repeating`, seamlessly integrating periodic polling into the concurrency model.

- **Task Management**:
  - **Combine** and **RxSwift** stop polling by canceling the stream of events.
  - **Swift Concurrency** uses `pollingTask` to explicitly start and stop polling, allowing for more controlled task cancellation.

- **Error Handling**:
  - **Combine** and **RxSwift** use `catch` operators to handle errors gracefully by returning an empty result.
  - **Swift Concurrency** handles errors within a `do-catch` block in `fetchData()`, logging any issues to the console.


---

## Task 8: **Data Synchronization and Offline Support**


Implement a system to save data locally when the device is offline, and sync it to a remote server once the internet connection is restored. For this example, we’ll focus on a to-do list app where new items are saved locally if the network is unavailable and uploaded to the server once the connection is re-established.

### Solution 1: **Combine**

```swift
import Combine
import Foundation

struct TodoItem: Codable, Identifiable {
    let id: UUID
    let title: String
}

class SyncViewModel: ObservableObject {
    @Published var todos: [TodoItem] = []
    private var cancellables = Set<AnyCancellable>()
    private let networkMonitor = NetworkMonitor()
    
    func addTodo(_ title: String) {
        let newTodo = TodoItem(id: UUID(), title: title)
        todos.append(newTodo)
        
        if networkMonitor.isConnected {
            syncTodos()
        } else {
            saveLocally(newTodo)
        }
    }
    
    private func saveLocally(_ item: TodoItem) {
        // Save item to local storage (e.g., UserDefaults, CoreData, or file)
        print("Saved locally: \(item.title)")
    }
    
    private func syncTodos() {
        // Fetch unsynced items from local storage and upload them
        let url = URL(string: "https://api.example.com/todos")!
        
        Just(todos)
            .setFailureType(to: URLError.self)
            .flatMap { todos in
                URLSession.shared.dataTaskPublisher(for: url)
                    .tryMap { data, _ in
                        return try JSONDecoder().decode([TodoItem].self, from: data)
                    }
                    .eraseToAnyPublisher()
            }
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                if case .failure(let error) = completion {
                    print("Sync failed: \(error)")
                }
            }, receiveValue: { [weak self] updatedTodos in
                self?.todos = updatedTodos
                print("Synced successfully")
            })
            .store(in: &cancellables)
    }
}
```

In this **Combine** solution:
- **Network Monitoring**: `networkMonitor.isConnected` checks network availability.
- **Local Storage**: `saveLocally` is a placeholder for saving data locally when offline.
- **Synchronization**: `syncTodos` uploads unsynced items to the server when the connection is restored, and the response updates `todos`.

### Solution 2: **RxSwift**

```swift
import RxSwift
import RxCocoa

struct TodoItem: Codable, Identifiable {
    let id: UUID
    let title: String
}

class SyncViewModel {
    let todos = BehaviorSubject<[TodoItem]>(value: [])
    private let disposeBag = DisposeBag()
    private let networkMonitor = NetworkMonitor()
    
    func addTodo(_ title: String) {
        var currentTodos = try! todos.value()
        let newTodo = TodoItem(id: UUID(), title: title)
        currentTodos.append(newTodo)
        todos.onNext(currentTodos)
        
        if networkMonitor.isConnected {
            syncTodos()
        } else {
            saveLocally(newTodo)
        }
    }
    
    private func saveLocally(_ item: TodoItem) {
        // Save item to local storage (e.g., UserDefaults, CoreData, or file)
        print("Saved locally: \(item.title)")
    }
    
    private func syncTodos() {
        let url = URL(string: "https://api.example.com/todos")!
        
        todos
            .take(1) // Take the latest todo list once
            .flatMap { todos -> Observable<[TodoItem]> in
                return URLSession.shared.rx.data(request: URLRequest(url: url))
                    .map { data in
                        try JSONDecoder().decode([TodoItem].self, from: data)
                    }
                    .catchAndReturn([])
            }
            .subscribe(onNext: { [weak self] updatedTodos in
                self?.todos.onNext(updatedTodos)
                print("Synced successfully")
            }, onError: { error in
                print("Sync failed: \(error)")
            })
            .disposed(by: disposeBag)
    }
}
```

In this **RxSwift** solution:
- **Network Monitoring**: We use `networkMonitor.isConnected` to check if the device is online.
- **Local Storage**: `saveLocally` saves data locally when offline.
- **Synchronization**: `syncTodos` fetches and uploads unsynced items to the server, updating `todos` upon success or handling errors if syncing fails.

### Solution 3: **Swift Concurrency**

```swift
import Foundation
import Observation
import AsyncAlgorithms

struct TodoItem: Codable, Identifiable {
    let id: UUID
    let title: String
}

@Observable
class SyncViewModel {
    var todos: [TodoItem] = []
    private var syncTask: Task<Void, Never>? = nil
    private let networkMonitor = NetworkMonitor()
    
    func addTodo(_ title: String) {
        let newTodo = TodoItem(id: UUID(), title: title)
        todos.append(newTodo)
        
        if networkMonitor.isConnected {
            startSyncing()
        } else {
            saveLocally(newTodo)
        }
    }
    
    private func saveLocally(_ item: TodoItem) {
        // Save item to local storage (e.g., UserDefaults, CoreData, or file)
        print("Saved locally: \(item.title)")
    }
    
    private func startSyncing() {
        syncTask?.cancel() // Cancel any existing sync task
        
        syncTask = Task {
            for await isConnected in networkMonitor.networkStatusStream() {
                if isConnected {
                    await syncTodos()
                }
            }
        }
    }
    
    private func syncTodos() async {
        let url = URL(string: "https://api.example.com/todos")!
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let syncedTodos = try JSONDecoder().decode([TodoItem].self, from: data)
            todos = syncedTodos
            print("Synced successfully")
        } catch {
            print("Sync failed: \(error)")
        }
    }
}
```

In this **Swift Concurrency** solution with **AsyncAlgorithms**:
- **Network Monitoring**: `networkMonitor.networkStatusStream()` is an async sequence emitting network status changes, triggering `syncTodos` when the connection is restored.
- **Local Storage**: `saveLocally` is used to store data locally if the device is offline.
- **Synchronization**: `syncTodos` performs an asynchronous sync with the server when online, updating `todos` or logging an error on failure.

### Summary of Differences

- **Network Monitoring**:
  - **Combine** and **RxSwift** rely on checking `networkMonitor.isConnected` before attempting synchronization.
  - **Swift Concurrency** uses `AsyncAlgorithms` to continuously listen for network status changes via `networkStatusStream()`.

- **Data Storage and Syncing**:
  - **Combine** and **RxSwift** perform synchronization when connectivity is restored by calling `syncTodos` directly.
  - **Swift Concurrency** uses an asynchronous loop with `syncTask`, syncing data when the network status changes.

- **Error Handling**:
  - **Combine** and **RxSwift** handle errors in their reactive pipelines with `catch` and `catchAndReturn`.
  - **Swift Concurrency** handles errors within an async `do-catch` block in `syncTodos`.

---

## Task 9: **Managing Dependencies Between Multiple Asynchronous Tasks**


Implement a mechanism to fetch data from two different APIs, process both sets of data, and display the combined result. Both tasks should run concurrently, but we need to wait until both are complete before displaying the final result.

### Solution 1: **Combine**

```swift
import Combine
import Foundation

class DependencyViewModel: ObservableObject {
    @Published var combinedData: [String] = []
    
    private var cancellables = Set<AnyCancellable>()
    
    func fetchData() {
        let url1 = URL(string: "https://api.example.com/data1")!
        let url2 = URL(string: "https://api.example.com/data2")!
        
        let publisher1 = URLSession.shared.dataTaskPublisher(for: url1)
            .map { $0.data }
            .decode(type: [String].self, decoder: JSONDecoder())
            .catch { _ in Just([]) }
        
        let publisher2 = URLSession.shared.dataTaskPublisher(for: url2)
            .map { $0.data }
            .decode(type: [String].self, decoder: JSONDecoder())
            .catch { _ in Just([]) }
        
        Publishers.Zip(publisher1, publisher2)
            .map { data1, data2 in
                return data1 + data2 // Combine both results
            }
            .receive(on: DispatchQueue.main)
            .sink { [weak self] combinedData in
                self?.combinedData = combinedData
            }
            .store(in: &cancellables)
    }
}
```

In this **Combine** solution:
- **Concurrent Tasks**: `publisher1` and `publisher2` fetch data concurrently.
- **Combine Results**: `Publishers.Zip` waits for both publishers to complete, then combines their results into a single array.
- **Error Handling**: Each publisher uses `catch` to handle errors and provides an empty array if a request fails.

### Solution 2: **RxSwift**

```swift
import RxSwift
import RxCocoa

class DependencyViewModel {
    let combinedData = BehaviorSubject<[String]>(value: [])
    private let disposeBag = DisposeBag()
    
    func fetchData() {
        let url1 = URL(string: "https://api.example.com/data1")!
        let url2 = URL(string: "https://api.example.com/data2")!
        
        let request1 = URLSession.shared.rx.data(request: URLRequest(url: url1))
            .map { data in
                try JSONDecoder().decode([String].self, from: data)
            }
            .catchAndReturn([])
        
        let request2 = URLSession.shared.rx.data(request: URLRequest(url: url2))
            .map { data in
                try JSONDecoder().decode([String].self, from: data)
            }
            .catchAndReturn([])
        
        Observable.zip(request1, request2)
            .map { data1, data2 in
                return data1 + data2 // Combine both results
            }
            .bind(to: combinedData)
            .disposed(by: disposeBag)
    }
}
```

In this **RxSwift** solution:
- **Concurrent Tasks**: `request1` and `request2` are two observables that fetch data concurrently.
- **Combine Results**: `Observable.zip` waits until both observables complete, then combines their results into a single array.
- **Error Handling**: Each observable uses `catchAndReturn` to provide an empty array if a request fails.

### Solution 3: **Swift Concurrency**

```swift
import Foundation
import Observation

@Observable
class DependencyViewModel {
    var combinedData: [String] = []
    
    func fetchData() async {
        let url1 = URL(string: "https://api.example.com/data1")!
        let url2 = URL(string: "https://api.example.com/data2")!
        
        do {
            async let data1 = fetchData(from: url1)
            async let data2 = fetchData(from: url2)
            
            let combinedData = try await data1 + data2
            self.combinedData = combinedData
        } catch {
            print("Error fetching data: \(error)")
        }
    }
    
    private func fetchData(from url: URL) async throws -> [String] {
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([String].self, from: data)
    }
}
```

In this **Swift Concurrency** solution:
- **Concurrent Tasks with async let**: `async let` runs `fetchData(from:)` concurrently for `url1` and `url2`.
- **Combine Results**: `try await data1 + data2` waits until both tasks complete and combines their results.
- **Error Handling**: Errors are handled in the `do-catch` block, which prints an error message if any task fails.

### Summary of Differences

- **Concurrent Execution**:
  - **Combine** uses separate publishers for each request and combines them with `Publishers.Zip`.
  - **RxSwift** uses two observables and combines them with `Observable.zip`.
  - **Swift Concurrency** uses `async let` to execute both fetch tasks concurrently, providing a straightforward concurrency model.

- **Combining Results**:
  - **Combine** and **RxSwift** use `Zip` operators to combine results when both requests complete.
  - **Swift Concurrency** directly combines results with `try await`, keeping the syntax clear and concise.

- **Error Handling**:
  - **Combine** and **RxSwift** use `catch` operators to handle errors and provide fallback values.
  - **Swift Concurrency** uses a `do-catch` block, handling errors for both tasks within the same structure.


---

## Task 10: **Real-Time Notifications and Alerts**


Set up a real-time notification system to listen for events from a server and display an alert when new data is received. For simplicity, we’ll simulate server-sent events with a timer that emits a new "notification" every few seconds.

### Solution 1: **Combine**

```swift
import Combine
import Foundation

class NotificationViewModel: ObservableObject {
    @Published var latestNotification: String = ""
    private var cancellables = Set<AnyCancellable>()
    
    func startListeningForNotifications() {
        Timer.publish(every: 5, on: .main, in: .common)
            .autoconnect()
            .map { _ in
                return "New notification received at \(Date())"
            }
            .sink { [weak self] notification in
                self?.latestNotification = notification
                print(notification)
            }
            .store(in: &cancellables)
    }
    
    func stopListeningForNotifications() {
        cancellables.removeAll()
    }
}
```

In this **Combine** solution:
- **Simulated Notifications**: A `Timer.publish` emits a new notification string every 5 seconds.
- **Notification Handling**: The `sink` operator updates `latestNotification` with each emitted event, which the UI can observe to display alerts.
- **Start/Stop Listening**: Calling `stopListeningForNotifications()` removes all subscriptions, stopping notifications.

### Solution 2: **RxSwift**

```swift
import RxSwift
import RxCocoa

class NotificationViewModel {
    let latestNotification = BehaviorSubject<String>(value: "")
    private let disposeBag = DisposeBag()
    
    func startListeningForNotifications() {
        Observable<Int>.interval(.seconds(5), scheduler: MainScheduler.instance)
            .map { _ in
                return "New notification received at \(Date())"
            }
            .subscribe(onNext: { [weak self] notification in
                self?.latestNotification.onNext(notification)
                print(notification)
            })
            .disposed(by: disposeBag)
    }
    
    func stopListeningForNotifications() {
        disposeBag = DisposeBag() // Resetting the disposeBag will clear all subscriptions
    }
}
```

In this **RxSwift** solution:
- **Simulated Notifications**: `Observable.interval` emits a new notification string every 5 seconds.
- **Notification Handling**: Each emitted notification updates `latestNotification`, which observers (such as UI components) can subscribe to for real-time alerts.
- **Start/Stop Listening**: By reinitializing `disposeBag`, all subscriptions are disposed of, effectively stopping notifications.

### Solution 3: **Swift Concurrency**

```swift
import Foundation
import Observation
import AsyncAlgorithms

@Observable
class NotificationViewModel {
    var latestNotification: String = ""
    private var notificationTask: Task<Void, Never>? = nil
    
    func startListeningForNotifications() {
        notificationTask?.cancel() // Cancel any existing task if already running
        
        notificationTask = Task {
            for await notification in notificationStream() {
                latestNotification = notification
                print(notification)
            }
        }
    }
    
    func stopListeningForNotifications() {
        notificationTask?.cancel() // Stop the task to stop listening for notifications
    }
    
    private func notificationStream() -> AsyncStream<String> {
        AsyncStream { continuation in
            Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { _ in
                let notification = "New notification received at \(Date())"
                continuation.yield(notification)
            }
        }
    }
}
```

In this **Swift Concurrency** solution with **AsyncStream**:
- **Simulated Notifications**: `notificationStream()` creates an `AsyncStream` that yields a new notification every 5 seconds.
- **Notification Handling**: `startListeningForNotifications()` runs an async loop that assigns each emitted notification to `latestNotification`, which the UI can observe.
- **Start/Stop Listening**: `notificationTask` manages the task lifecycle, allowing control over when notifications start and stop.

### Summary of Differences

- **Simulating Notifications**:
  - **Combine** uses `Timer.publish` to emit events on a fixed interval.
  - **RxSwift** uses `Observable.interval` to create a similar periodic emission of events.
  - **Swift Concurrency** with **AsyncStream** generates notifications within an asynchronous sequence, leveraging a timer to yield a notification every few seconds.

- **Notification Management**:
  - **Combine** and **RxSwift** both rely on publishers/observables to emit notifications, updating the UI reactively.
  - **Swift Concurrency** creates an asynchronous stream to listen for notifications, using a `Task` to manage the stream’s lifecycle.

- **Start/Stop Listening**:
  - **Combine** and **RxSwift** cancel notifications by removing subscribers or resetting the dispose bag.
  - **Swift Concurrency** uses task cancellation (`notificationTask?.cancel()`) to stop listening to the notification stream.
