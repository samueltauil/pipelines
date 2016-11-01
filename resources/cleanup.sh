#!/bin/bash

oc delete all --all -n qa
oc delete all --all -n dev
oc delete bc/sample-pipeline -n ci-cd
