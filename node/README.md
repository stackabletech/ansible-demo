Stackable Nodes
=========

This role installs the Stackable agent on all target hosts.
This includes creating a working directory and a systemd service to run the agent.

Requirements
------------

A master server needs to have been provisioned with the _orchestrator_ role and have the agent binary compiled and available for download in the repository. 

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
        - {role: node, tags: "node"}

License
-------

Apache 2.0

Author Information
------------------

https://github.com/stackabletech
