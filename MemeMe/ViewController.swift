//
//  ViewController.swift
//  MemeMe
//
//  Created by André Martingo on 05/04/2018.
//  Copyright © 2018 André Martingo. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,
UINavigationControllerDelegate {

    @IBOutlet weak var bottomTextField: UITextField!
    @IBOutlet weak var topTextField: UITextField!
    @IBOutlet weak var imagePickerView: UIImageView!
    
    @IBOutlet weak var cameraButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        imagePickerView.contentMode = .scaleAspectFit
        cameraButton.isEnabled = UIImagePickerController.isSourceTypeAvailable(.camera)
        textFieldInit(topTextField, initalText: "TOP")
        textFieldInit(bottomTextField, initalText: "BOTTOM")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textFieldInit(_ textField: UITextField, initalText: String){
        textField.text = initalText
        textField.textAlignment = .center
    }
    
    @IBAction func pickAnImageFromAlbum(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func pickAnImageFromCamera(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [String : Any]){
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imagePickerView.image = image
        }
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
        dismiss(animated: true, completion: nil)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField){
        textField.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }

}

