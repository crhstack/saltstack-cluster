base:
  '*':
    - init.init-all

prod:
  'linux-node1.example.com':
    - shop-user.mysql-master
    - redis-cluster.master
    - shop-user.web
    - lb-outside.haproxy-outside
    - lb-outside.haproxy-outside-keepalived

  'linux-node2.example.com':
    - shop-user.mysql-slave
    - redis-cluster.slave
    - shop-user.web
    - lb-outside.haproxy-outside
    - lb-outside.haproxy-outside-keepalived
