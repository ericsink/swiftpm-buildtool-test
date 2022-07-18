import PackagePlugin
import Foundation

@main
struct MyPlugin: BuildToolPlugin {
    
    func createBuildCommands(context: PluginContext, target: Target) throws -> [Command] {
        let myOutputsDir = context.pluginWorkDirectory.appending("MyOutputs")
        try FileManager.default.createDirectory(atPath: myOutputsDir.string, withIntermediateDirectories: true)

        let genfile = myOutputsDir.appending("magic.swift")
        return [.prebuildCommand(
            displayName: "Running binary",
            executable: try context.tool(named: "foo").path,
            arguments: [
                "\(genfile)",
            ],
            environment: [:],
            outputFilesDirectory: myOutputsDir)
        ]
    }
}
