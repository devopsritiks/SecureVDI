#!/bin/bash
helm upgrade --install vdi-manager infra/kubernetes/helm/vdi-manager --namespace vdi-platform --kubeconfig=../kubeconfig
helm upgrade --install vdi-desktop infra/kubernetes/helm/vdi-desktop --namespace vdi-platform --kubeconfig=../kubeconfig
