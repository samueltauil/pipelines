#!/bin/bash

registry=$1
oc policy add-role-to-user edit system:serviceaccount:ci-cd:jenkins -n dev
oc policy add-role-to-group system:image-puller system:serviceaccounts:ci-cd -n dev
oc policy add-role-to-user edit system:serviceaccount:ci-cd:jenkins -n qa
oc policy add-role-to-group system:image-puller system:serviceaccounts:ci-cd -n qa
oc create deploymentconfig pipelines --image=$registry/dev/pipelines:promoteToQA -n qa
oc expose dc pipelines --port=8080 -n qa
oc expose svc pipelines -n qa
