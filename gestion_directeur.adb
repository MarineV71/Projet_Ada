with Ada.Text_Io,Ada.Integer_Text_Io;
use Ada.Text_Io,Ada.Integer_Text_Io;
package body Gestion_Directeur is 
   procedure Aj_user (direc:out pteur_directeur; chg : out pteur_charge; scrt:out pteur_secretaire; t:out pteur_testeuse; E:out pteur_etude; I:out pteur_incluse) is
   begin
   direc:=new T_Liste_directeur'(direc.dir,null);
   direc.dir.id.nom:="WAYNE          ";
   direc.dir.id.prenom:="John           ";
   direc.dir.id.login:="john.wayne                     ";
   direc.dir.id.mdp:="nMYnaee!43";
   direc.dir.id.n:=12;
   direc.dir.nb_etude_C:=7;
   
   ajout_secr(scrt,scrt.secr);
   scrt.secr.id.nom:="GUERRE         ";
   scrt.secr.id.prenom:="Martin         ";
   scrt.secr.id.login:="martin.guerre                  ";
   scrt.secr.id.mdp:="6wJYZWs?9!";
   scrt.secr.id.n:=5;
   
      Ajout_Charge(Chg,Chg.Charge);
      chg.charge.id.nom:="PERSONNE       ";
   chg.charge.id.prenom:="Paul           ";
   chg.charge.id.login:="paul.personne                  ";
   chg.charge.id.mdp:="5678!.?def";
   chg.charge.id.n:=14;
   chg.charge.nb_etude_en_charge:=3;
   --chg.charge.etude_en_charge
   chg.charge.nb_etude_t:=0;
   
   
   ajout_charge(chg,chg.charge);
   chg.charge.id.nom:="FER            ";
   chg.charge.id.prenom:="Lucie          ";
   chg.charge.id.login:="lucie.fer                      ";
   chg.charge.id.mdp:="tQXXeFMD46";
   chg.charge.id.n:=12;
   chg.charge.nb_etude_en_charge:=2;
   --chg.charge.etude_en_charge
   chg.charge.nb_etude_t:=0;
   
   Ajout_Charge(Chg,Chg.Charge);
   chg.charge.id.nom:="GRANT          ";
   chg.charge.id.prenom:="Hermine        ";
   chg.charge.id.login:="hermine.grant                  ";
   chg.charge.id.mdp:="!5ef8h0jk3";
   chg.charge.id.n:=4;
   chg.charge.nb_etude_en_charge:=2;
   --chg.charge.etude_en_charge
   chg.charge.nb_etude_t:=0;
     
      T:=new T_Liste_Testeuse'(T.Test,null);
      T.Test.Id.Nom:="BELOEIL        ";
      T.Test.id.prenom:="Coco           ";
      T.Test.id.login:="coco.beloeil                   ";
      T.Test.id.mdp:="?hThT678!2";
      T.Test.Id.N:=5;
      T.Test.Age:=19;
      --T.Test.etude:=1;

      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="TIGRESSE       ";
      T.Test.id.prenom:="Lily           ";
      T.Test.id.login:="lily.tigresse                  ";
      T.Test.id.mdp:="zODOBzKX21";
      T.Test.Id.N:=10;
      T.Test.Age:=27;
      --T.Test.etude:=1;
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="ARC            ";
      T.Test.id.prenom:="Jeanne         ";
      T.Test.id.login:="jeanne.arc                     ";
      T.Test.id.mdp:="90tWJQFSW#";
      T.Test.Id.N:=5;
      T.Test.Age:=66;
      --T.Test.etude:=5;
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="SOUBIROUX      ";
      T.Test.id.prenom:="Bernadette     ";
      T.Test.id.login:="bernadette.soubiroux           ";
      T.Test.id.mdp:="xAGDPQE$#6";
      T.Test.Id.N:=12;
      T.Test.Age:=59;
      --T.Test.etude:=0;
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="DUBOIS         ";
      T.Test.id.prenom:="Josette        ";
      T.Test.id.login:="josette.dubois                 ";
      T.Test.id.mdp:="#pUYO$cGRJ";
      T.Test.Id.N:=6;
      T.Test.Age:=65;
      --T.Test.etude:=1;
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="BELLE          ";
      T.Test.id.prenom:="Lucille        ";
      T.Test.id.login:="lucille.belle                  ";
      T.Test.id.mdp:="aJRXAAT780";
      T.Test.Id.N:=15;
      T.Test.Age:=21;
      --T.Test.etude:=6;
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="HEPBURN        ";
      T.Test.id.prenom:="Audrey         ";
      T.Test.id.login:="audrey.hepburn                 ";
      T.Test.id.mdp:="oMDKS#sDMZ";
      T.Test.Id.N:=12;
      T.Test.Age:=35;
      --T.Test.etude:=7;
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="LUNE           ";
      T.Test.id.prenom:="Valeria        ";
      T.Test.id.login:="valeria.lune                   ";
      T.Test.id.mdp:="nCV346YJ!R";
      T.Test.Id.N:=21;
      T.Test.Age:=17;
      --T.Test.etude:=6;
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="CLARK          ";
      T.Test.id.prenom:="Anna           ";
      T.Test.id.login:="anna.clark                     ";
      T.Test.id.mdp:="tUKTVTWTUK";
      T.Test.Id.N:=19;
      T.Test.Age:=24;
      --T.Test.etude:=6;
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="SCHUMAN        ";
      T.Test.id.prenom:="Clara          ";
      T.Test.id.login:="clara.schuman                  ";
      T.Test.id.mdp:="wCQTLSRMI1";
      T.Test.Id.N:=4;
      T.Test.Age:=39;
      --T.Test.etude:=7;
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="ROMEO          ";
      T.Test.id.prenom:="Juliette       ";
      T.Test.id.login:="juliette.romeo                 ";
      T.Test.id.mdp:="#01#64#vHL";
      T.Test.Id.N:=18;
      T.Test.Age:=47;
      --T.Test.etude:=7;
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="VALLADE        ";
      T.Test.id.prenom:="Martine        ";
      T.Test.id.login:="martine.vallade                ";
      T.Test.id.mdp:="876yare678";
      T.Test.Id.N:=24;
      T.Test.Age:=59;
      --T.Test.etude:=7;
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="MOUTON         ";
      T.Test.id.prenom:="Aline          ";
      T.Test.id.login:="mouton.mouton                  ";
      T.Test.id.mdp:="iLL890kVKV";
      T.Test.Id.N:=7;
      T.Test.Age:=45;
      --T.Test.etude:=7;
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="REBEL          ";
      T.Test.id.prenom:="Alicia         ";
      T.Test.id.login:="alicia.rebel                   ";
      T.Test.id.mdp:="vXWyFM!wJ?";
      T.Test.Id.N:=9;
      T.Test.Age:=19;
      --T.Test.etude:=6;
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="FLEUR          ";
      T.Test.id.prenom:="Caroline       ";
      T.Test.id.login:="caroline.fleur                 ";
      T.Test.id.mdp:="hYCO39!rVM";
      T.Test.Id.N:=16;
      T.Test.Age:=52;
      --T.Test.etude:=0;
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="BARTOK         ";
      T.Test.id.prenom:="Belle          ";
      T.Test.id.login:="belle.bartok                   ";
      T.Test.id.mdp:="#bJHXZ994$";
      T.Test.Id.N:=15;
      T.Test.Age:=72;
      --T.Test.etude:=1;
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="BELLE          ";
      T.Test.id.prenom:="Marie          ";
      T.Test.id.login:="marie.belle                    ";
      T.Test.id.mdp:="!?cNHYR.27";
      T.Test.Id.N:=13;
      T.Test.Age:=74;
      --T.Test.etude:=5;
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="BLEUE          ";
      T.Test.id.prenom:="Agathe         ";
      T.Test.id.login:="agathe.bleue                   ";
      T.Test.id.mdp:="sktLm!$#01";
      T.Test.Id.N:=6;
      T.Test.Age:=62;
      --T.Test.etude:=5;
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="ARC            ";
      T.Test.id.prenom:="Mireille       ";
      T.Test.id.login:="mireille.arc                   ";
      T.Test.id.mdp:="dZDZfGVIR!";
      T.Test.Id.N:=17;
      T.Test.Age:=67;
      --T.Test.etude:=5;
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="CADET          ";
      T.Test.id.prenom:="Benjamine      ";
      T.Test.id.login:="benjamine.cadet                ";
      T.Test.id.mdp:="sHWLWHrXUV";
      T.Test.Id.N:=3;
      T.Test.Age:=41;
      --T.Test.etude:=3;
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="BLANC          ";
      T.Test.id.prenom:="Aline          ";
      T.Test.id.login:="aline.blanc                    ";
      T.Test.id.mdp:="?i91hjk!#$";
      T.Test.Id.N:=7;
      T.Test.Age:=52;
      --T.Test.etude:=3;
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="POPPINS        ";
      T.Test.id.prenom:="Mary           ";
      T.Test.id.login:="mary.poppins                   ";
      T.Test.id.mdp:="uWRGTECNKH";
      T.Test.Id.N:=2;
      T.Test.Age:=31;
      --T.Test.etude:=3;
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="PIERRE         ";
      T.Test.id.prenom:="Jeanette       ";
      T.Test.id.login:="jeanette.pierre                ";
      T.Test.id.mdp:="aWEFCPaLD!";
      T.Test.Id.N:=11;
      T.Test.Age:=47;
      --T.Test.etude:=3;
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="KRUL           ";
      T.Test.id.prenom:="Cathy          ";
      T.Test.id.login:="cathy.krul                     ";
      T.Test.id.mdp:="#$mVYLAm$!";
      T.Test.Id.N:=7;
      T.Test.Age:=39;
      --T.Test.etude:=3;
      
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="BONPAIN        ";
      T.Test.id.prenom:="Karine         ";
      T.Test.id.login:="karine.bonpain                 ";
      T.Test.id.mdp:="nDJEX!nDE#";
      T.Test.Id.N:=15;
      T.Test.Age:=45;
      --T.Test.etude:=3;
      
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="MAILLARD       ";
      T.Test.id.prenom:="Yvette         ";
      T.Test.id.login:="yvette.maillard                ";
      T.Test.id.mdp:="mOO346?#1m";
      T.Test.Id.N:=12;
      T.Test.Age:=51;
      --T.Test.etude:=0;
       
      T:=new T_Liste_Testeuse'(T.Test,T);
      T.Test.Id.Nom:="BEAUSONGE      ";
      T.Test.id.prenom:="Iseult         ";
      T.Test.id.login:="iseult.beausonge               ";
      T.Test.id.mdp:="7jHYIJQDJ0?";
      T.Test.Id.N:=16;
      T.Test.Age:=21;
      --T.Test.etude:=0;
      
      E:=new T_Liste_Etude'(E.Etu,null);
      E.Etu.Id:=1;
      E.Etu.Produit.Nom_P:="Peau Douce     ";
      E.Etu.Produit.Cat:=T_Categorie'val(T_Categorie'pos(Lotion_Visage));
      E.Etu.Produit.Age_Min:=15;
      E.Etu.Produit.Age_Max:=75;
      E.Etu.Produit.Entreprise:="Belle Peau     ";
      E.Etu.Nb_Testeuse:=4;
      E.Etu.Nom_Charge:="PERSONNE       ";
      E.Etu.Prenom_Charge:="Paul           ";
      I:=new T_Liste_Incluse'(I.incl,null);
      I.Incl.Nom:="BELOEIL        ";
      I.Incl.Prenom:="Coco           ";
      I:=new T_Liste_Incluse'(I.incl,I);
      I.Incl.Nom:="TIGRESSE       ";
      I.Incl.Prenom:="Lily           ";
      I:=new T_Liste_Incluse'(I.incl,I);
      I.Incl.Nom:="DUBOIS         ";
      I.Incl.Prenom:="Josette        ";
      I:=new T_Liste_Incluse'(I.incl,I);
      I.Incl.Nom:="BARTOK         ";
      I.Incl.Prenom:="Belle          ";
      E.Etu.P_Testeuse:=I;
      
      E:=new T_Liste_Etude'(E.Etu,E);
      E.Etu.Id:=2;
      E.Etu.Produit.Nom_P:="Bonne nuit     ";
      E.Etu.Produit.Cat:=T_Categorie'Val(T_Categorie'pos(Soin_nuit));
      E.Etu.Produit.Age_Min:=26;
      E.Etu.Produit.Age_Max:=55;
      E.Etu.Produit.Entreprise:="Clarte         ";
      E.Etu.Nom_Charge:="FER            ";
      E.Etu.Prenom_Charge:="Lucie          ";
      
      E:=new T_Liste_Etude'(E.Etu,E);
      E.Etu.Id:=3;
      E.Etu.Produit.Nom_P:="Peau Nette     ";
      E.Etu.Produit.Cat:=T_Categorie'Val(T_Categorie'pos(Lotion_visage));
      E.Etu.Produit.Age_Min:=26;
      E.Etu.Produit.Age_Max:=55;
      E.Etu.Produit.Entreprise:="Belle Peau     ";
      E.Etu.Nb_Testeuse:=5;
      E.Etu.Nom_Charge:="GRANT          ";
      E.Etu.Prenom_Charge:="Hermione       ";
      E.Etu.Statut:=T_Statut'Val(T_Statut'pos(en_cours));
      I:=Null;
      I:=new T_Liste_Incluse'(I.incl,null);
      I.Incl.Nom:="CADET          ";
      I.Incl.Prenom:="Benjamine      ";
      I:=new T_Liste_Incluse'(I.incl,I);
      I.Incl.Nom:="BLANC          ";
      I.Incl.Prenom:="Aline          ";
      I.Incl.Nj_Jour_Test:=5;
      I.Incl.Note:=16;
      I:=new T_Liste_Incluse'(I.incl,I);
      I.Incl.Nom:="POPPINS        ";
      I.Incl.Prenom:="Mary           ";
      I.Incl.Nj_Jour_Test:=2;
      I.Incl.Note:=17;
      I:=new T_Liste_Incluse'(I.incl,I);
      I.Incl.Nom:="PIERRE         ";
      I.Incl.Prenom:="Jeannette      ";
      I.Incl.Nj_Jour_Test:=6;
      I.Incl.Note:=19;
      I:=new T_Liste_Incluse'(I.incl,I);
      I.Incl.Nom:="KRUL           ";
      I.Incl.Prenom:="Cathy          ";
      I.Incl.Nj_Jour_Test:=6;
      I.Incl.Note:=15;
      E.Etu.P_Testeuse:=I;
      
      E:=new T_Liste_Etude'(E.Etu,E);
      E.Etu.Id:=4;
      E.Etu.Produit.Nom_P:="SunSun         ";
      E.Etu.Produit.Cat:=T_Categorie'Val(t_categorie'pos(Solaire));
      E.Etu.Produit.Age_Min:=56;
      E.Etu.Produit.Age_Max:=75;
      E.Etu.Produit.Entreprise:="Nature Toujours";
      E.Etu.Nom_Charge:="GRANT          ";
      E.Etu.Prenom_Charge:="Hermine        ";
      
      
      E:=new T_Liste_Etude'(E.Etu,E);
      E.Etu.Id:=5;
      E.Etu.Produit.Nom_P:="Dodo           ";
      E.Etu.Produit.Cat:=T_Categorie'Val(t_categorie'pos(soin_nuit));
      E.Etu.Produit.Age_Min:=56;
      E.Etu.Produit.Age_Max:=75;
      E.Etu.Produit.Entreprise:="Nature_Toujours";
      E.Etu.Nb_Testeuse:=4;
      E.Etu.Nom_Charge:="FER            ";
      E.Etu.Prenom_Charge:="Lucie          ";
      E.Etu.Statut:=T_Statut'Val(T_Statut'Pos(En_Cours));
      I:=Null;
      I:=new T_Liste_Incluse'(I.incl,null);
      I.Incl.Nom:="ARC            ";
      I.Incl.Prenom:="Jeanne         ";
      I.Incl.Nj_Jour_Test:=2;
      I.Incl.Note:=15;
      I:=new T_Liste_Incluse'(I.incl,I);
      I.Incl.Nom:="BELLE          ";
      I.Incl.Prenom:="Marie          ";
      I.Incl.Nj_Jour_Test:=5;
      I.Incl.Note:=10;
      I:=new T_Liste_Incluse'(I.incl,I);
      I.Incl.Nom:="BLEUE          ";
      I.Incl.Prenom:="Agathe         ";
      I.Incl.Nj_Jour_Test:=7;
      I.Incl.Note:=12;
      I:=new T_Liste_Incluse'(I.incl,I);
      I.Incl.Nom:="ARC            ";
      I.Incl.Prenom:="Mireille       ";
      I.Incl.Nj_Jour_Test:=6;
      I.Incl.Note:=13;
      E.Etu.P_Testeuse:=I;
      
      E:=new T_Liste_Etude'(E.Etu,E);
      E.Etu.Id:=6;
      E.Etu.Produit.Nom_P:="Velour         ";
      E.Etu.Produit.Cat:=T_Categorie'Val(t_categorie'pos(lait_corporel));
      E.Etu.Produit.Age_Min:=15;
      E.Etu.Produit.Age_Max:=25;
      E.Etu.Produit.Entreprise:="Belle Peau     ";
      E.Etu.Nb_Testeuse:=4;
      E.Etu.Nom_Charge:="PERSONNE       ";
      E.Etu.Prenom_Charge:="Paul           ";
      E.Etu.Statut:=T_Statut'Val(T_Statut'Pos(En_Cours));
      I:=Null;
      I:=new T_Liste_Incluse'(I.incl,null);
      I.Incl.Nom:="BELLE          ";
      I.Incl.Prenom:="Lucie          ";
      I.Incl.Nj_Jour_Test:=4;
      I.Incl.Note:=15;
      I:=new T_Liste_Incluse'(I.incl,I);
      I.Incl.Nom:="LUNE           ";
      I.Incl.Prenom:="Valeria        ";
      I.Incl.Nj_Jour_Test:=5;
      I.Incl.Note:=12;
      I:=new T_Liste_Incluse'(I.incl,I);
      I.Incl.Nom:="CLARK          ";
      I.Incl.Prenom:="Anna           ";
      I.Incl.Nj_Jour_Test:=1;
      I.Incl.Note:=7;
      I.Incl.Pb:=True;
      I:=new T_Liste_Incluse'(I.incl,I);
      I.Incl.Nom:="REBEL          ";
      I.Incl.Prenom:="Alicia         ";
      I.Incl.Nj_Jour_Test:=12;
      I.Incl.Note:=14;
      E.Etu.P_Testeuse:=I;
      
      E:=new T_Liste_Etude'(E.Etu,E);
      E.Etu.Id:=7;
      E.Etu.Produit.Nom_P:="Tout Doux      ";
      E.Etu.Produit.Cat:=T_Categorie'Val(t_categorie'pos(lait_corporel));
      E.Etu.Produit.Age_Min:=26;
      E.Etu.Produit.Age_Max:=55;
      E.Etu.Produit.Entreprise:="Clarte         ";
      E.Etu.Nb_Testeuse:=5;
      E.Etu.Nom_Charge:="PERSONNE       ";
      E.Etu.Prenom_Charge:="Paul           ";
      E.Etu.Statut:=T_Statut'Val(T_Statut'Pos(En_Cours));
      I:=Null;
      I:=new T_Liste_Incluse'(I.incl,null);
      I.Incl.Nom:="HEPBURN        ";
      I.Incl.Prenom:="Audrey         ";
      I:=new T_Liste_Incluse'(I.incl,I);
      I.Incl.Nom:="SCHUMAN        ";
      I.Incl.Prenom:="Clara          ";
      I.Incl.Nj_Jour_Test:=5;
      I.Incl.Note:=14;
      I:=new T_Liste_Incluse'(I.incl,I);
      I.Incl.Nom:="ROMEO          ";
      I.Incl.Prenom:="Juliette       ";
      I.Incl.Nj_Jour_Test:=7;
      I.Incl.Note:=15;
      I:=new T_Liste_Incluse'(I.incl,I);
      I.Incl.Nom:="VALLADE        ";
      I.Incl.Prenom:="Martine        ";
      I.Incl.Nj_Jour_Test:=4;
      I.Incl.Note:=12;
      I:=new T_Liste_Incluse'(I.incl,I);
      I.Incl.Nom:="MOUTON         ";
      I.Incl.Prenom:="Aline          ";
      I.Incl.Nj_Jour_Test:=5;
      I.Incl.Note:=13;
      E.Etu.P_Testeuse:=I;
   end Aj_User;
   




   --------------------------------------------------
   -- procedure d'ajout d'employes & etudes
   --------------------------------------------------
   procedure Ajout_Secr (P_Secr: in out Pteur_Secretaire; S: IN T_Secretaire)is
   begin
      if P_Secr = null then
         P_Secr:= new T_Liste_Secretaire'(S, null);
      else
         P_Secr := new T_Liste_Secretaire'(S, P_Secr);
      end if;        
   end Ajout_Secr;
  
      procedure Ajout_Charge (P_Charge: in out Pteur_Charge;CE: IN T_charge_etude)is
   begin
      if P_Charge = null then
         P_Charge:= new T_Liste_Charge'(Ce, null);
      else
         P_Charge := new T_Liste_Charge'(CE, P_charge);
      end if;         
   end Ajout_Charge;


   procedure Creation_Etude (Tete_Etude: in out Pteur_Etude; Etude:in out T_Etude; P_Charge:in out Pteur_Charge) is 
      K, kn, kp,cpt, choix:Integer;
      S,N,P:T_Mot;
      ok:boolean;
   begin    
      Put("creation d'une nouvelle etude :");New_Line;
      if Tete_Etude=null then
         Etude.Id:=1;
      else 
         Etude.Id:=Tete_Etude.etu.Id+1;
      end if;
      Put("saisir le nom du produit :");
      Get_Line(Etude.Produit.Nom_P,K);
      Put("saisir la categorie du produit :");
     -- loop
      Get_Line(S,K);
      Etude.Produit.Cat:=T_Categorie'Value(S(1..K));
        -- if Etude.Produit.Cat then
          --  exit;
        -- else 
          --  Put("erreur de saisie");
        -- end if;
      --end loop;
      Put("saisir la tranche d'age");
      Get(Etude.Produit.Age_Min, Etude.Produit.Age_Max); Skip_Line;
      Put("saisir le nom de l'entreprise");
      Get_Line(Etude.Produit.Entreprise,K); 
      put_line("Saisir (1) pour attribution manuelle du charge de l'etude ou (2) pour attribution automatique");      
      Put("saisir votre choix :");
      Get(Choix); Skip_Line;
      case Choix is
         when 1 =>
            loop
               Put("saisir le nom de charge de l'etude :");
               Get_Line(N,Kn); --saisie sécurisée si le charge n'existe pas ou si son nombre d'etude est plein
               Put("saisir le prenom du charge d'etude :");
               Get_Line(P,Kn); 
               Ok:= Verif_Saisie_Charge(P_Charge,N,P); --JE NE SAIS PAS S'IL FAUT AUSSI METTRE KN ET KP
               if Ok then 
                  cpt:=Cpt_Etude_Charge(P_Charge,N,P); --IDEM
                  if Cpt<3 then 
                     Etude.Nom_Charge:=N(1..Kn);
                     Etude.Prenom_Charge:=P(1..Kp);                     
                     Nv_Etude(Etude,Tete_Etude);
                     Ajout_Etude_Charge (P_Charge, Tete_Etude, N,P);
                  else Put("ce charge d'etude a deja 3 etudes a la charge");New_Line;
                  end if;                  
               end if;
            end loop; 
         when 2 =>
            repartition_etude_charge (Etude, P_Charge, tete_Etude);
         when others=> 
            Put("erreur de saisie");
      end case;      
   end Creation_Etude;

   procedure Enr_Nvl_Emp (P_Secr : IN OUT Pteur_Secretaire;P_Charge: IN OUT Pteur_Charge;erreur: out boolean) is 
      Choix:Integer;
      Emp: T_Personne;
      Secr:T_Secretaire;
      Charge_Et:T_Charge_Etude;
      P_Aux1:Pteur_Secretaire:=P_Secr;
      P_Aux2:Pteur_Charge:=P_Charge;
      existe:boolean:=false;
   begin
   --Faire une saisie sÃ©curisÃ©e !!!
      Put("Enregistrement d'un nouvel employe");New_Line;
      Saisie_Personne(Emp);
      loop
      Put("Vous enregistrez un(e) secretaire (1) ou un(e) charge d'etude (2)");New_Line;   
      Put("Faite votre choix : 1 ou 2");
      Get(Choix);Skip_Line;
      case Choix is 
         when 1 =>
            while p_aux1/=null loop
               if p_aux1.secr.id.nom=P_secr.secr.Id.Nom and then p_aux1.secr.id.prenom=p_secr.secr.Id.Prenom then
                  existe:=true;
               else
                  p_aux1:=p_aux1.secre_suiv;
               end if;
            end loop;
            if existe=false then
               Secr.id:=Emp;   
               Ajout_Secr(P_Secr, Secr);
            end if;
         when 2 => 
            while p_aux2/=null loop
               if p_aux2.charge.id.nom=P_charge.charge.Id.Nom and then p_aux2.charge.id.prenom=p_charge.charge.Id.Prenom then
                  existe:=true;
               else
                  p_aux2:=p_aux2.charge_suiv;
               end if;
            end loop;
            if existe=false then
               Charge_Et.Id:=Emp;
               Ajout_Charge(P_Charge, charge_Et);
            end if;
         when others =>
            Put("Choix invalide, veuillez saisir a nouveau votre choix");
            new_line;
         end case;
      end loop;
   end Enr_Nvl_Emp;
   
   --------------------------------------------------
   -- procedure de suppression des employes
   --------------------------------------------------
  procedure supp_secr (tete: in out Pteur_Secretaire; S: IN T_personne; erreur : out boolean)is
  begin 
     if Tete = null then Erreur := True ;
     elsif Tete.Secr.id=S then 
        Erreur:=False;
        Tete:=Tete.Secre_Suiv;
     else Supp_Secr(Tete.Secre_Suiv, S, Erreur);
     end if;
  end Supp_Secr;
  
  procedure supp_charge (tete: in out Pteur_Charge; CE: IN T_personne; erreur : out boolean)is --mettre recup
  begin 
     if Tete = null then Erreur := True ;
     elsif Tete.charge.id=CE then 
        Erreur:=False;
                 --appel de la procedure d'attribution des études aux charges etudes
        Tete:=Tete.charge_suiv;
     else Supp_charge(Tete.charge_suiv, CE, Erreur);
     end if;
  end Supp_charge;
  
  procedure supp_testeuse (tete: in out Pteur_Testeuse ; tstse: IN T_personne; erreur : out boolean)is
  begin 
     if Tete = null then Erreur := True ;
     elsif Tete.test.id=tstse then 
        Erreur:=False;
        Tete:=Tete.test_Suiv;
     else Supp_testeuse(Tete.test_Suiv, tstse, Erreur);
     end if;
  end Supp_Testeuse;
  


   procedure Dprt_Emp (P_Secr : IN OUT Pteur_Secretaire;P_Charge: IN OUT Pteur_Charge; P_Testeuse : in out Pteur_Testeuse; Fait : out Boolean) is   
      Emp:T_Personne;
      Choix:Integer;
      erreur:boolean;
      begin
      Put("Enregistrement du depart d'un employe");New_Line;
      Saisie_Personne(Emp);   
      loop
      Put("Vous enregistrez un(e) secretaire (1) un(e) charge d'etude (2) ou une testeuse (3)");New_Line;   
      Put("Faite votre choix : 1 ou 2");
      Get(Choix);Skip_Line;
      case Choix is 
         when 1 =>
            Supp_Secr(P_Secr, emp,erreur);
         when 2 => 
            supp_Charge(P_Charge, emp, erreur);
         when 3 => 
            supp_testeuse(P_testeuse, emp, erreur);      
         when others =>
            Put("Choix invalide, veuillez saisir Ã  nouveau votre choix");
            new_line;
         end case;  
            if Erreur then Fait:=False;
            else Fait:=True;
            end if;     
      end loop;
      end Dprt_Emp;
      
   --------------------------------------------------
   -- procedure d'affichage des employes
   --------------------------------------------------
   
   procedure Visualiser_Liste_Emp (Tete_S: In Pteur_Secretaire;Tete_C:In Pteur_Charge ) is
   begin
      Put("Secretaire(s) =>");New_Line;
      if Tete_S/=null then 
         Put(Tete_S.Secr.Id.Nom);Put(Tete_S.Secr.Id.Prenom);new_line;
         Visualiser_Liste_Emp(Tete_S.Secre_Suiv,Tete_C);
      end if;
      Put("Charge(s) d'etudes =>");New_Line;
      if Tete_C/=null then 
         Put(Tete_C.charge.Id.Nom);Put(Tete_C.charge.Id.Prenom);new_line;
         Visualiser_Liste_Emp(Tete_S,Tete_C.charge_suiv);
      end if;

   end Visualiser_Liste_Emp;
   
   procedure Visualiser_Secre_Spe (Tete_S: In Pteur_Secretaire;Nom,Prenom: In T_Mot) is
   begin
      if Tete_S/=null then
         if Tete_S.Secr.Id.Nom=Nom and then Tete_S.Secr.Id.Prenom=Prenom then
            Put("???");New_Line;
         end if;
      end if;
   end Visualiser_Secre_Spe;
   
   procedure Visualiser_Charge_Spe (Tete_C: In Pteur_Charge;Nom,Prenom: In T_Mot) is
   begin
      if Tete_C/=null then
         if Tete_C.charge.Id.Nom=Nom and then Tete_C.charge.Id.Prenom=Prenom then
            Put("???");New_Line;
         end if;
      end if;
   end Visualiser_Charge_Spe;
  
   
   procedure Visualiser_Liste_Etude (Tete: in Pteur_Etude) is
   begin
      if Tete/=null then
         Put("Identifiant =>");
         Put(Tete.Etu.Id);
         New_Line;
         Put("Produit testÃ© =>");
         Put(Tete.Etu.Produit.Nom_P);
         New_Line;
         Put("CatÃ©gorie =>");
         Put(T_Categorie'image(Tete.Etu.Produit.Cat));
         New_Line;
         Visualiser_Liste_Etude(Tete.Etu_Suiv);
      end if;
   end Visualiser_Liste_Etude;
   
   procedure Visualiser_Etude_spe (Tete: in Pteur_Etude;Id_recherche: in Integer) is
   begin
      if Tete/=null then
         if Tete.Etu.Id=Id_Recherche then 
            Put("Le Produit testÃ© lors de cette Ã©tude est =>");
            Put(Tete.Etu.Produit.Nom_P);
            New_Line;
            Put(Tete.Etu.Nb_Testeuse);
            Put("testeuses ont ete incluses");
            New_Line;
            Put("La personne en charge de cette etude est/Ã©tait");
            Put(Tete.Etu.Prenom_Charge);Put(Tete.Etu.Nom_Charge);New_Line;
            Put("L'etude est ");Put(T_Statut'Image(Tete.Etu.Statut));New_Line;
            if Tete.Etu.Note_Moy/=-1 then
               Put("La note de ce produit est =>");
               Put(Tete.Etu.Note_Moy);
               New_Line;
            end if;
            Put("Le nombre de patientes significative est =>");
            Put(Tete.Etu.Nb_Significatif);
            New_Line;
            if Tete.Etu.Risque then 
               Put("Ce produit prÃ©sente un risque");
            else
               Put("Ce produit ne prÃ©sente pas de risque");
            end if;
            New_Line;
         end if;
      end if;    
   end Visualiser_Etude_Spe;
      
end Gestion_Directeur;



         
