modular-hs-vim-ide
==================

A nice and modular, self-contained and organized Haskell IDE using Vim. This repo is just
a perfect "combination" of two other efforts, and contains these two efforts as submodules.
Combining the forces of these two repos results in an **awesome** environment in which to
develop Haskell software using Vim.

  * **General Vim improvements:** A self-contained Vim environment with a curated reasonable
    set of improvements, configurations, keybindings and plugins in order to make the life
    of a programmer using Vim more comfortable. To know more about it, take a look at the
    [README](https://github.com/joaopizani/modular-xplatform-vim-cfg/README.md) file.
    This set of language-agnostic Vim goodies resides in a submodule under the directory
    "general-vim-cfgs".

  * **Haskell-specific Vim configs:**  An independent set of configs to make the experience of
    programming in Haskell using Vim more comfortable. Independent of the general vim configs,
    therefore it resides in a submodule ("haskell-vim-cfgs"). By "independent", I mean that if
    you think you have good enough general vim configs, you can just add the Haskell-specific
    stuff to your setup. More details about this repo in its
    [README](http://github.com/joaopizani/haskell-vim-cfgs) file. In summary:
    - Unicode symbols shown dynamically with Vim's conceal feature (λ, ∷, →, ⇒, »=, », ∘)
    - One-keypress syntax and type-checking using GHC-mod
    - Source file outline (tags) using lushtags
    - Haskell syntax-specific code folding showing type signatures
