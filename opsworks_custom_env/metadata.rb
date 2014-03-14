maintainer        "Donald Piret"
maintainer_email  "donald@donaldpiret.com"
description "Writes a config/application.yml file with custom ENV values to apps' deploy directories."
version "0.1"

recipe "opsworks_custom_env::deploy", "Write a config/application.yml file to app's deploy directory. Relies on restart command declared by rails::configure recipe. (Intended as part of deploy OpsWorks events.)"

# This actually depends on the rails::configure recipe by OpsWorks, but not
# declaring that here to prevent librarian-chef failure.
# depends "rails::configure"
