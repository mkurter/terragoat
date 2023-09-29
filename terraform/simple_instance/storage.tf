provider "random" {
}

resource "random_string" "sa_name_affix" {
  length  = 8
  special = false
  upper   = false
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "trekgroup" {
  name     = "trekgroup-resources"
  location = "West US"
  tags = {
    yor_name             = "trekgroup"
    yor_trace            = "4e6406a9-4249-4450-98ca-e21475aef945"
    git_commit           = "392dda66c3794880718043c5dd32867ed63a5417"
    git_file             = "terraform/simple_instance/storage.tf"
    git_last_modified_at = "2023-09-29 06:14:43"
    git_last_modified_by = "46439748+mkurter@users.noreply.github.com"
    git_modifiers        = "46439748+mkurter"
    git_org              = "mkurter"
    git_repo             = "terragoat"
  }
}

resource "azurerm_storage_account" "storagebay" {
  name                     = "storagebay${random_string.sa_name_affix.result}"
  resource_group_name      = azurerm_resource_group.trekgroup.name
  location                 = azurerm_resource_group.trekgroup.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags = {
    yor_name             = "storagebay"
    yor_trace            = "b366eaf9-7e05-4140-b0ed-498556fd1aee"
    git_commit           = "392dda66c3794880718043c5dd32867ed63a5417"
    git_file             = "terraform/simple_instance/storage.tf"
    git_last_modified_at = "2023-09-29 06:14:43"
    git_last_modified_by = "46439748+mkurter@users.noreply.github.com"
    git_modifiers        = "46439748+mkurter"
    git_org              = "mkurter"
    git_repo             = "terragoat"
  }
}
