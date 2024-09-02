---
title: Efficiently Displaying The Fibonacci Sequence
description: A snippet for creating a UITableView that efficiently displays the Fibonacci sequence using memoization and handling integer overflow.
---

A snippet for creating a UITableView that efficiently displays the Fibonacci sequence using memoization and handling integer overflow.

<details>

**URL:** https://github.com/aryamansharda/Fibonacci

**Author:** `Aryaman Sharda`

**Tags:**  
`Fibonacci`, `iOS`, `Swift`, `UITableView`, `Memoization`

**Platforms Supported:** iOS

**Swift Version:** 5.0
</details>

### Key Points
- Utilize memoization for efficient Fibonacci sequence calculation.
- Handle integer overflow gracefully.
- Perform calculations on a background thread to keep the UI responsive.

### Use Cases
- Displaying the Fibonacci sequence in a UITableView.
- Managing large sequences with efficient memory usage.
- Avoiding UI blockages during intensive calculations.

### Alternative Approaches
- Recursive approach without memoization (inefficient for large sequences).
- Iterative approach with a single loop (simple but doesn't handle dynamic UITableView updates well).
- Using a third-party library for big number calculations (if handling extremely large sequences).

### Performance Considerations
- Ensure calculations do not block the main thread.
- Use memoization to avoid redundant calculations.
- Monitor for integer overflow and handle gracefully.

### Code

```swift
protocol FibonacciCalculable {
    func nthFibonacciNumber(_ n: Int) throws -> UInt64?
}

final class FibonacciCalculator: FibonacciCalculable {
    private var sequenceCache = [Int: UInt64?]()
    var maxFibonacciPositionReached = false
    
    private enum FibonacciError: LocalizedError {
        case overflow
        var errorDescription: String? {
            switch self {
            case .overflow:
                return "Maximum Swift UInt64 value reached."
            }
        }
    }

    func nthFibonacciNumber(_ n: Int) throws -> UInt64? {
        guard !maxFibonacciPositionReached else { return nil }
        guard n > 1 else { return UInt64(n) }
        
        let nMinusOneFibonacci = try sequenceCache[n - 1] as? UInt64 ?? nthFibonacciNumber(n - 1)
        sequenceCache[n - 1] = nMinusOneFibonacci
        
        let nMinusTwoFibonacci = try sequenceCache[n - 2] as? UInt64 ?? nthFibonacciNumber(n - 2)
        sequenceCache[n - 2] = nMinusTwoFibonacci
        
        guard let nMinusOne = nMinusOneFibonacci, let nMinusTwo = nMinusTwoFibonacci else { return nil }
        
        let (sum, didOverflow) = nMinusOne.addingReportingOverflow(nMinusTwo)
        if didOverflow {
            maxFibonacciPositionReached = true
            throw FibonacciError.overflow
        }
        
        return sum
    }
}

final class FibonacciTableViewController: UITableViewController {
    private let fibonacciCalculator = FibonacciCalculator()
    private let serialQueue = DispatchQueue(label: "serial")
    private let pageAmount = 5
    private var dataSource = [UInt64]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for position in 0..<pageAmount {
            generateFibonacciNumber(at: position)
        }
        tableView.reloadData()
    }
    
    private func generateFibonacciNumber(at position: Int) {
        do {
            if let nextFibonacciNumber = try fibonacciCalculator.nthFibonacciNumber(position) {
                dataSource.append(nextFibonacciNumber)
            }
        } catch {
            DispatchQueue.main.async { [weak self] in
                self?.presentDefaultErrorAlert(withTitle: "Error", message: error.localizedDescription)
            }
        }
    }
}

// MARK: - UITableView Data Source
extension FibonacciTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FibonacciCell", for: indexPath)
        cell.textLabel?.text = "\(dataSource[indexPath.row])"
        return cell
    }

    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        guard indexPath.row + pageAmount >= dataSource.count && !fibonacciCalculator.maxFibonacciPositionReached else { return }
        
        serialQueue.async { [weak self] in
            guard let self = self else { return }
            for position in self.dataSource.count..<self.dataSource.count + self.pageAmount {
                self.generateFibonacciNumber(at: position)
            }
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
}

extension UIViewController {
    func presentDefaultErrorAlert(withTitle title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        present(alertController, animated: true, completion: nil)
    }
}
```

### Usage Example

```swift
// No additional usage example necessary as the UITableView setup demonstrates usage.
```

### Related Snippets
- [Creating an Analytics Service](#)
- [Handling Large Numbers in Swift](#)

### References
- [Swift Documentation](https://swift.org/documentation/)
- [Fibonacci Sequence on Wikipedia](https://en.wikipedia.org/wiki/Fibonacci_number)

<LinkCard title="Read Full Snippet" href="https://github.com/aryamansharda/Fibonacci" />
