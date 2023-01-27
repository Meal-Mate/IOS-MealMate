//
//  SearchBarView.swift
//  Education
//
//  Created by UI8 on 07/12/2020.
//

import SwiftUI

struct SearchBarView: UIViewControllerRepresentable {
    typealias UIViewControllerType = SearchViewWrapper
    
    @Binding var searchText: String
    
    init(searchText: Binding<String>) {
        self._searchText = searchText
    }
    class Coordinator: NSObject, UISearchResultsUpdating {
        let representable: SearchBarView
        let searchController: UISearchController
        
        init(representable: SearchBarView) {
            self.representable = representable
            self.searchController = UISearchController(searchResultsController: nil)
            super.init()
            self.searchController.searchResultsUpdater = self
            self.searchController.obscuresBackgroundDuringPresentation = true
            self.searchController.searchBar.text = representable.searchText
        }
        
        func updateSearchResults(for searchController: UISearchController) {
            guard let searchText = searchController.searchBar.text else { return }
            
            DispatchQueue.main.async { [weak self] in self?.representable.searchText = searchText }
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(representable: self)
    }

    func makeUIViewController(context: Context) -> SearchViewWrapper {
        SearchViewWrapper()
    }
    
    func updateUIViewController(_ searchViewWrapper: SearchViewWrapper, context: Context) {
        searchViewWrapper.searchController = context.coordinator.searchController
        searchViewWrapper.searchController?.searchBar.text = searchText
    }
    
    class SearchViewWrapper: UIViewController {
        var searchController: UISearchController? {
            get {
                self.parent?.navigationItem.searchController
            }
            set {
                self.parent?.navigationItem.searchController = newValue
            }
        }
    }
}
