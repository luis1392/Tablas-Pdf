//
//  ViewController2.swift
//  tablas
//
//  Created by Luis Enrique Tierrafria Rodriguez on 1/22/17.
//  Copyright © 2017 Luis Enrique Tierrafria Rodriguez. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet var vistaWeb: UIWebView!
    
    var nombrePdfRecibido:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mostrarPdf()
        
        // Do any additional setup after loading the view.
        print("Se activo la func viewDidLoad en pantalla 2")
    }
    
    func mostrarPdf() {
        
        //Direccion del archivo pdf
        let direccionPdf = URL(fileURLWithPath: Bundle.main.path(forResource: nombrePdfRecibido!, ofType: "pdf", inDirectory: "PDFs")!)
        
        //Tranformar archivos pdf a Data
        let datosPdf = try? Data(contentsOf: direccionPdf )
        
        //Mostrar datos enla vista Web
        
        vistaWeb.load(datosPdf!, mimeType: "application/pdf", textEncodingName: "utf-8", baseURL: direccionPdf)
    }
    
    
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print("Se activo la funcdidReceiveMemoryWarning en pantalla 2")
    }
    //Funciones del ciclo de VIDA del ViewController
    override func loadView() {
        super.loadView()
        print("Se activo la func loadView en pantalla 2")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("Se activo la func viewWillAppear en pantalla 2")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("Se activo la func viewDidAppear en pantalla 2")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("Se activo la func viewWillDisappear en pantalla 2")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("Se activo la func viewDidDisappear en pantalla 2")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
