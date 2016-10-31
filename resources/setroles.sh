#!/bin/bash

registry=$1
oc policy add-role-to-user edit system:serviceaccount:ci-cd:jenkins -n dev
oc policy add-role-to-group system:image-puller system:serviceaccounts:ci-cd -n dev
oc policy add-role-to-user edit system:serviceaccount:ci-cd:jenkins -n qa
oc policy add-role-to-group system:image-puller system:serviceaccounts:ci-cd -n qa
oc create deploymentconfig simpledemo --image=$registry/dev/simpledemo:promoteToQA -n qa
oc expose dc simpledemo --port=8080 -n qa
oc expose svc simpledemo -n qa
