provider "aws" {

  region = var.main_region

}

provider "aws" {
  alias  = "nvirginia"
  region = var.alias_region
}

