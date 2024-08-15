//
//  SettingsView.swift
//  ListPractice
//
//  Created by Can Dindar on 2024-08-14.
//

import SwiftUI

enum AppearanceStyle {
    case dark
    case light
    case auto
}

struct SettingsView: View {
    
    @State var username: String = ""
    @State var isPrivate: Bool = true
    @State private var profileImageSize = false
    @State private var fontSize: CGFloat = 5
    @State private var appearance: AppearanceStyle = .auto
    
    var body: some View {
        List {
            Section {
                TextField("username", text: $username)
                Toggle("Private Acsess", isOn: $isPrivate)
                
                Button {
                } label: {
                    Text("Sign Out")
                }
            } header: {
                Text("profile")
            }
            
            Section {
                
                Slider(value: $fontSize, in: 1...10) {
                    Label("Default Font Size", systemImage: "text.magnifyingglass")
                }
                Picker("Appearance", selection: $appearance) {
                    Text("Dark").tag(AppearanceStyle.dark)
                    Text("Light").tag(AppearanceStyle.light)
                    Text("Auto").tag(AppearanceStyle.auto)
                }
            } header: {
                Text("Appearance")
            }
            Section {
                HStack {
                    Text("Version")
                    Spacer()
                    Text("2.2.1")
                }
            }
        header: {
            Text("about")
            }
        }
    }
}

#Preview {
    SettingsView()
}
