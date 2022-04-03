//
//  ContentView.swift
//  TestEditorDemo
//
//  Created by Thongchai Subsaidee on 4/4/22.
//

import SwiftUI

struct ContentView: View {
    @State var txt: String = ""
    var body: some View {
        VStack {
            descriptionView
            TextEditorView(txt: $txt)
            submitView
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct TextEditorView: View {
    @Binding var txt: String
    var body: some View {
        TextEditor(text: $txt)
            .frame(height: 250)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.black.opacity(0.9), lineWidth: 1)
            )
    }
}

private extension ContentView {

    var descriptionView: some View {
        Text("Descripton")
    }
    
    var submitView: some View {
        Button {
            print("Show textEditor: \(txt)")
        } label: {
            Text("Submit")
        }

    }
}
