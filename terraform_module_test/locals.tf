locals {
  azs = module.test_module.azs
  public_subnet_ids = module.test_module.public_subnet_ids
  private_subnet_ids = module.test_module.private_subnet_ids
  database_subnet_ids = module.test_module.database_subnet_ids
  natgw_id = module.test_module.natgw_id
}