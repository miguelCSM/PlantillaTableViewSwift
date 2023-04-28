import Cocoa

class AddClass: NSViewController {
    
    
    @IBOutlet weak var id: NSTextField!
    @IBOutlet weak var nombre: NSTextField!
    @IBOutlet weak var edad: NSTextField!
    @IBOutlet weak var vc:ViewController!
    @IBOutlet weak var addBtn: NSButton!
    @IBOutlet weak var updateBtn: NSButton!
    
    var flag:Bool = false
    var posicion:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBtn.isHidden = !flag
        addBtn.isHidden = flag
        
        if flag{
            id.integerValue = vc.personaArr[posicion].id
            nombre.stringValue = vc.personaArr[posicion].nombre
            edad.integerValue = vc.personaArr[posicion].edad
        }
    }
    
    
    @IBAction func agregarEvent(_ sender: NSButton) {
        
        vc.personaArr.append(personaModelo(Int(id.intValue),nombre.stringValue,Int(edad.intValue)))
        
        print("Persona agregada con éxito")
        
        print(vc.personaArr.count)
        
        dismiss(self)
    }
    
    
    @IBAction func actualizarEvent(_ sender: NSButton) {
        vc.personaArr[posicion] = (personaModelo(Int(id.intValue),nombre.stringValue,Int(edad.intValue)))
        
        dismiss(self)
        
    }
    
}
