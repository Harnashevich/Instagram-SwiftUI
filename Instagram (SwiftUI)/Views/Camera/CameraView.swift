//
//  CameraView.swift
//  Instagram (SwiftUI)
//
//  Created by Andrei Harnashevich on 7.08.24.
//

import SwiftUI

struct CameraView: View {
    
    @State var isShowingPicker = false
    @State var isUsingCamera = false
    @State var image: Image? = nil
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    image?
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300, alignment: .center)
                    
                    Button {
                        isUsingCamera = false
                        isShowingPicker.toggle()
                    } label: {
                        Text("Photo Library")
                    }
                    .padding()
                    
                    Button {
                        isUsingCamera = true
                        isShowingPicker.toggle()
                    } label: {
                        Text("Take Photo")
                    }
                }
                
                if isShowingPicker {
                    CaptureView(
                        isShown: $isShowingPicker,
                        image: $image, 
                        isUsingCamera: $isUsingCamera
                    )
                }
            }
            
            .navigationTitle("Camera")
        }
    }
}

#Preview {
    CameraView()
}
