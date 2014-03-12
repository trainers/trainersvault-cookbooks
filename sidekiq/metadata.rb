maintainer        "Donald Piret"
maintainer_email  "donald@donaldpiret.com"
license           "Apache 2.0"
description       "Sets up Sidekiq to start a number of workers and monitors them"
version           "0.1"
recipe            "sidekiq::deploy", "Sets up sidekiq workers through monit"

supports 'ubuntu'