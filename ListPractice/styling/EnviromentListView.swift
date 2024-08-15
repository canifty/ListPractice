//
//  EnviromentListView.swift
//  ListPractice
//
//  Created by Can Dindar on 2024-08-15.
//

import SwiftUI

struct EnviromentListView: View {
    var body: some View {
        NavigationView {
            StylingView().navigationTitle("first")
          StylingView()
                .navigationTitle("second")
        }
    }
}

#Preview {
    EnviromentListView()
}
