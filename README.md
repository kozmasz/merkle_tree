# MerkleTree

## Description

A hash tree or Merkle tree is a tree in which every non-leaf node is labelled with the hash of the labels or values (in case of leaves) of its child nodes. Hash trees are useful because they allow efficient and secure verification of the contents of large data structures. Hash trees are a generalization of hash lists and hash chains.

## Getting started

1. Install Homebrew
2. `\ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

### Install other various brew packages

`brew install git hub`

Setup the credential helper to use your keychain in OSX, so you can access password protected https github URLs easily.

`git config --global credential.helper osxkeychain`

### Configure `git` as an alias to `hub`

`hub` should work as a replacement for `git`, and adds extra features, e.g. a `pull-request` subcommand.

Add a line to `~/.bash_profile`:
```bash
alias git='hub'
```
### Install openssl
   1. macOS: `brew install openssl` homebrew installs openssl "keg-only", meaning it does not symlink openssl files into places like `/usr/local/bin`.

   2. I recommend `asdf` for managing erlang and elixir versions. Get it here https://asdf-vm.com/#/core-manage-asdf (don't install via `brew` or your installed versions will disappear on upgrade):
      ```
      asdf plugin-add erlang
      asdf install erlang 22.x.y # choose latest, I used `22.1` because of my local environment.
      asdf local erlang 22.x.y
      asdf plugin-add elixir
      asdf install elixir 1.10.z # choose latest, I used `1.10.3-otp-22` because of my local environment.
      asdf local elixir 1.10.z

### Clone the project
  `git clone git@github.com:kozmasz/merkle_tree.git`
  
  `cd merkle_tree`

## MerkleTree is setup. Now you can run

* unit and doc tests: `mix test`
* dev server: `iex -S mix`
* test it from console: `MerkleTree.root("transaction_filepath")`

## Transaction filepath

Transaction filepath is a file that contains transaction ids, like this. Every line is identify a transaction.


```12c19cccbd6670eaae2cacda4ade4bf18e5d4c9417268c97f5bcbdab628c31e9
17271f78f9e8aabab287fa688741a64188ce6459cdee1afbca27212bc2ce1aaf
3b873111569ef11a8c904ed901cbc301ddd6042f87848a8a32f42c7c91d5b3e5
3457ccf148a50325f4048f82e88888583a6c8b771fb273e7e8f1d9d83c49b72a
90f033438bb6e191db0fc37e2829e2e7580576c1be59270aa3aeeb1e47d625d3
0a4e5b827751897cbe036c66ae2dded37734be255c712cc5a54be00a8d98c8c1
87cf2864f5de6ba50cc7d1cbea10836d192ad7f83b061cf5651ded40bdff8331
e785fb5c276dd64ae25f5ed1e6eec861b593f39f7e2563c2413747c477389d59
2f7eed0105927f737188114e5149101f6c5e7983f67d62fe719f7526fe3f3246
c8b391e5c0b08636d18ae3bb2bb12a174ede52f76e58503a386bae3da1929f92
6de364bf6ab9d72b82f5f563f6b17e36a48960959c6ca2ec5bf4bfe03e8edfc3
4754cda6d38edffc85950152865a2695323995a61274bc1b6275c535bbf993bc
7b9ab890514f76bab98c0891e666de8e41a779605bdcc787adfc3f4e393ea024
1b700debaa1414b979773d2ddce3c7deab6fda945a92421186a22300e5118de7
ab0c03dcd49d0760458ac67088f1ee69025fa1452a07617e4d35c706ca7df215
9406a48bb8d0d9cd65b248f01ac2ff5736132d8d566c781e8d7700fdbd766ecb



