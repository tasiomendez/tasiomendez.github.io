---
layout: project
title: Akka
category: Academic
description: A distributed key-value store in Akka
picture: /assets/img/akka.jpg
github: /tasiomendez/middleware-akka/
technologies:
  - Java
  - Docker
  - Chord Algorithm
year: 2020 July
---

The goal of this project is to provide a distributed key-value store using [Akka](https://akka.io/). The store stores each data element into R replicas to tolerate up to R-1 simultaneous failures without losing any information. Upon the failure of a node, the data it stored is replicated to a new node to ensure that the system has again R copies.

The system uses the [Chord Algorithm](https://en.wikipedia.org/wiki/Chord_(peer-to-peer)) to partition the keyspace which make it fully scalable, a finger table of just 16 entries provides support for up to 65 536 nodes. Besides, client centric consistency models are always guaranteed.

The architecture proposed is based in layers. The first layer is the API layer which provides an easy way to interact with the cluster, which is on top of Akka as it is shown below.

![Akka architecture](https://raw.githubusercontent.com/tasiomendez/middleware-akka/master/docs/arch.png)

Finally, the deployment is made using [Docker](https://docs.docker.com/engine/docker-overview/) and
[Docker Compose](https://docs.docker.com/compose/). It is based on minimum two containers: the
first one is the seed, the node of the cluster where other nodes should join automatically at startup.
