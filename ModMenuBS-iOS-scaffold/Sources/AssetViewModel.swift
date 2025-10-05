import Foundation
import SwiftUI
import Combine

/// Simple ViewModel that looks for CSV files bundled in the app's Resources and loads them as arrays of strings.
class AssetViewModel: ObservableObject {
    @Published var assets: [String: [String]] = [:]

    init() {
        loadBundledCSVs()
    }

    func loadBundledCSVs() {
        let csvNames = ["emotes","messages","player_thumbnails","skins","skins2","tiles"]

        for name in csvNames {
            if let url = Bundle.main.url(forResource: name, withExtension: "csv") {
                do {
                    let text = try String(contentsOf: url, encoding: .utf8)
                    let lines = text.split(whereSeparator: \ .newlines).map { String($0) }
                    self.assets[name] = lines
                } catch {
                    print("Failed to load \(name).csv - \(error)")
                    self.assets[name] = []
                }
            } else {
                self.assets[name] = []
            }
        }
    }
}
