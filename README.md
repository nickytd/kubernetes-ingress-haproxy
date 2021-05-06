# kubernetes-ingress-haproxy

This setup provisions [haproxy](https://www.haproxy.com/documentation/kubernetes/latest/) ingress controller

# helm chart dependencies
* ```helm repo add haproxytech https://haproxytech.github.io/helm-charts```

[mkcert](https://github.com/FiloSottile/mkcert) tool can be used to facilitate creating SSL certificates for local development

In some development environments like minikibe an additional patch is needed on coredns to allow resolving local development addresses from within the workloads. Here is an example [kubernetes-coredns-patch](https://github.com/nickytd/kubernetes-coredns-patch)