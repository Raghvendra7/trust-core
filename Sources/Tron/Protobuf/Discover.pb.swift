// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: core/Discover.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Protocol_Endpoint {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var address: Data = SwiftProtobuf.Internal.emptyData

  public var port: Int32 = 0

  public var nodeID: Data = SwiftProtobuf.Internal.emptyData

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Protocol_PingMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var from: Protocol_Endpoint {
    get {return _storage._from ?? Protocol_Endpoint()}
    set {_uniqueStorage()._from = newValue}
  }
  /// Returns true if `from` has been explicitly set.
  public var hasFrom: Bool {return _storage._from != nil}
  /// Clears the value of `from`. Subsequent reads from it will return its default value.
  public mutating func clearFrom() {_uniqueStorage()._from = nil}

  public var to: Protocol_Endpoint {
    get {return _storage._to ?? Protocol_Endpoint()}
    set {_uniqueStorage()._to = newValue}
  }
  /// Returns true if `to` has been explicitly set.
  public var hasTo: Bool {return _storage._to != nil}
  /// Clears the value of `to`. Subsequent reads from it will return its default value.
  public mutating func clearTo() {_uniqueStorage()._to = nil}

  public var version: Int32 {
    get {return _storage._version}
    set {_uniqueStorage()._version = newValue}
  }

  public var timestamp: Int64 {
    get {return _storage._timestamp}
    set {_uniqueStorage()._timestamp = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Protocol_PongMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var from: Protocol_Endpoint {
    get {return _storage._from ?? Protocol_Endpoint()}
    set {_uniqueStorage()._from = newValue}
  }
  /// Returns true if `from` has been explicitly set.
  public var hasFrom: Bool {return _storage._from != nil}
  /// Clears the value of `from`. Subsequent reads from it will return its default value.
  public mutating func clearFrom() {_uniqueStorage()._from = nil}

  public var echo: Int32 {
    get {return _storage._echo}
    set {_uniqueStorage()._echo = newValue}
  }

  public var timestamp: Int64 {
    get {return _storage._timestamp}
    set {_uniqueStorage()._timestamp = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Protocol_FindNeighbours {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var from: Protocol_Endpoint {
    get {return _storage._from ?? Protocol_Endpoint()}
    set {_uniqueStorage()._from = newValue}
  }
  /// Returns true if `from` has been explicitly set.
  public var hasFrom: Bool {return _storage._from != nil}
  /// Clears the value of `from`. Subsequent reads from it will return its default value.
  public mutating func clearFrom() {_uniqueStorage()._from = nil}

  public var targetID: Data {
    get {return _storage._targetID}
    set {_uniqueStorage()._targetID = newValue}
  }

  public var timestamp: Int64 {
    get {return _storage._timestamp}
    set {_uniqueStorage()._timestamp = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Protocol_Neighbours {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var from: Protocol_Endpoint {
    get {return _storage._from ?? Protocol_Endpoint()}
    set {_uniqueStorage()._from = newValue}
  }
  /// Returns true if `from` has been explicitly set.
  public var hasFrom: Bool {return _storage._from != nil}
  /// Clears the value of `from`. Subsequent reads from it will return its default value.
  public mutating func clearFrom() {_uniqueStorage()._from = nil}

  public var neighbours: [Protocol_Endpoint] {
    get {return _storage._neighbours}
    set {_uniqueStorage()._neighbours = newValue}
  }

  public var timestamp: Int64 {
    get {return _storage._timestamp}
    set {_uniqueStorage()._timestamp = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Protocol_BackupMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var flag: Bool = false

  public var priority: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "protocol"

extension Protocol_Endpoint: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Endpoint"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "address"),
    2: .same(proto: "port"),
    3: .same(proto: "nodeId"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.address)
      case 2: try decoder.decodeSingularInt32Field(value: &self.port)
      case 3: try decoder.decodeSingularBytesField(value: &self.nodeID)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.address.isEmpty {
      try visitor.visitSingularBytesField(value: self.address, fieldNumber: 1)
    }
    if self.port != 0 {
      try visitor.visitSingularInt32Field(value: self.port, fieldNumber: 2)
    }
    if !self.nodeID.isEmpty {
      try visitor.visitSingularBytesField(value: self.nodeID, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_Endpoint, rhs: Protocol_Endpoint) -> Bool {
    if lhs.address != rhs.address {return false}
    if lhs.port != rhs.port {return false}
    if lhs.nodeID != rhs.nodeID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_PingMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PingMessage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "from"),
    2: .same(proto: "to"),
    3: .same(proto: "version"),
    4: .same(proto: "timestamp"),
  ]

  fileprivate class _StorageClass {
    var _from: Protocol_Endpoint? = nil
    var _to: Protocol_Endpoint? = nil
    var _version: Int32 = 0
    var _timestamp: Int64 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _from = source._from
      _to = source._to
      _version = source._version
      _timestamp = source._timestamp
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._from)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._to)
        case 3: try decoder.decodeSingularInt32Field(value: &_storage._version)
        case 4: try decoder.decodeSingularInt64Field(value: &_storage._timestamp)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._from {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._to {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if _storage._version != 0 {
        try visitor.visitSingularInt32Field(value: _storage._version, fieldNumber: 3)
      }
      if _storage._timestamp != 0 {
        try visitor.visitSingularInt64Field(value: _storage._timestamp, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_PingMessage, rhs: Protocol_PingMessage) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._from != rhs_storage._from {return false}
        if _storage._to != rhs_storage._to {return false}
        if _storage._version != rhs_storage._version {return false}
        if _storage._timestamp != rhs_storage._timestamp {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_PongMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PongMessage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "from"),
    2: .same(proto: "echo"),
    3: .same(proto: "timestamp"),
  ]

  fileprivate class _StorageClass {
    var _from: Protocol_Endpoint? = nil
    var _echo: Int32 = 0
    var _timestamp: Int64 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _from = source._from
      _echo = source._echo
      _timestamp = source._timestamp
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._from)
        case 2: try decoder.decodeSingularInt32Field(value: &_storage._echo)
        case 3: try decoder.decodeSingularInt64Field(value: &_storage._timestamp)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._from {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._echo != 0 {
        try visitor.visitSingularInt32Field(value: _storage._echo, fieldNumber: 2)
      }
      if _storage._timestamp != 0 {
        try visitor.visitSingularInt64Field(value: _storage._timestamp, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_PongMessage, rhs: Protocol_PongMessage) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._from != rhs_storage._from {return false}
        if _storage._echo != rhs_storage._echo {return false}
        if _storage._timestamp != rhs_storage._timestamp {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_FindNeighbours: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FindNeighbours"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "from"),
    2: .same(proto: "targetId"),
    3: .same(proto: "timestamp"),
  ]

  fileprivate class _StorageClass {
    var _from: Protocol_Endpoint? = nil
    var _targetID: Data = SwiftProtobuf.Internal.emptyData
    var _timestamp: Int64 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _from = source._from
      _targetID = source._targetID
      _timestamp = source._timestamp
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._from)
        case 2: try decoder.decodeSingularBytesField(value: &_storage._targetID)
        case 3: try decoder.decodeSingularInt64Field(value: &_storage._timestamp)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._from {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._targetID.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._targetID, fieldNumber: 2)
      }
      if _storage._timestamp != 0 {
        try visitor.visitSingularInt64Field(value: _storage._timestamp, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_FindNeighbours, rhs: Protocol_FindNeighbours) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._from != rhs_storage._from {return false}
        if _storage._targetID != rhs_storage._targetID {return false}
        if _storage._timestamp != rhs_storage._timestamp {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Neighbours: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Neighbours"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "from"),
    2: .same(proto: "neighbours"),
    3: .same(proto: "timestamp"),
  ]

  fileprivate class _StorageClass {
    var _from: Protocol_Endpoint? = nil
    var _neighbours: [Protocol_Endpoint] = []
    var _timestamp: Int64 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _from = source._from
      _neighbours = source._neighbours
      _timestamp = source._timestamp
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._from)
        case 2: try decoder.decodeRepeatedMessageField(value: &_storage._neighbours)
        case 3: try decoder.decodeSingularInt64Field(value: &_storage._timestamp)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._from {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._neighbours.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._neighbours, fieldNumber: 2)
      }
      if _storage._timestamp != 0 {
        try visitor.visitSingularInt64Field(value: _storage._timestamp, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_Neighbours, rhs: Protocol_Neighbours) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._from != rhs_storage._from {return false}
        if _storage._neighbours != rhs_storage._neighbours {return false}
        if _storage._timestamp != rhs_storage._timestamp {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_BackupMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BackupMessage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "flag"),
    2: .same(proto: "priority"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBoolField(value: &self.flag)
      case 2: try decoder.decodeSingularInt32Field(value: &self.priority)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.flag != false {
      try visitor.visitSingularBoolField(value: self.flag, fieldNumber: 1)
    }
    if self.priority != 0 {
      try visitor.visitSingularInt32Field(value: self.priority, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_BackupMessage, rhs: Protocol_BackupMessage) -> Bool {
    if lhs.flag != rhs.flag {return false}
    if lhs.priority != rhs.priority {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
