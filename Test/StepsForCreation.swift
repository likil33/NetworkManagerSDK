//
//  StepsForCreation.swift
//  Test
//
//  Created by Santhosh K on 22/01/25.
//

/*
 
 
 Framework steps



 1. Create project (“NetworkManagerSDK”)
 2. Select framework
 3. Add a target at targets space
 4. iOS -> Application -> App -> Click on Next
 5. Product name (any name for like “test”) ,  storage - none and include tests - uncheck
 6. Finish - added test project in project navigator (targets)
 7. Again Add a target at targets space -> select Other -> Aggregate
 8. Product name (Any name no conflicts) ex: “NetworkService”
 9. Finish
 10. In Targets -> Select SDK (“NetworkManagerSDK”) -> go to Build settings -> Build Options -> BUILD_LIBRARY_FOR_DISTRIBUTION = YES
 11. In Targets -> Select Aggregate (“NetworkService”) -> go to build phases -> Add Run script
 12. Select Framework at Scheme -> Command + B (for every update and import framework in VC at test app )
 13. Go to “Project” (“NetworkManagerSDK”) -> User Script Sandboxing : No
 14. Targets -> “Test” project -> Goto general -> Frameworks - add items - NetworkManagerSDK framework
 15. NetworkManagerSDK Folder -> Create sub folders (“ServiceFiles”)  for maintaining all framework classes (“NetworkManager.swift”)
 16. Scheme Upto Created -> 1. Framework code files (“NetworkManagerSDK”). 2. Project for run and check purpose only  (“Test” ). 3. Aggregate (“NetworkService”) generate framework
 17.   Aggregate (“NetworkService”) generate framework -> Before generate build go to product -> Clear all issue and Clean build folder -> then Build  (CMD + B)
 18. Open project path -> There was generate build folder -> final framework extension . NetworkManagerSDK.xcframework
 19. NetworkManagerSDK.xcframework is final framework. Use in other projects



 RUN SCRIPT (11th point)
 ————————————————————————————————————————————————————
 # Type a script or drag a script file from your workspace to insert its path.
 #Gerenate device framework
 xcodebuild archive -scheme ${PROJECT_NAME} -archivePath "${PROJECT_DIR}/build/${PROJECT_NAME}-iphoneos.xcarchive" -sdk iphoneos SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES
 #Generate simulator framework
 xcodebuild archive -scheme ${PROJECT_NAME} -archivePath "${PROJECT_DIR}/build/${PROJECT_NAME}-iossimulator.xcarchive" -sdk iphonesimulator SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES
 #Generate xcframework for both arches
 xcodebuild -create-xcframework -framework "${PROJECT_DIR}/build/${PROJECT_NAME}-iphoneos.xcarchive/Products/Library/Frameworks/${PROJECT_NAME}.framework" -framework "${PROJECT_DIR}/build/${PROJECT_NAME}-iossimulator.xcarchive/Products/Library/Frameworks/${PROJECT_NAME}.framework" -output "${PROJECT_DIR}/build/${PROJECT_NAME}.xcframework"
 #Open directory where xcframework were generate
 open "${PROJECT_DIR}/build"

 ———————
 ————————————————————————————————————————————————————

 NetworkManager.swift
 Sample code
 import Foundation

 public class NetworkManager {
     public static func getRequestCall(_ url:String) {
         print("called framework \(url)")
     }
 }


 
 
 */
