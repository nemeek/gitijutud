Kus mu failid on?
==================

Gitil on 4 "tsooni" kus asuvad falid erinevatel etappidel.

Giti enda tööks ei ole vaja kaugrepositooriumit, töötab ka kohalikus arvutis.
Kohalikus arvutis võivad failid olla kolmes erinevas staadiumis:

**kohalik töökaust** (*local working directory*)
	siin toimub kogu arendustegevus, kaustas võib olla ka faile, mis gitti ei lähe. Seda võib pidada Giti suhtes ka
	"nulltasemeks". Failid lisatakse lavale käsuga ˋˋgit add <failinimi>ˋˋ.

**lava** (*stage*)
	siin on failid valmis liikuma edasi repositooriumi. Lava võib käsitleda ka kohana, kust on võimalik saada kätte 
	failide varasemat seisu. Failid lisatakse kohalikku repositooriumisse käsuga ``git commit -m 'kommentaar'``.

**kohalik repo** (*local repository*)
       siin on failid kohalikus repositooriumis, valmis saatmiseks teistele kasutajatele. Kaugesse repositooriumi saadetakse failid käsuga ``git push``.
   

.. graphviz::
   
   digraph git {
      rankdir=LR;
      subgraph cluster_local {
	 label="Kohalik";
	 "kohalik töökaust" [shape=folder];
	 "lava";
	 "kohalik repo" [shape=cylinder];
      }
      
      subgraph cluster_remote {
         label="kauge";
	 "kauge repo" [shape=cylinder];
      }

      "kauge repo" -> "kohalik repo" [label="git clone"];
      "kohalik repo" -> "kauge repo" [label="git push"];
      "lava" -> "kohalik repo" [label="git commit"];
      "kohalik töökaust" ->  "lava"  [label="git add"];
      "kohalik repo" -> "kohalik töökaust" [label="git checkout"];
   }

  
