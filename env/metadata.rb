maintainer        "Donald Piret"
maintainer_email  "donald@donaldpiret.com"
license           "Apache 2.0"
description       "Sets up environment variables for your app to use"
version           "0.1"
recipe            "env::default", "Export system-wide environment variables"
recipe            "env::configure", "Export app-level environment variables"

supports 'ubuntu'