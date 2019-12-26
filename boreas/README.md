This playbook is run on a default Bytemark Symbiosis server to set it up to run
Theatricalia. It:

* removes some unused symbiosis components;
* stops the memory-hungry unneeded antivirus daemons;
* makes sure the second disc is available and used for the backup location;
* installs nginx with some extra config and a default site;
* installs uwsgi; and
* sets up various things to run the site itself:
    - a MySQL database and user;
    - a virtualenv;
    - webserver configuration for nginx and uwsgi;
    - a site unix user, default static files, and SSH key;
    - fetches the code from GitHub.

I run it as follows:

```
sudo ansible-playbook main.yml --vault-password-file /srv/.ansible-vault --become --connection local -i localhost,
```

I did need to do some things manually as part of the moving process. For
interest, they were:

* installing ansible (from jessie-backports);
* putting the ansible vault password in ~/.ansible-vault;
* removing the default site selfsigned ssl-provider so it got an LE one;
* copying the theatricalia.com LE certificate across; and
* copying the existing uploaded files and database across.
