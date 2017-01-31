//
//  ViewController.swift
//  tablas
//
//  Created by Luis Enrique Tierrafria Rodriguez on 1/22/17.
//  Copyright © 2017 Luis Enrique Tierrafria Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var contenidoCeldas = ["pdf1","pdf2", "pdf3"]

    @IBOutlet var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Se activo la func viewDidLoad en pantalla 1")
        
        table.dataSource = self
        table.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contenidoCeldas.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = UITableViewCell(style:UITableViewCellStyle.default, reuseIdentifier:"Cell")
        celda.textLabel?.text = contenidoCeldas[indexPath.row]
        return celda
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let idPdfSeleccionado = indexPath.row
        self.performSegue(withIdentifier: "pantallaDosSegue", sender: idPdfSeleccionado)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pantallaDosSegue" {
            let idPdfSeleccionadoRecibido = sender as! Int
            
            let objPantallaDos:ViewController2 = segue.destination as! ViewController2
            
            objPantallaDos.nombrePdfRecibido = contenidoCeldas[idPdfSeleccionadoRecibido]
            
        }
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print("Se activo la funcdidReceiveMemoryWarning en pantalla 1")
    }
    
    //Funciones del ciclo de VIDA del ViewController
    override func loadView() {
        super.loadView()
        print("Se activo la func loadView en pantalla 1")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("Se activo la func viewWillAppear en pantalla 1")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("Se activo la func viewDidAppear en pantalla 1")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("Se activo la func viewWillDisappear en pantalla 1")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("Se activo la func viewDidDisappear en pantalla 1")
    }


}

