
import Foundation

struct Todo {
  let userText: String
  let isComplete: Bool
  
  init(title: String, isComplete: Bool = false) {
    self.userText = title
    self.isComplete = isComplete
  }
  
  func completeToggled() -> Todo {
    return Todo(title: userText, isComplete: !isComplete)
  }
}
