maintainer        "Donald Piret"
maintainer_email  "donald@donaldpiret.com"
license           "Apache 2.0"
description       "Use this recipe to enable a 2gb swap drive (use this for micro instances)"
version           "0.1"
recipe            "addswap::default", "Add a 2GB swap drive and mount it"

supports 'ubuntu'