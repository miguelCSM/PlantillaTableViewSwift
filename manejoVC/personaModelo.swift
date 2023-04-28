import Cocoa

class personaModelo: NSObject {
    
    @objc dynamic var id:Int
    @objc dynamic var nombre:String
    @objc dynamic var edad:Int
    
    init(_ id: Int, _ nombre: String, _ edad: Int) {
        self.id = id
        self.nombre = nombre
        self.edad = edad
    }
}
