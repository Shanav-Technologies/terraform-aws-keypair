provider "aws" {
  region = "ca-central-1"
}

####----------------------------------------------------------------------------------
##  Module      : public KEY PAIR
####----------------------------------------------------------------------------------
module "public_keypair" {
  source = "../../" # 👉 यह आपका local custom module है, ensure करें कि अंदर main.tf, variables.tf हैं

  name        = "public-key"
  environment = "test"
  label_order = ["name", "environment"]
  public_key  = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}
