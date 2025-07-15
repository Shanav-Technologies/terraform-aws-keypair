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
  public_key  = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDiauRRhSL3KprhrjrepCfebnrAERnFMR8DFXgwM4rLmXdI9M6sbP1dn2o9Vurf8Bznm2uBZttTPTi8lxnS4YSG4Q+F0nU98tYxXSEb66zp8b/ZcICT2kqMC6suEO3U7IG8wasXCoxOyJ5lqBi8xrmQKBgTZKk6EvO9SSpSishpAP2hafnIuP29RqipraT9UvNeMSbM3/OTjV9I2/KHd/YfSzrUQbnQ6zTgNawyZ8CaRo/Intot3HgU/5PsOKPcTlarb0sFXuWDhdcE+/8TPsjFTPOzMFBDr+H11Oq+cxMoQ/YMXLo/KmokM/km/NfLvEvscuDFzA7JLURiaV33MoQxxIfaTwvrQZ9UJ4gdzd4WhF1sVNB3MP7z07I8pBepJVwca1fTWI9hvn6xK3a6nfD6p8gKiP5xlINMZX7Oi9tmhFuv4vxkYiGZvAI12va9InJFZUQEHmJaIr4g7Faczl5oFK6TYc1FRut9ve4v0JKbz7Od3Uwyqd6rSeHxm/obp1E= satish@satish"
}
