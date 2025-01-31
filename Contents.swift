import Foundation


Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false) { timer in
    let message = "Hello, World!"
    
    print(message)
}

nonisolated(unsafe) var counter = 0

func startTimer() {
  Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { ref in
    report(t: ref)
  }
}

func report(t: Timer) {
  print("Timer fired!")
  counter += 1
  if counter >= 5 {
    let message = "Five seconds have passed!"
    t.invalidate()
  }
}

startTimer()
