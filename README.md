# swiftpm-buildtool-test

This is a trivial test for a Swift Package Manager
build tool.

main.swift simply prints out the value of a variable
named `magic`.  This won't exist unless the plugin
creates it.

The plugin relies on a binary target to create
`magic.swift`, containing that variable.

The binary target is present for Mac, Linux, and Windows.
it's a very simple C program that writes on file to the
location provided on its command line.


