//
//  SafariView.swift
//  FoodPin
//
//  Created by Вячеслав Каньшин on 08.08.2022.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {

    var url: URL

    func makeUIViewController(context: Context) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {

    }
}
