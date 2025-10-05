import SwiftUI

struct AssetsView: View {
    @EnvironmentObject var vm: AssetViewModel

    var body: some View {
        NavigationView {
            List {
                ForEach(vm.assets.keys.sorted(), id: \ .self) { key in
                    Section(header: Text(key.capitalized)) {
                        ForEach(vm.assets[key] ?? [], id: \ .self) { item in
                            Text(item)
                        }
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Assets")
        }
    }
}
