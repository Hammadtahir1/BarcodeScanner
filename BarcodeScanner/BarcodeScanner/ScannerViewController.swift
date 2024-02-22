//
//  ScannerViewController.swift
//  BarcodeScanner
//
//  Created by Hamza on 06/02/2024.
//

import UIKit
import AVFoundation

protocol ScannerVCDelegate: AnyObject {
    func didFind(barcode: String)
}

 final class ScannerVC: UIViewController {

    let captureSession = AVCaptureSession()
    var previewLayer : AVCaptureVideoPreviewLayer?
    weak var ScannerDelegate : ScannerVCDelegate?

     init(ScannerDelegate : ScannerVCDelegate) {
        super.init(nibName: nil , bundle: nil)
        self.ScannerDelegate = ScannerDelegate
        
    }

     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
     
     private func setupCaptueSession() {
         
         guard let VideoCaptureDevice = AVCaptureDevice.default(for: .video) else {
             return
         }
         
         let videoInput: AVCaptureDeviceInput
         
         do {
             try videoInput = AVCaptureDeviceInput(device: VideoCaptureDevice)
         } catch {
             return
         }
         
         
     }

}

