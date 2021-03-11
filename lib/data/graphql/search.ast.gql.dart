// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;

const FetchSearchResults = _i1.OperationDefinitionNode(
    type: _i1.OperationType.query,
    name: _i1.NameNode(value: 'FetchSearchResults'),
    variableDefinitions: [
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'searchQuery')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: []),
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'endCursor')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: false),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: [])
    ],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'search'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'query'),
                value:
                    _i1.VariableNode(name: _i1.NameNode(value: 'searchQuery'))),
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'type'),
                value: _i1.EnumValueNode(name: _i1.NameNode(value: 'ISSUE'))),
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'last'),
                value: _i1.IntValueNode(value: '20')),
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'after'),
                value: _i1.VariableNode(name: _i1.NameNode(value: 'endCursor')))
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FieldNode(
                name: _i1.NameNode(value: 'issueCount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            _i1.FieldNode(
                name: _i1.NameNode(value: 'pageInfo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: _i1.SelectionSetNode(selections: [
                  _i1.FieldNode(
                      name: _i1.NameNode(value: 'startCursor'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null),
                  _i1.FieldNode(
                      name: _i1.NameNode(value: 'endCursor'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null),
                  _i1.FieldNode(
                      name: _i1.NameNode(value: 'hasNextPage'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null),
                  _i1.FieldNode(
                      name: _i1.NameNode(value: 'hasPreviousPage'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null)
                ])),
            _i1.FieldNode(
                name: _i1.NameNode(value: 'edges'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: _i1.SelectionSetNode(selections: [
                  _i1.FieldNode(
                      name: _i1.NameNode(value: 'cursor'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null),
                  _i1.FieldNode(
                      name: _i1.NameNode(value: 'node'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: _i1.SelectionSetNode(selections: [
                        _i1.InlineFragmentNode(
                            typeCondition: _i1.TypeConditionNode(
                                on: _i1.NamedTypeNode(
                                    name: _i1.NameNode(value: 'Issue'),
                                    isNonNull: false)),
                            directives: [],
                            selectionSet: _i1.SelectionSetNode(selections: [
                              _i1.FieldNode(
                                  name: _i1.NameNode(value: 'state'),
                                  alias: null,
                                  arguments: [],
                                  directives: [],
                                  selectionSet: null),
                              _i1.FieldNode(
                                  name: _i1.NameNode(value: 'body'),
                                  alias: null,
                                  arguments: [],
                                  directives: [],
                                  selectionSet: null),
                              _i1.FieldNode(
                                  name: _i1.NameNode(value: 'labels'),
                                  alias: null,
                                  arguments: [
                                    _i1.ArgumentNode(
                                        name: _i1.NameNode(value: 'last'),
                                        value: _i1.IntValueNode(value: '100')),
                                    _i1.ArgumentNode(
                                        name: _i1.NameNode(value: 'after'),
                                        value: _i1.NullValueNode())
                                  ],
                                  directives: [],
                                  selectionSet:
                                      _i1.SelectionSetNode(selections: [
                                    _i1.FieldNode(
                                        name: _i1.NameNode(value: 'totalCount'),
                                        alias: null,
                                        arguments: [],
                                        directives: [],
                                        selectionSet: null),
                                    _i1.FieldNode(
                                        name: _i1.NameNode(value: 'pageInfo'),
                                        alias: null,
                                        arguments: [],
                                        directives: [],
                                        selectionSet:
                                            _i1.SelectionSetNode(selections: [
                                          _i1.FieldNode(
                                              name: _i1.NameNode(
                                                  value: 'startCursor'),
                                              alias: null,
                                              arguments: [],
                                              directives: [],
                                              selectionSet: null),
                                          _i1.FieldNode(
                                              name: _i1.NameNode(
                                                  value: 'endCursor'),
                                              alias: null,
                                              arguments: [],
                                              directives: [],
                                              selectionSet: null),
                                          _i1.FieldNode(
                                              name: _i1.NameNode(
                                                  value: 'hasNextPage'),
                                              alias: null,
                                              arguments: [],
                                              directives: [],
                                              selectionSet: null),
                                          _i1.FieldNode(
                                              name: _i1.NameNode(
                                                  value: 'hasPreviousPage'),
                                              alias: null,
                                              arguments: [],
                                              directives: [],
                                              selectionSet: null)
                                        ])),
                                    _i1.FieldNode(
                                        name: _i1.NameNode(value: 'edges'),
                                        alias: null,
                                        arguments: [],
                                        directives: [],
                                        selectionSet:
                                            _i1.SelectionSetNode(selections: [
                                          _i1.FieldNode(
                                              name: _i1.NameNode(value: 'node'),
                                              alias: null,
                                              arguments: [],
                                              directives: [],
                                              selectionSet:
                                                  _i1.SelectionSetNode(
                                                      selections: [
                                                    _i1.FieldNode(
                                                        name: _i1.NameNode(
                                                            value: 'id'),
                                                        alias: null,
                                                        arguments: [],
                                                        directives: [],
                                                        selectionSet: null),
                                                    _i1.FieldNode(
                                                        name: _i1.NameNode(
                                                            value: 'name'),
                                                        alias: null,
                                                        arguments: [],
                                                        directives: [],
                                                        selectionSet: null),
                                                    _i1.FieldNode(
                                                        name: _i1.NameNode(
                                                            value: 'color'),
                                                        alias: null,
                                                        arguments: [],
                                                        directives: [],
                                                        selectionSet: null)
                                                  ]))
                                        ]))
                                  ])),
                              _i1.FieldNode(
                                  name: _i1.NameNode(value: 'createdAt'),
                                  alias: null,
                                  arguments: [],
                                  directives: [],
                                  selectionSet: null),
                              _i1.FieldNode(
                                  name: _i1.NameNode(value: 'updatedAt'),
                                  alias: null,
                                  arguments: [],
                                  directives: [],
                                  selectionSet: null),
                              _i1.FieldNode(
                                  name: _i1.NameNode(value: 'title'),
                                  alias: null,
                                  arguments: [],
                                  directives: [],
                                  selectionSet: null),
                              _i1.FieldNode(
                                  name: _i1.NameNode(value: 'number'),
                                  alias: null,
                                  arguments: [],
                                  directives: [],
                                  selectionSet: null),
                              _i1.FieldNode(
                                  name: _i1.NameNode(value: 'author'),
                                  alias: null,
                                  arguments: [],
                                  directives: [],
                                  selectionSet:
                                      _i1.SelectionSetNode(selections: [
                                    _i1.FieldNode(
                                        name: _i1.NameNode(value: 'login'),
                                        alias: null,
                                        arguments: [],
                                        directives: [],
                                        selectionSet: null),
                                    _i1.FieldNode(
                                        name: _i1.NameNode(value: 'avatarUrl'),
                                        alias: null,
                                        arguments: [],
                                        directives: [],
                                        selectionSet: null)
                                  ])),
                              _i1.FieldNode(
                                  name: _i1.NameNode(value: 'comments'),
                                  alias: null,
                                  arguments: [
                                    _i1.ArgumentNode(
                                        name: _i1.NameNode(value: 'last'),
                                        value: _i1.IntValueNode(value: '100')),
                                    _i1.ArgumentNode(
                                        name: _i1.NameNode(value: 'after'),
                                        value: _i1.NullValueNode())
                                  ],
                                  directives: [],
                                  selectionSet:
                                      _i1.SelectionSetNode(selections: [
                                    _i1.FieldNode(
                                        name: _i1.NameNode(value: 'totalCount'),
                                        alias: null,
                                        arguments: [],
                                        directives: [],
                                        selectionSet: null),
                                    _i1.FieldNode(
                                        name: _i1.NameNode(value: 'pageInfo'),
                                        alias: null,
                                        arguments: [],
                                        directives: [],
                                        selectionSet:
                                            _i1.SelectionSetNode(selections: [
                                          _i1.FieldNode(
                                              name: _i1.NameNode(
                                                  value: 'startCursor'),
                                              alias: null,
                                              arguments: [],
                                              directives: [],
                                              selectionSet: null),
                                          _i1.FieldNode(
                                              name: _i1.NameNode(
                                                  value: 'endCursor'),
                                              alias: null,
                                              arguments: [],
                                              directives: [],
                                              selectionSet: null),
                                          _i1.FieldNode(
                                              name: _i1.NameNode(
                                                  value: 'hasNextPage'),
                                              alias: null,
                                              arguments: [],
                                              directives: [],
                                              selectionSet: null),
                                          _i1.FieldNode(
                                              name: _i1.NameNode(
                                                  value: 'hasPreviousPage'),
                                              alias: null,
                                              arguments: [],
                                              directives: [],
                                              selectionSet: null)
                                        ])),
                                    _i1.FieldNode(
                                        name: _i1.NameNode(value: 'edges'),
                                        alias: null,
                                        arguments: [],
                                        directives: [],
                                        selectionSet:
                                            _i1.SelectionSetNode(selections: [
                                          _i1.FieldNode(
                                              name:
                                                  _i1.NameNode(value: 'cursor'),
                                              alias: null,
                                              arguments: [],
                                              directives: [],
                                              selectionSet: null),
                                          _i1.FieldNode(
                                              name: _i1.NameNode(value: 'node'),
                                              alias: null,
                                              arguments: [],
                                              directives: [],
                                              selectionSet:
                                                  _i1.SelectionSetNode(
                                                      selections: [
                                                    _i1.FieldNode(
                                                        name: _i1.NameNode(
                                                            value: 'createdAt'),
                                                        alias: null,
                                                        arguments: [],
                                                        directives: [],
                                                        selectionSet: null),
                                                    _i1.FieldNode(
                                                        name: _i1.NameNode(
                                                            value: 'body'),
                                                        alias: null,
                                                        arguments: [],
                                                        directives: [],
                                                        selectionSet: null),
                                                    _i1.FieldNode(
                                                        name: _i1.NameNode(
                                                            value: 'author'),
                                                        alias: null,
                                                        arguments: [],
                                                        directives: [],
                                                        selectionSet: _i1
                                                            .SelectionSetNode(
                                                                selections: [
                                                              _i1.FieldNode(
                                                                  name: _i1
                                                                      .NameNode(
                                                                          value:
                                                                              'avatarUrl'),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives: [],
                                                                  selectionSet:
                                                                      null),
                                                              _i1.FieldNode(
                                                                  name: _i1
                                                                      .NameNode(
                                                                          value:
                                                                              'login'),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives: [],
                                                                  selectionSet:
                                                                      null)
                                                            ]))
                                                  ]))
                                        ]))
                                  ]))
                            ]))
                      ]))
                ]))
          ]))
    ]));
const document = _i1.DocumentNode(definitions: [FetchSearchResults]);
