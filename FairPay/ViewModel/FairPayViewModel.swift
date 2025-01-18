//
//  FairPayViewModel.swift
//  FairPay
//
//  Created by Jamorn Suttipong on 18/1/2568 BE.
//

import Foundation

class FairPayViewModel: ObservableObject {
    
    @Published var numberOfPeople: String = "" {
        didSet {
            calculateExpense()
        }
    }
    @Published var totalExpense: String = "" {
        didSet {
            calculateExpense()
        }
    }
    @Published var expensePerPerson: Double? = nil
    
    func calculateExpense() {
        guard let people = Double(numberOfPeople), people > 0,
        let expense = Double(totalExpense) else {
            expensePerPerson = nil
            return
        }
        
        expensePerPerson = expense / people
    }
    
    func reset() {
        numberOfPeople = ""
        totalExpense = ""
        expensePerPerson = nil
    }
}
