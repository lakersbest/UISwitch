import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var swTaiwan: UISwitch!
    @IBOutlet weak var swUK: UISwitch!
    @IBOutlet weak var swJapan: UISwitch!
    @IBOutlet weak var lbMessage: UILabel!

    /* 不論哪一個Switch改變值都會呼叫此方法以檢查各個Switch的開關狀態 */
    @IBAction func switchValueChanged(_ sender: Any) {
        var text = "你選擇了: \n"
        var count = 0
        /* 如果Switch是開的狀態就擷取上面的文字，且計數器count加1 */
        if swTaiwan.isOn {
            text += "- iOS\n"
            count += 1
        }
        
        if swUK.isOn {
            text += "- Android\n"
            count += 1
        }
        
        if swJapan.isOn {
            text += "- Microsoft\n"
            count += 1
        }
        
        text += "total: \(count)\n"
        /* 將文字串接後的結果顯示在lbMessage上 */
        lbMessage.text = text
    }
}

