This playbook is run on a default Bytemark Debian stretch server to set it up
to run Mastodon. It:

* Sets up my social bots, such as @secgen and @SarahAndDuck;
* Uses mastible to install and set up Mastodon

I run it as follows:

```
sudo ansible-playbook -i hosts site.yml
```
