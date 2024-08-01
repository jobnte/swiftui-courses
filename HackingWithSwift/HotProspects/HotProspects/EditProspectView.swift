//
//  EditProspectView.swift
//  HotProspects
//
//  Created by Jorge Bustamante on 2/08/24.
//

import SwiftUI

struct EditProspectView: View {
    @Bindable var prospect: Prospect

    var body: some View {
        Form {
            TextField("Name", text: $prospect.name)
            TextField("Email", text: $prospect.emailAddress)
        }
        .navigationTitle("Edit Prospect")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    EditProspectView(prospect: .init(name: "", emailAddress: "", isContacted: false))
}
