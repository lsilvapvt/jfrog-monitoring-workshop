#!/bin/bash
ytt -f jfrog-monitoring-workshop-sessions-ytt.yml -f credentials.yml | kubectl delete -f-

kubectl delete -f jfrog-monitoring-workshop-env.yml

kubectl delete -f jfrog-monitoring-workshop.yml

kubectl delete -k "github.com/eduk8s/eduk8s?ref=21.05.10.1"
