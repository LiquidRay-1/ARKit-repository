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
        node.geometry = SCNBox(width: 0.3, height: 0.3, length: 0.3, chamferRadius: 3)
        node.geometry?.firstMaterial?.diffuse.contents = UIColor.red
        node.position = SCNVector3(0, 0, -1)
        self.sceneView.scene.rootNode.addChildNode(node)
        
        let node2 = SCNNode()
        node2.geometry = SCNSphere(radius: 0.15)
        node.geometry?.firstMaterial?.diffuse.contents = UIColor.green
        node2.position = SCNVector3(1, 0, -1)
        node.addChildNode(node2)
    }
    
}
