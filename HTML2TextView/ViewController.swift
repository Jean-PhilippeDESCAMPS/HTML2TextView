//
//  ViewController.swift
//  HTML2TextView
//
//  Created by Jean-Philippe DESCAMPS on 05/02/2016.
//  Copyright © 2016 Jean-Philippe. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let theString = "<a href=\"mailto:jeanphilippe.descamps@critizr.com\">Envoyer un mail ?</a>"
        
        let a = try! NSAttributedString(data: theString.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)!,
            options: [NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType],
            documentAttributes: nil)
        
        textView.attributedText = theAttributedString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textView(textView: UITextView, shouldInteractWithURL URL: NSURL, inRange characterRange: NSRange) -> Bool {
        print(URL)
        return true
    }

}

