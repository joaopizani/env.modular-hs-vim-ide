An organized and modular IDE for Haskell using Vim
==================================================

What is it?
-----------
A nice and modular, self-contained and organized Haskell IDE using Vim. This repo is just
a "combination" of two of my other efforts, and contains these two efforts as submodules.
Combining the forces of these two repos results in an **awesome** environment in which to
develop Haskell software using Vim. These two component projects are:

  * **General Vim improvements:** A self-contained Vim environment with a curated reasonable
    set of improvements, configurations, keybindings and plugins in order to make the life
    of a programmer using Vim more comfortable. To know more about it, take a look at the
    [README](https://github.com/joaopizani/modular-xplatform-vim-cfg/blob/master/README.md)
    file. This set of language-agnostic Vim goodies resides in a submodule under the directory
    "general-vim-cfgs".

  * **Haskell-specific Vim configs:**  An independent set of configs to make the experience of
    programming in Haskell using Vim more comfortable. They try to be as independent as possible
    of whatever general vim configs you might already have. It resides here in the
    "haskell-vim-cfgs" submodule. By "independent", I mean that if you think you have good enough
    general vim configs, you can just add the Haskell-specific stuff to your setup. More details
    about this repo in its
    [README](http://github.com/joaopizani/haskell-vim-cfgs/blob/master/README.md) file.
    In summary:
    - Unicode symbols shown dynamically with Vim's conceal feature (λ, ∷, →, ⇒, »=, », ∘)
    - One-keypress syntax-checking, type-checking and type-insertion using GHC-mod
    - Source file outline (tags) using lushtags
    - Haskell syntax-specific code folding showing type signatures
    - Haskell code beautification through Jasper van der Jeugt's AWESOME _stylish-haskell_


How to install
--------------
It'so easy that it doesn't even deserve the awful name "installation". As a matter of fact, the
setup relies very little on stateful stuff, so I like to regard this "installation" as being
purely functional and (almost) free of side effects, just like Haskell :)

Remember, this is only about how to install the environment. If you want to know all the goodies
that it offers and how to use them, you should read
  * The [Vim-General README](http://github.com/joaopizani/modular-xplatform-vim-cfg/blob/master/README.md)
  * The [Vim-Haskell README](http://github.com/joaopizani/haskell-vim-cfgs/blob/master/README.md)

Now for the "installation":

### The quick and easy way ###

#### First step - Clone and update submodules ####
  * Clone this repo to a directory of your preference (referred here as $REPO),
    and then init and update the submodules recursively:

```bash
REPO=~/modular-hs-vim-ide; git clone https://github.com/joaopizani/modular-hs-vim-ide.git $REPO
cd $REPO; git submodule update --init --recursive
```


#### Second step - Link (OS-specific) ####
  * **Linux, BSD or Mac OS X:** Create a link called "\_vimrc" in your home
    directory pointing to the cloned repo:

```bash
ln -s $REPO/_vimrc  ~/_vimrc
```

  * **Windows:** execute (double-click) the file named `$REPO/win/install-vimrc-link.bat`

#### Third and last step - initialize the plugins ####
  * Fetch and install (in a self-contained fashion, of course) all the plugins
    of the recommended set, by using: `vim -u ~/_vimrc +BundleInstall +qall`

**DONE**, completely DONE. Now, you have two choices, depending on whether you already had a
".vimrc" file in your home directory.
  * If you already have, don't worry: by typing `vim` your trusty, old configuration (~/.vimrc)
    will be used. Because the file pointing to the Haskell IDE configs is in "_vimrc", you
    will have to type `vim -u ~/_vimrc` to use then Haskell environment.

  * If you want to make the Haskell IDE config a _default_ and use your old Vim config only
    sometimes, OR if you _had no significant vim customization at all_, you can just do
    `mv ~/.vimrc ~/_vimrc-old`. Then vim will start using the Haskell IDE's "_vimrc" file
    whenever you run `vim`.

  * An easy way to have both versions of Vim (Haskell-tuned and old-school) together is to
    create an alias for the Haskell version, for example:
    `echo "alias hvim='vim -u ~/_vimrc'" >> ~/.bash_aliases` to have the nice "hvim" alias.

