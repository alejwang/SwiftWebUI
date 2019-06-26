//
//  ViewTag.swift
//  SwiftWebUI
//
//  Created by Helge Heß on 18.06.19.
//  Copyright © 2019 Helge Heß. All rights reserved.
//

public extension View {
  
  func tag<V: Hashable>(_ tag: V)
       -> Self.Modified<TraitWritingModifier<ViewTag<V>>>
  {
    return modifier(TraitWritingModifier(content: ViewTag(value: tag)))
  }
}

public struct ViewTag<Value: Hashable>: Trait {
  let value : Value
}
