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

Nüüd loome uue tühja faili nimega `elulugu.rst`::

  tatikas % touch elulugu.rst

ja redigeerime seda sobiva tekstitoimetiga. lisades sinna järgmise lõigu

   Kui Jaan Tatikas mitte üle maailma kuulsaks ei ole saanud, siis ei ole see tema laisa tahtmise süü. Tema on selle tarwis sala soowisid salwede kaupa, palawat higi pangede kaupa ära kulutanud. Ta sündis oma esimesel elupäewal ja ilmutas kohe kindlat nõuu, kuulsaks meheks saada, sest temal oli pahema käe küljes paljalt neli sõrme.

See tekst on nüüd failis `elulugu.rst`.

Nüüd loome olemasolevasse kausta uue repositooriumi::

  tatikas$ git init
  hint: Using 'master' as the name for the initial branch. This default branch name
  hint: is subject to change. To configure the initial branch name to use in all
  hint: of your new repositories, which will suppress this warning, call:
  hint: 
  hint:   git config --global init.defaultBranch <name>
  hint: 
  hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
  hint: 'development'. The just-created branch can be renamed via this command:
  hint: 
  hint:   git branch -m <name>

Nüüd on uus varamu loodud, see on kohalikus masinas.

