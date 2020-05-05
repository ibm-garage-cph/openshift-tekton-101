
# Running a task by name
tkn task start buildah -i source=source -i image=image -s pipeline -n $NAMESPACE

# Delete tasks and taskruns
oc delete task --all -n $NAMESPACE
oc delete taskrun --all -n $NAMESPACE

# Basic tekton stuff
tkn task ls
tkn pipeline ls

# Openshift Security context
oc adm policy add-scc-to-user privileged -z pipeline
oc adm policy add-role-to-user edit -z pipeline