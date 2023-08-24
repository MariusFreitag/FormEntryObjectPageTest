using TestService as service from '../../srv/test-service';

annotate service.RootEntity with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [{
            $Type: 'UI.DataField',
            Value: childEntities.code,
        }],
    },
    UI.Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup1',
    }]
);

annotate service.ChildEntity {
    @Common.ValueList               : {
        Label         : 'Value with Value Help',
        CollectionPath: 'ChildEntityValueHelpEntity',
        Parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: code,
                ValueListProperty: 'code'
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'description'
            }
        ]
    }
    @Common.ValueListWithFixedValues: true
    @Common.TextArrangement         : #TextFirst
    @Common.Text                    : name
    code;
}

annotate service.ChildEntityValueHelpEntity {
    @Common.Text: name
    code;
}
