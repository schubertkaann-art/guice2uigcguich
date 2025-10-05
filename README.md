ModMenuBS iOS SwiftUI Project (Clean Template)
=============================================

Contents:
- ModMenuBS/                  -> Swift source files (ModMenuBSApp, ContentView, AssetsView, AssetViewModel)
- Resources/                  -> placeholder CSV files
- Info.plist                  -> app metadata
- ModMenuBS.xcodeproj/        -> minimal Xcode project (project.pbxproj)
- codemagic.yaml              -> Codemagic workflow (build & export .ipa)
- exportOptions.plist         -> export options configured for Ad-Hoc (fill teamID in Codemagic)
- README.md                   -> this file

How to build on Codemagic (from Windows):
1. Upload this zip to https://codemagic.io/start
2. In Codemagic UI, configure Code signing:
   - Upload your certificate & provisioning profile (Ad Hoc) or use Automatic signing.
   - If using manual, set team ID in exportOptions.plist or via Codemagic UI.
3. Start the 'build-ios-app' workflow.
4. Download the generated .ipa from Artifacts when complete.

Notes:
- This is a minimal Xcode project generated on Windows. Xcode on macOS might prompt to modernize project settings.
- If Codemagic returns errors about project format, open the project in Xcode on macOS once and save to refresh project settings.
