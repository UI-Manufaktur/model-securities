module models.administrations.entities.security.roles.subrole;

@safe:
import models.administrations;

// 
class DUserGroupEntity : DOOPEntity {
  mixin(EntityThis!("UserGroupEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "backingTable_UserGroupInfoRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("admin_usergroups");
  }
}
mixin(EntityCalls!("UserGroupEntity"));

version(test_library) {
  unittest {
    assert(UserGroupEntity);
  
  auto entity = UserGroupEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}