/*:
 # Star Wars Protocols
 
 Below are six structs -- three for Jedi ("Master ...") and three for Sith ("Darth ...").  As you can see comparing the structs, there are some powers which are *specific to the Jedi*, some that are *specific to the Sith*, and some that are *common to any Force user*, whether Jedi or Sith.  Using protocols and extensions as appropriate, refactor this set of structs so that each struct is smaller and less verbose, but retains all of the functionality listed in the handout.
*/
//struct MasterYoda {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 9 }
//  func prescience() -> Int { return 5 }
//  func introspection() -> String { return "Search your feelings." }
//  func mindControl() -> String { return "Do or do not." }
//}
//
//struct MasterObiWan {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 5 }
//  func prescience() -> Int { return 5 }
//  func introspection() -> String { return "Search your feelings." }
//  func mindControl() -> String { return "These are not the droids you're looking for." }
//}
//
//struct MasterQuiGon {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 5 }
//  func prescience() -> Int { return 5 }
//  func mindControl() -> String { return "Republic credits will do." }
//  func introspection() -> String { return "Feel, don’t think. Trust your instincts." }
//}
//
//struct DarthVader {
//  func lightSaberSkill() -> Int { return 9 }
//  func telekinesis() -> Int { return 8 }
//  func prescience() -> Int { return 5 }
//  func forceChoke() -> Bool { return true }
//  func forceLightning() -> Bool { return false }
//}
//
//struct DarthSidious {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 7 }
//  func prescience() -> Int { return 6 }
//  func forceChoke() -> Bool { return true }
//  func forceLightning() -> Bool { return true }
//}
//
//struct DarthTyrannous {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 5 }
//  func prescience() -> Int { return 5 }
//  func forceChoke() -> Bool { return false }
//  func forceLightning() -> Bool { return true }
//}

/*:
 Place your refactored structs below:
 */


protocol lightSaberSkill {
  func calculateLSSkill() -> Int
}

extension lightSaberSkill {
  func calculateLSSkill() -> Int {
    return 8
  }
}
protocol telekinesis {
  func calculateTelekinesis() -> Int
}

extension telekinesis {
  func calculateTelekinesis() -> Int {
    return 5
  }
}
protocol prescience {
  func calculatePrescience() -> Int
}

extension prescience {
  func calculatePrescience() -> Int {
    return 5
  }
}
protocol introspection {
  func calculateIntrospection() -> String
}

extension introspection {
  func calculateIntrospection() -> String {
    return "Search your feelings."
  }
}
protocol mindControl { }
protocol forceChoke {
  func calculateForceChoke() -> Bool
}

extension forceChoke {
  func calculateForceChoke() -> Bool {
    return false
  }
}
protocol forceLightning {
  func calculateForceLightning() -> Bool
}

extension forceLightning {
  func calculateForceLightning() -> Bool {
    return false
  }
}

/*
 func lightSaberSkill() -> Int { return 8 }
 func telekinesis() -> Int { return 9 }
 func prescience() -> Int { return 5 }
 func introspection() -> String { return "Search your feelings." }
 func mindControl() -> String { return "Do or do not." }
 
 func lightSaberSkill() -> Int { return 9 }
 func telekinesis() -> Int { return 8 }
 func prescience() -> Int { return 5 }
 func forceChoke() -> Bool { return true }
 func forceLightning() -> Bool { return false }
}
 */

struct Jedi {}
struct Sith {}

protocol ForceUser: lightSaberSkill, telekinesis, prescience { }
extension Jedi: ForceUser, introspection, mindControl {
  
}
extension Sith: ForceUser, forceChoke, forceLightning { }

let MasterYoda = Jedi()
let MasterObiWan = Jedi()
let MasterQuiGon = Jedi()
let DarthVader = Sith()
let DarthSidious = Sith()
let DarthTyrannous = Sith()

MasterYoda.calculateLSSkill()
MasterYoda.calculateTelekinesis()
MasterYoda.calculatePrescience()
MasterYoda.calculateIntrospection()

