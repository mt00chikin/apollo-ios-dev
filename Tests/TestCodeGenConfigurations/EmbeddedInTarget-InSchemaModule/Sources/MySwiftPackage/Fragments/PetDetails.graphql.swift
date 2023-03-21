// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public extension MyGraphQLSchema {
  struct PetDetails: MyGraphQLSchema.SelectionSet, Fragment {
    public static var fragmentDefinition: StaticString { """
      fragment PetDetails on Pet {
        __typename
        humanName
        favoriteToy
        owner {
          __typename
          firstName
        }
      }
      """ }

    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { MyGraphQLSchema.Interfaces.Pet }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("humanName", String?.self),
      .field("favoriteToy", String.self),
      .field("owner", Owner?.self),
    ] }

    public var humanName: String? { __data["humanName"] }
    public var favoriteToy: String { __data["favoriteToy"] }
    public var owner: Owner? { __data["owner"] }

    /// Owner
    ///
    /// Parent Type: `Human`
    public struct Owner: MyGraphQLSchema.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { MyGraphQLSchema.Objects.Human }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("firstName", String.self),
      ] }

      public var firstName: String { __data["firstName"] }
    }
  }

}