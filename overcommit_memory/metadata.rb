maintainer        "Donald Piret"
maintainer_email  "donald@roomorama.com"
license           "Apache 2.0"
description       "Enable or disable memory overcommit"
version           "0.1"
recipe            "overcommit_memory::enable", "Enable memory overcommit"
recipe            "overcommit_memory::disable", "Disable memory overcommit"

supports 'ubuntu'

depends 'sysctl'