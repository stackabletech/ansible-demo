Stackable Master Server
=========

This role installs the necessary components for the target machine to act as the master in a Stackable setup.
This includes:
- kube apiserver
- kube scheduler
- repository server
- etcd
- Stackable operators
  - Zookeeper
  - Kafka

**Warning:**
This playbook is not yet intended for end-user usage, it does have a lot of sharp edges and unfinished pieces, some of which are stated below.  

Requirements
------------

This role does not at this point in time include tasks to do the following things:

* download and compile Operators, it just creates folders and service units 
* download and compile agent
* register CRDs in the apiserver


The repositories for the steps above can be found here:

|Component   	|Repository   	|Target Directory   	|Servicename   	| 
|---	|---	|---	|---	
|Stackable Agent   	|https://github.com/stackabletech/agent   	| /opt/stackable-repo/   	|No service on master node   	|
|Zookeeper Operator   	| https://github.com/stackabletech/zookeeper-operator   	|/opt/zookeeper-operator/   	| kafka-operator.service  	| 
|Kafka Operator   	|https://github.com/stackabletech/kafka-operator   	| /opt/kafka-operator/  	| zk-operator.service  	|  



The build process is fairly straigthforward:

    git clone <repo>
    cd repo
    cargo build

The resulting binary can be found in the _target/debug_ subdirectory and needs to be copied to the target directory stated in the table above.

Role Variables
--------------

None, this will most definitely change, if this moves forward.

Dependencies
------------

None

Example Playbook
----------------
  ---
    - hosts: orchestrator
      roles:
        - { role: orchestrator, tags: "orchestrator" }
      become: yes
      become_user: root

License
-------

Apache 2.0

Author Information
------------------

https://github.com/stackabletech
