Näide
=====

Põhilised versioneerimise etapid lühikese näitena.

Tühja varamu loomine
++++++++++++++++++++

Loome uue tühja kausta (olemasolevasse kausta `Example`), saagu selle nimeks `tatikas`::

  % mkdir tatikas
  nemee@Mac Example % cd tatikas

Esialgu on see kaust tühi::
  
  nemee@Mac tatikas % ls -l
  total 0

Nagu arvata võib, ei anna ka käsk `git status` mingit mõistlikku tulemust::
  
  nemee@Mac tatikas % git status
  fatal: not a git repository (or any of the parent directories): .git
