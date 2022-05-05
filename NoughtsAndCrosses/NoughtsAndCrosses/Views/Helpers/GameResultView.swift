//
//  GameResultView.swift
//  NoughtsAndCrosses
//
//  Created by Russell Gordon on 2022-05-03.
//

import SwiftUI

struct GameResultView: View {

    // MARK: Stored properties
    let result: GameResult
    
    // MARK: Computed properties
    var body: some View {

        HStack {
            
            // Pass the result along to this view...
            MiniGameBoardView(result: result)
            
            VStack {
                
                HStack {
                    Text(result.outcome == draw ? "Draw" : "\(result.outcome) won after \(result.turnsTotal) turns.")
                        .bold()
                    
                    // Code above needs to decrease the ammont "turns" that have taken place bceuase currently it displays total turns in general no the indivudal turns taken.
                    // Soltion could be --> to devide it by 2 and round up if the value has a decimal.
                    
                    // need to utilize the % syntax
                    
                    
                    
                    // 5/2 = 2
                    // 5%2 = 1     2+1 = 3
                    
                    // 6/2 = 3
                    // 6%2 = 0      3+0 = 3
                    
                    
                    Spacer()
                }
                
            }
            .padding(.leading)
            
        }
        

    }
}

struct GameResultView_Previews: PreviewProvider {
    static var previews: some View {
        
        // Show the preview within a list, since this is how it will be used
        // in GameBoardView
        List {
            GameResultView(result: testGameResult)
        }
        
    }
}
