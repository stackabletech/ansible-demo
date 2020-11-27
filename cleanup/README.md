Stackable Cleanup
=========

A cleanup role that can be run after a demo has been run on a Stackable environment to clean up installed services and leftover data.

This will:

* stop the agent
* delete all downloaded packages
* delete all config that was created
* remove kafka and zookeeper data on disk
* restart the agent

**Note:** This will not remove pod and service objects in the apiserver, this has to be done manually **before** running this playbook.

Requirements
------------

A master server and agents need to have been provisioned. 

Role Variables
--------------

None, this will most definitely change, if this moves forward.

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    ---
    - hosts: nodes
      roles:
        - {role: cleanup, tags: "node"}

License
-------

Apache 2.0

Author Information
------------------

https://github.com/stackabletech
