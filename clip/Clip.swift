//
//  Clip.swift
//  clip
//
//  Created by Nagy Zoltán Tamás on 2023. 02. 19..
//

import SwiftUI

struct ContentViewClip: View {
    @State private var clipboardContent: String = ""
    @State private var copiedText: String = ""
    var body: some View {
        VStack {
            Text("Vágólap tartalma: \(clipboardContent)")
            Button("Vágólap tartalmának frissítése") {
                if let content = NSPasteboard.general.string(forType: .string) {
                    clipboardContent = content
                }
            }
        
                        TextEditor(text: $copiedText)
                            .frame(height: 100)

                        Button("Másolás vágólapra") {
                            NSPasteboard.general.clearContents()
                            NSPasteboard.general.setString(copiedText, forType: .string)
                        }
                    
        }
        
    }
}
