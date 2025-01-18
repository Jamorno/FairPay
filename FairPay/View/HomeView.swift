//
//  HomeView.swift
//  FairPay
//
//  Created by Jamorn Suttipong on 18/1/2568 BE.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel = FairPayViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Spacer()
            
            HStack {
                Text("Total Expense")
                    
                Spacer()
                
                TextField("0.00", text: $viewModel.totalExpense)
                    .frame(width: 100)
                    .multilineTextAlignment(.trailing)
            }
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundStyle(.black)
            .padding()
            
            HStack {
                Text("Number of People")
                
                Spacer()
                
                TextField("0.00", text: $viewModel.numberOfPeople)
                    .frame(width: 100)
                    .multilineTextAlignment(.trailing)
            }
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundStyle(.black)
            .padding()
            
            Divider()
            
            //expense per people
            HStack(spacing: 50) {
                Text("Pay per people:")
                    .font(.title2)
                
                Text("\(viewModel.expensePerPerson != nil ? String(format: "%.2f", viewModel.expensePerPerson!) : "0.00")")
                    .font(.title)
            }
            .fontWeight(.semibold)
            .padding()
            .frame(maxWidth: .infinity)
            .foregroundStyle(.black)
            .background(.purple.opacity(0.8))
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            .padding()
            
            Spacer()
            
            Button {
                viewModel.reset()
            } label: {
                Text("RESET")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.white)
                    .background(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .padding()
            }
        }
    }
}

#Preview {
    HomeView()
}
