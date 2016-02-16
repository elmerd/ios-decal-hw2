//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var returnKeyboardButton: UIButton!
    @IBOutlet var spaceKeyboardButton: UIButton!
    @IBOutlet var deleteKeyboardButton: UIButton!
    @IBOutlet var helloKeyboardButton: UIButton!
    @IBOutlet var byeKeyboardButton: UIButton!
    @IBOutlet var goodnKeyboardButton: UIButton!
    @IBOutlet var catKeyboardButton: UIButton!
    @IBOutlet var fishKeyboardButton: UIButton!
    @IBOutlet var ffKeyboardButton: UIButton!
    @IBOutlet var tyKeyboardButton: UIButton!
    

    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        returnKeyboardButton.addTarget(self, action: "returnAction", forControlEvents: .TouchUpInside)
        spaceKeyboardButton.addTarget(self, action: "spaceAction", forControlEvents: .TouchUpInside)
        deleteKeyboardButton.addTarget(self, action: "deleteAction", forControlEvents: .TouchUpInside)
        helloKeyboardButton.addTarget(self, action: "helloAction", forControlEvents: .TouchUpInside)
        goodnKeyboardButton.addTarget(self, action: "goodnAction", forControlEvents: .TouchUpInside)
        catKeyboardButton.addTarget(self, action: "catAction", forControlEvents: .TouchUpInside)
        ffKeyboardButton.addTarget(self, action: "ffAction", forControlEvents: .TouchUpInside)
        tyKeyboardButton.addTarget(self, action: "tyAction", forControlEvents: .TouchUpInside)
        fishKeyboardButton.addTarget(self, action: "fishAction", forControlEvents: .TouchUpInside)
        byeKeyboardButton.addTarget(self, action: "byeAction", forControlEvents: .TouchUpInside)

    }
    
    func deleteAction() {
        (textDocumentProxy as UIKeyInput).deleteBackward()
    }
    
    func spaceAction() {
        (textDocumentProxy as UIKeyInput).insertText(" ")
    }
    
    func returnAction() {
        (textDocumentProxy as UIKeyInput).insertText("\n")
    }
    
    func helloAction() {
        (textDocumentProxy as UIKeyInput).insertText("Hola")
    }
    
    func byeAction() {
        (textDocumentProxy as UIKeyInput).insertText("Adios")
    }
    
    func tyAction() {
        (textDocumentProxy as UIKeyInput).insertText("Gracias")
    }
    
    func ffAction() {
        (textDocumentProxy as UIKeyInput).insertText("Papas Fritas")
    }
    
    func catAction() {
        (textDocumentProxy as UIKeyInput).insertText("Gato")
    }
    
    func fishAction() {
        (textDocumentProxy as UIKeyInput).insertText("Pescado")
    }
    
    func goodnAction() {
        (textDocumentProxy as UIKeyInput).insertText("Buenas Noches")
    }
    

}
