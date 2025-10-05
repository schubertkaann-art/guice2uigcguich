import SwiftUI

struct ContentView: View {
    @StateObject private var vm = AssetViewModel()

    var body: some View {
        TabView {
            HomeView()
                .tabItem { Label("Home", systemImage: "house") }
            AssetsView()
                .environmentObject(vm)
                .tabItem { Label("Assets", systemImage: "tray.full") }
            SettingsView()
                .tabItem { Label("Settings", systemImage: "gear") }
        }
    }
}

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                Text("ModMenuBS — iOS App").font(.title).multilineTextAlignment(.center)
                Text("Generated SwiftUI template").font(.subheadline)
                Spacer()
            }
            .padding()
            .navigationTitle("Home")
        }
    }
}

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Build")) {
                    Text("Target: iOS 18+").foregroundColor(.secondary)
                    Text("Signing: Add your Team & Provisioning in Xcode").foregroundColor(.secondary)
                }
                Section(header: Text("Notes")) {
                    Text("This is a generated template. Replace with your app logic.").foregroundColor(.secondary)
                }
            }
            .navigationTitle("Settings")
        }
    }
}
