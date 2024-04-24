//
//  ViewController.swift
//  Inicio_ARKit
//
//  Created by dam2 on 24/4/24.
//

import UIKit
import ARKit

class ViewController: UIViewController {

    @IBOutlet weak var sceneView: ARSCNView!
    
    let configuration = ARWorldTrackingConfiguration()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Configurar opciones y ejecutar el sceneView
        self.sceneView.debugOptions = [ARSCNDebugOptions.showWorldOrigin, ARSCNDebugOptions.showFeaturePoints]
        self.sceneView.session.run(configuration)
    }
    
    @IBAction func dibujar(_ sender: Any) {
        let node = SCNNode()
        node.position = SCNVector3(0, 0, -1)
        self.sceneView.scene.rootNode.addChildNode(node)
    }
    
}

