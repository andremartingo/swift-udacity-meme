//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MemeTableViewCell : UIView {
    
    var titLelabel: UILabel = UILabel()
    var imageField : UIImageView = UIImageView()
    
    override init(frame: CGRect = CGRect.zero) {
        super.init(frame: CGRect.zero)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("Not implemented")
    }
    
    func configure(title: String, image: UIImage) {
        
        self.titLelabel.text = title
        self.imageField.image = image
        
        configureViews()
    }
    
    func configureViews() {
        
        addSubview(titLelabel)
        addSubview(imageField)
        
        imageField.translatesAutoresizingMaskIntoConstraints = false
        
        //Image
        imageField.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imageField.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        imageField.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        imageField.widthAnchor.constraint(equalToConstant: 60).isActive = true
        imageField.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        titLelabel.translatesAutoresizingMaskIntoConstraints = false
        
        // TitleLabel
        titLelabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        titLelabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        //Right
        titLelabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        //Left
        titLelabel.leadingAnchor.constraint(equalTo: self.imageField.trailingAnchor, constant: 15).isActive = true
        
        titLelabel.textColor = .blue
        
    }
}
//
//class MyViewController : UIViewController {
//    override func loadView() {
//        let view = UIView()
//        view.backgroundColor = .white
//
//        let label = UILabel()
//        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
//        label.text = "Hello World!"
//        label.textColor = .black
//
////        self.view.addSubview(cell)
//        self.view = view
//    }
//}


let image = UIImage.init()
let cell = MemeTableViewCell.init()

cell.configure(title: "ola", image: image)


//let label = UILabel.init()
//label.textColor = .blue
//label.text = "jnonjkn"
//label.sizeToFit()
//
//cell.addSubview(label)

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = cell
