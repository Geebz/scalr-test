# Enforces that workspaces are tagged with the names of the providers.

package terraform

import input.tfplan as tfplan


deny["Can not destroy bucket"] {
    resource := tfplan.resource_changes[_]
    "delete" == resource.change.actions[count(resource.change.actions) - 1]
    "aws_s3_bucket" == resource.type
}
