//
//  ProfileView.swift
//  SwiftUI_test
//
//  Created by Jan Vaculik on 08.04.2021.
//

import SwiftUI

struct ProfileView: View {
    @State var text : String = ""
    @State var shard : String = ""
    var body: some View {
        SearchView(text: $text,selection: $shard)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
