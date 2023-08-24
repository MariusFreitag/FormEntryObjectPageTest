namespace test;

entity RootEntity {
  key ID            : UUID;
      childEntities : Composition of many ChildEntity
                        on childEntities.parent = $self;
}

entity ChildEntity {
  key ID     : UUID;
      code   : Integer;
      name   : String;
      parent : Association to one RootEntity;
}

entity ChildEntityValueHelpEntity {
  key code        : Integer;
      name        : String;
      description : String;
}
