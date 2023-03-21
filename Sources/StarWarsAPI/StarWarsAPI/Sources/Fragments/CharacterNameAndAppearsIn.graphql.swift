// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct CharacterNameAndAppearsIn: StarWarsAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString { """
    fragment CharacterNameAndAppearsIn on Character {
      __typename
      name
      appearsIn
    }
    """ }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Interfaces.Character }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("name", String.self),
    .field("appearsIn", [GraphQLEnum<StarWarsAPI.Episode>?].self),
  ] }

  /// The name of the character
  public var name: String { __data["name"] }
  /// The movies this character appears in
  public var appearsIn: [GraphQLEnum<StarWarsAPI.Episode>?] { __data["appearsIn"] }

  public init(
    __typename: String,
    name: String,
    appearsIn: [GraphQLEnum<StarWarsAPI.Episode>?]
  ) {
    let objectType = ApolloAPI.Object(
      typename: __typename,
      implementedInterfaces: [
        StarWarsAPI.Interfaces.Character
    ])
    self.init(data: DataDict(
      objectType: objectType,
      data: [
        "__typename": objectType.typename,
        "name": name,
        "appearsIn": appearsIn
    ]))
  }
}
