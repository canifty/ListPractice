//
//  FileItem.swift
//  ListPractice
//
//  Created by Can Dindar on 2024-08-15.
//

import Foundation

struct FileItem: Hashable, Identifiable {
    var title: String
    let isFolder: Bool
    var children: [FileItem]? = nil
    let id = UUID()
    
    static func preview() -> [FileItem] {
        [FileItem(title: "inbox", isFolder: true,
                  children: [FileItem(title: "My First Email", isFolder: false),
                             FileItem(title: "My Second Email", isFolder: false)]),
         FileItem(title: "Archived", isFolder: true,
                  children: [FileItem(title: "work", isFolder: true,
                                      children:[FileItem(title: "next task", isFolder: false)]),
                             FileItem(title: "personal", isFolder: true,
                                      children: [FileItem(title: "your subscription expired", isFolder: false)])]),
         FileItem(title: "trash", isFolder: true)]
    }
}

