//
//  MVPPresenter.swift
//  SampleMVP
//
//  Created by Mumthasir VP on 04/07/24.
//

import Foundation

protocol MVPPresenterView: AnyObject {
    func updateUI(data: GameModel)
}

// Presenter
class MVPPresenter {
    weak var view: MVPPresenterView?
    
    init(view: MVPPresenterView) {
        self.view = view
    }
    
    func startGame() {
        let game = GameModel(name: "Alan", age: 25)
        view?.updateUI(data: game)
    }
}
