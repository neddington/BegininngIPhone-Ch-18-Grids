//
//  UploadPhoto.swift
//  BegininngIPhone Ch 18 Grids
//
//  Created by Eddington, Nick on 10/30/23.
//
import SwiftUI

struct UploadPhoto: View {
    @State private var selectedImage: Image?
    @State private var isImagePickerPresented: Bool = false
    @State private var isUploadButtonEnabled: Bool = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Upload a Photo")) {
                    if let selectedImage = selectedImage {
                        selectedImage
                            .resizable()
                            .scaledToFit()
                    } else {
                        Text("No photo selected")
                    }
                    
                    Button(action: {
                        isImagePickerPresented.toggle()
                    }) {
                        Text("Select Photo")
                    }
                    
                    Button(action: {
                        // Perform the upload action here
                        // You can add your logic for uploading the photo to a server or processing it
                        // Once the upload is successful, you can reset the selectedImage and button state
                        // For this example, we'll just reset the selection to simulate an upload.
                        selectedImage = nil
                        isUploadButtonEnabled = false
                    }) {
                        Text("Upload")
                    }
                    .disabled(!isUploadButtonEnabled)
                }
            }
            .sheet(isPresented: $isImagePickerPresented) {
                ImagePicker(selectedImage: $selectedImage, isUploadButtonEnabled: $isUploadButtonEnabled)
            }
            .navigationBarTitle("Photo Upload")
        }
    }
}

struct ImagePicker: UIViewControllerRepresentable {
    @Binding var selectedImage: Image?
    @Binding var isUploadButtonEnabled: Bool
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = context.coordinator
        imagePicker.sourceType = .photoLibrary
        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        // No update needed
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        var parent: ImagePicker
        
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let uiImage = info[.originalImage] as? UIImage {
                parent.selectedImage = Image(uiImage: uiImage)
                parent.isUploadButtonEnabled = true // Enable the upload button
            }
            picker.dismiss(animated: true)
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true)
        }
    }
}
#Preview {
    UploadPhoto()
}
