//
//  ViewController.swift
//  TinkerBellBook
//
//  Created by Gizemnur Özden on 5.09.2023.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
   
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var myTinkerBell = [TinkerBell]()
    var chosenTinkerBell : TinkerBell?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //tinkerbell objects
        let tinkerbell = TinkerBell(tinkerbellname: "Tinker Bell", tinkerbellJob: "İşçi Peri", tinkerbellImage: UIImage(named: "tinkerbell")!)
        let fawn  = TinkerBell(tinkerbellname: "Fawn", tinkerbellJob: "Hayvan Perisi", tinkerbellImage: UIImage(named: "fawn")!)
        let rosetta = TinkerBell(tinkerbellname: "Rosetta", tinkerbellJob: "Bahçe Perisi", tinkerbellImage: UIImage(named: "rosetta")!)
        let silvermist = TinkerBell(tinkerbellname: "Silver Mist", tinkerbellJob: "Su Perisi", tinkerbellImage: UIImage(named: "silvermist")!)
        let iridessa = TinkerBell(tinkerbellname: "İridessa", tinkerbellJob: "Işık Perisi", tinkerbellImage: UIImage(named: "iridessa")!)
        let vidia = TinkerBell(tinkerbellname: "Vidia", tinkerbellJob: "Rüzgar Perisi", tinkerbellImage: UIImage(named: "vidia")!)
        
        myTinkerBell.append(tinkerbell)
        myTinkerBell.append(fawn)
        myTinkerBell.append(rosetta)
        myTinkerBell.append(silvermist)
        myTinkerBell.append(iridessa)
        myTinkerBell.append(vidia)
        
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myTinkerBell.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = UITableViewCell()
        cell.textLabel?.text = myTinkerBell[indexPath.row].name
        return cell
    }
    
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenTinkerBell = myTinkerBell [indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedTinkerbell = chosenTinkerBell
        }
    }
}



