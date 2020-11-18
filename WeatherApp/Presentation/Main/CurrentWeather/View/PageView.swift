//
//  PagerView.swift
//  WeatherApp
//
//  Created by Ivan on 18.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import SwiftUI


struct PageView<Page: View>: View {
    var viewControllers: [UIHostingController<Page>]

    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }

    var body: some View {
        PageViewController(controllers: viewControllers)
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView([Text("wer")])
            .aspectRatio(3/2, contentMode: .fit)
    }
}
