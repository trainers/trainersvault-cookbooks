maintainer        "Donald Piret"
maintainer_email  "donald@donaldpiret.com"
license           "Apache 2.0"
description       "Makes sure the app has a recent copy of the maxmind geoip databases available"
version           "0.1"
recipe            "geoip_db::deploy", "Download a copy of the maxmind geoip database for the app if required"

supports 'ubuntu'