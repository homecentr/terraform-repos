resource "github_repository" "template_repo" {
  for_each     = var.template_repositories
  name         = each.value.repo_name

  homepage_url = "https://homecentr.github.io"

  has_issues    = false
  has_projects  = false
  has_wiki      = false
  has_downloads = false
  is_template   = true

  allow_squash_merge  = true
  allow_merge_commit  = false  
  allow_rebase_merge  = false

  private      = false
  archived     = each.value.archived
  topics       = each.value.topics

  lifecycle {
    prevent_destroy = true
  } 
}