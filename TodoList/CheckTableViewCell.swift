
import UIKit

protocol CheckTableViewCellDelegate: AnyObject {
  func checkTableViewCell(_ cell: CheckTableViewCell, didChagneCheckedState checked: Bool)
}

class CheckTableViewCell: UITableViewCell {

  @IBOutlet weak var checkbox: Checkbox!
  @IBOutlet weak var label: UILabel!
  
  weak var delegate: CheckTableViewCellDelegate?

  
  @IBAction func checked(_ sender: Checkbox) {
   
    delegate?.checkTableViewCell(self, didChagneCheckedState: checkbox.checked)
  }
  
  func set(title: String, checked: Bool) {
    label.text = title
    set(checked: checked)
  }
  
  func set(checked: Bool) {
    checkbox.checked = checked
  }
  
 
  

}
