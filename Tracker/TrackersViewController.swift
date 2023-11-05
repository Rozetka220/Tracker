//
//  TrackerViewController.swift
//  Tracker
//
//  Created by Аделия Исхакова on 01.11.2023.
//

import UIKit

class TrackersViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        createTrackerView()
        createNavBar()
       // createLabel()
    }
    
    private func createNavBar() {
        let buttonAdd = UIBarButtonItem(image: UIImage(named: "plusButton"), style: .plain, target: self, action: #selector(tapButtonAdd))
        
        let buttonDate = UIBarButtonItem(image: UIImage(systemName: "calendar"), style: .plain, target: self, action: #selector(tapButtonDate))
        buttonAdd.tintColor = .black
        buttonDate.tintColor = .black
        
        navigationItem.leftBarButtonItem = buttonAdd
        navigationItem.rightBarButtonItem = buttonDate
        
        navigationItem.leftBarButtonItem?.customView?.translatesAutoresizingMaskIntoConstraints = false
        
        buttonAdd.imageInsets = UIEdgeInsets(top: 1, left: -10, bottom: 0, right: 0)

        navigationItem.title = "Трекеры"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
    }
    
    private func createTrackerView() {
        view.backgroundColor = .white
        
        let stubImage = UIImageView(image: UIImage(named: "Stub"))
        
        view.addSubview(stubImage)
        
        stubImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stubImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stubImage.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        let label = UILabel()
        label.text = "Что будем отслеживать?"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textAlignment = .center
        
        view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: stubImage.bottomAnchor, constant: 8),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.widthAnchor.constraint(equalToConstant: 343),
            label.heightAnchor.constraint(equalToConstant: 18)
        ])
        
    }
    
//    private func createLabel() {
//        let label = UILabel()
//        label.text = "Трекеры"
//
//        label.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
//            label.heightAnchor.constraint(equalToConstant: 24),
//            label.widthAnchor.constraint(equalToConstant: 254),
//            //label.topAnchor.constraint(equalTo: , constant: 0)
//        ])
//    }
    
    @objc private func tapButtonAdd(){
        print("Add button tapped!")
    }
    @objc private func tapButtonDate(){
        print("Date button tapped!")
    }
}
