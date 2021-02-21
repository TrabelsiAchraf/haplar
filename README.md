# Haplar
A pills reminder application

![](https://img.shields.io/badge/build-passing-brightgreen.svg)
![](https://img.shields.io/badge/platform-iOS-lightgrey.svg)

### Requirements
- iOS 14.0+ 
- Xcode 12.0+
- SwiftUI, Combine, MVVM
- TDD

### Structure

   |-- Haplar.xcodeproj
   
   |-- HaplarUITests
   |   |-- HaplarUITests.swift
   |   |-- Info.plist
   
   |-- Haplar
   |   |-- Config
   |   |   |-- Assets.xcassets
   |   |   |   |-- AppIcon.appiconset
   |   |   |   |   |-- Contents.json
   |   |   |   |-- AccentColor.colorset
   |   |   |   |   |-- Contents.json
   |   |   |   |-- Colors
   |   |   |   |   |-- HLOrange.colorset
   |   |   |   |   |   |-- Contents.json
   |   |   |   |   |-- HLBlue.colorset
   |   |   |   |   |   |-- Contents.json
   |   |   |   |   |-- HLPurple.colorset
   |   |   |   |   |   |-- Contents.json
   |   |   |   |   |-- HLPink.colorset
   |   |   |   |   |   |-- Contents.json
   |   |   |   |   |-- Contents.json
   |   |   |   |-- Contents.json
   |   |   |-- Info.plist
   |   |-- Preview Content
   |   |   |-- Preview Assets.xcassets
   |   |   |   |-- Contents.json
   |   |-- Application
   |   |   |-- Features
   |   |   |   |-- Settings
   |   |   |   |   |-- SettingsView.swift
   |   |   |   |-- Home
   |   |   |   |   |-- HomeView.swift
   |   |   |   |   |-- Components
   |   |   |   |   |   |-- HLDayView.swift
   |   |   |   |-- AddDrug
   |   |   |   |   |-- AddDrugView.swift
   |   |   |-- Common
   |   |   |   |-- Extensions
   |   |   |   |   |-- ColorExtension.swift
   |   |   |   |   |-- DateExtension.swift
   |   |   |-- Main
   |   |   |   |-- HaplarApp.swift
   |   |   |   |-- ContentView.swift
   |-- HaplarTests
   |   |-- HaplarTests.swift
   |   |-- Info.plist
