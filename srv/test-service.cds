using {test as my} from '../db/schema';

service TestService {
  @odata.draft.enabled
  entity RootEntity                 as projection on my.RootEntity;

  entity ChildEntity                as projection on my.ChildEntity;
  entity ChildEntityValueHelpEntity as projection on my.ChildEntityValueHelpEntity;
}
