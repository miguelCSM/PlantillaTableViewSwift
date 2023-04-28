import Cocoa

class ViewController: NSViewController {
    
    @objc dynamic var personaArr:[personaModelo] = []
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        // agregar
        
        if(segue.identifier == "addSegue"){
            (segue.destinationController as! AddClass).vc = self
        }
    }
    
    
}

