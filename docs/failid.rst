Sissejuhatus
============

Gitil on 4 "tsooni" kus asuvad falid erinevatel etappidel.

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

Kuidas on?

   
