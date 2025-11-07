Näide
=====

Põhilised versioneerimise etapid lühikese näitena.

Tühja varamu loomine
++++++++++++++++++++

Loome uue tühja kausta (olemasolevasse kausta `Example`), saagu selle nimeks `tatikas`::

  Example % mkdir tatikas
  Example % cd tatikas

Esialgu on see kaust tühi::
  
  tatikas % ls -l
  total 0

Nagu arvata võib, ei anna ka käsk `git status` mingit mõistlikku tulemust::
  
  tatikas % git status
  fatal: not a git repository (or any of the parent directories): .git

Teeme kausta tühja faili nimega `README.md`::

  tatikas % touch README.md

Nüüd on kaustas `tatikas` üks tühi fail nimega `README.md`.
Lisame sellele failile pisut sisu::

  tatikas % echo "# Tatikas" > README.md

Vaatame, mis selles failis on::

  tatikas % cat README.md
  # Tatikas

Lisame failile veel sisu::

  tatikas % echo -e "\nJaan Tatika elu ja võitlus."

Vaatame, mis selles failis nüüd on::

  tatikas % cat README.md 
  # Tatikas

  Jaan Tatika elu ja võitlus.

Nüüd on kohalikus kaustas üks fail ja selles failis on kaks rida teksti, mis on eraldatud ühe tühja reaga.
