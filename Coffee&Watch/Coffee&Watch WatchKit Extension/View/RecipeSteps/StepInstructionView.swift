//
//  StepInstructionView.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Willian Magnum Albeche on 06/04/22.
//

import SwiftUI

struct StepInstructionView: View {
    var step: StepDTO
    
    var body: some View {
        VStack {
            Image(step.icon)
                .resizable()
                .frame(width: 36, height: 38)
                .foregroundColor(.white)
            Text(step.preparation)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .lineLimit(3)
                .frame(width: 180, height: 60, alignment: .center)
        }
    }
}

struct StepInstructionView_Previews: PreviewProvider {
    static var previews: some View {
        StepInstructionView(step: StepDTO(preparation: "In a bowl, add in the coffee, hot water, and granulated sugar.", preparationTime: 3, icon: "asset3"))
    }
}
