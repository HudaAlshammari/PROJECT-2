//
//  DiscripCall.swift
//  Marssai
//
//  Created by Huda N S on 03/04/1443 AH.
//

import UIKit

class MenueController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var tableViwe: UITableView!
    //array back to struct
    var arrayProduct = [Pruducts]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViwe.delegate = self
        tableViwe.dataSource = self
        
        //Adding products to the TableView using the Stract
        arrayProduct.append(Pruducts.init(name: NSLocalizedString("Urmaki sushi", comment: ""), price: 73.00 , discrip: NSLocalizedString("detailsProduct1", comment: ""), photo: UIImage(named: "Soshi1")!))
        
        arrayProduct.append(Pruducts.init(name: NSLocalizedString("Oshi Sushi", comment: ""), price: 80.00 , discrip: NSLocalizedString("detailsProduct2", comment: ""), photo: UIImage(named: "img13")!))
        
        
        arrayProduct.append(Pruducts.init(name: NSLocalizedString("Marssai Sushi Cocktail", comment: ""), price: 98.00 , discrip: NSLocalizedString("detailsProduct3", comment: ""), photo: UIImage(named: "img8")!))
        
        arrayProduct.append(Pruducts.init(name: NSLocalizedString("Hoso Maki Roll", comment: "") , price: 88.00 , discrip: NSLocalizedString("detailsProduct4", comment: ""), photo: UIImage(named: "img23")!))
        
        
        arrayProduct.append(Pruducts.init(name: NSLocalizedString("Crab salad", comment: ""), price: 44.00 , discrip: NSLocalizedString("detailsProduct5", comment: ""), photo: UIImage(named: "Soshi1")!))
        
        
        arrayProduct.append(Pruducts.init(name: NSLocalizedString("Shrimp", comment:"" ), price: 44.00 , discrip: "Crispy shrimp with cocktail sauce", photo: UIImage(named: "img4")!))
        
        arrayProduct.append(Pruducts.init(name: "Chicken tikka masala", price: 77.00 , discrip: "Djmsa marsai dish with indian flavor", photo: UIImage(named: "img12")!))
        arrayProduct.append(Pruducts.init(name: "Fettuccine", price: 45.00 , discrip: "Fettuccine with italian flavor", photo: UIImage(named: "img2")!))
        arrayProduct.append(Pruducts.init(name: "Risotto Seafood", price: 55.00 , discrip: "Tasting pleasure in Marssai", photo: UIImage(named: "img9")!))
        arrayProduct.append(Pruducts.init(name: "Beef Lasagna", price: 65.00 , discrip: "Lasagna with fresh meat", photo: UIImage(named: "img3")!))
        arrayProduct.append(Pruducts.init(name: "Hot kibok", price: 33.00 , discrip: "Chili flavored kibok", photo: UIImage(named: "img10")!))
        arrayProduct.append(Pruducts.init(name: "Appetizer mix", price: 32.00 , discrip: "Marssai special appetizer", photo: UIImage(named: "img14")!))
        arrayProduct.append(Pruducts.init(name: "Tabbouleh", price: 38.00 , discrip: "Tabbouleh pineapple", photo: UIImage(named: "img7")!))
    }
    //function to display products in Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayProduct.count
    }
    //Insert the cell at a specific location in the table view.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let call = tableViwe.dequeueReusableCell(withIdentifier: "MenuCell") as! MenuCell
        let data = arrayProduct[indexPath.row]
        call.setupCell(photo: data.photo, name: data.name, price: data.price, discrip: data.discrip)
        return call
    }
    //function of determining the width and height of the cell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

//struct to view product details
struct Pruducts {
    let name : String
    let price : Double
    let discrip : String
    let photo : UIImage
}
