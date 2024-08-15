//
//  hierarchialListView.swift
//  ListPractice
//
//  Created by Can Dindar on 2024-08-15.
//

import SwiftUI

struct hierarchialListView: View {
    
    @State private var fileItems = FileItem.preview()
    var body: some View {
        List(fileItems, children: \.children) { fileItem in
//            Text(fileItem.title)
            if fileItem.isFolder {
                Label(fileItem.title, systemImage: "folder.fill")
            } else {
                Label(fileItem.title, systemImage: "envelope")
            }
        }
    }
}

#Preview {
    hierarchialListView()
}
