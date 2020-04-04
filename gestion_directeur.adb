with Ada.Text_Io,Ada.Integer_Text_Io,Ada.Float_Text_Io, Ada.Characters.Handling,Aleatoire;
use Ada.Text_Io,Ada.Integer_Text_Io,Ada.Float_Text_Io,Ada.Characters.Handling,Aleatoire;
package body Gestion_Directeur is
   
   
   procedure Aj_User (
         Direc :    out Pteur_Directeur;
         Chg   :    out Pteur_Charge;
         Scrt  :    out Pteur_Secretaire;
         Test  :    out Pteur_Testeuse;
         Etu   :    out Pteur_Etude;
         Inc   :    out Pteur_Incluse) is
      D : T_Directeur;
      I : T_Personne_Incluse;
      S : T_Secretaire;
      T : T_Testeuse;
      E : T_Etude;
      C : T_Charge_Etude;

   begin
      D.Id.Nom:="WAYNE          ";
      D.Id.Prenom:="John           ";
      D.Id.Login:="john.wayne                     ";
      D.Id.Mdp:="uOAnaee!43";
      D.Id.N:=12;
      D.Nb_Etude_C:=7;
      Direc:=new T_Liste_Directeur'(D,null);

      S.Id.Nom:="GUERRE         ";
      S.Id.Prenom:="Martin         ";
      S.Id.Login:="martin.guerre                  ";
      S.Id.Mdp:="6wZOPMs?9!";
      S.Id.N:=5;
      Scrt:=new T_Liste_Secretaire'(S,null);

      C.Id.Nom:="PERSONNE       ";
      C.Id.Prenom:="Paul           ";
      C.Id.Login:="paul.personne                  ";
      C.Id.Mdp:="5678!.?def";
      C.Id.N:=14;
      C.Nb_Etude_En_Charge:=3;
      --c.etude_en_charge
      C.Nb_Etude_T:=0;
      Chg:=new T_Liste_Charge'(C,null);

      C.Id.Nom:="FER            ";
      C.Id.Prenom:="Lucie          ";
      C.Id.Login:="lucie.fer                      ";
      C.Id.Mdp:="tSZZeHOF46";
      C.Id.N:=12;
      C.Nb_Etude_En_Charge:=2;
      --c.etude_en_charge
      C.Nb_Etude_T:=0;
      Chg:=new T_Liste_Charge'(C,Chg);

      C.Id.Nom:="GRANT          ";
      C.Id.Prenom:="Hermine        ";
      C.Id.Login:="hermine.grant                  ";
      C.Id.Mdp:="!5ef8h0jk3";
      C.Id.N:=4;
      C.Nb_Etude_En_Charge:=2;
      --c.etude_en_charge
      C.Nb_Etude_T:=0;
      Chg:=new T_Liste_Charge'(C,Chg);

      T.Id.Nom:="BELOEIL        ";
      T.Id.Prenom:="Coco           ";
      T.Id.Login:="coco.beloeil                   ";
      T.Id.Mdp:="?hJhJ678!2";
      T.Id.N:=5;
      T.Age:=19;
      --T.etude:=1;
      Test:=new T_Liste_Testeuse'(T,null);

      T.Id.Nom:="TIGRESSE       ";
      T.Id.Prenom:="Lily           ";
      T.Id.Login:="lily.tigresse                  ";
      T.Id.Mdp:="zUJUHzQD21";
      T.Id.N:=10;
      T.Age:=27;
      --T.etude:=1;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="ARC            ";
      T.Id.Prenom:="Jeanne         ";
      T.Id.Login:="jeanne.arc                     ";
      T.Id.Mdp:="90tMGZVIN#";
      T.Id.N:=5;
      T.Age:=66;
      --T.etude:=5;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="SOUBIROUX      ";
      T.Id.Prenom:="Bernadette     ";
      T.Id.Login:="bernadette.soubiroux           ";
      T.Id.Mdp:="xCIFRSG$#6";
      T.Id.N:=12;
      T.Age:=59;
      --T.etude:=0;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="DUBOIS         ";
      T.Id.Prenom:="Josette        ";
      T.Id.Login:="josette.dubois                 ";
      T.Id.Mdp:="#pIMC$cUFX";
      T.Id.N:=6;
      T.Age:=65;
      --T.etude:=1;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="BELLE          ";
      T.Id.Prenom:="Lucille        ";
      T.Id.Login:="lucille.belle                  ";
      T.Id.Mdp:="aFNTWWP780";
      T.Id.N:=15;
      T.Age:=21;
      --T.etude:=6;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="HEPBURN        ";
      T.Id.Prenom:="Audrey         ";
      T.Id.Login:="audrey.hepburn                 ";
      T.Id.Mdp:="oOFM$#sFOB";
      T.Id.N:=12;
      T.Age:=35;
      --T.etude:=7;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="LUNE           ";
      T.Id.Prenom:="Valeria        ";
      T.Id.Login:="valeria.lune                   ";
      T.Id.Mdp:="nMF346IT!B";
      T.Id.N:=21;
      T.Age:=17;
      --T.etude:=6;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="CLARK          ";
      T.Id.Prenom:="Anna           ";
      T.Id.Login:="anna.clark                     ";
      T.Id.Mdp:="tIYHJHKHIY";
      T.Id.N:=19;
      T.Age:=24;
      --T.etude:=6;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="SCHUMAN        ";
      T.Id.Prenom:="Clara          ";
      T.Id.Login:="clara.schuman                  ";
      T.Id.Mdp:="wUILDKJEA1";
      T.Id.N:=4;
      T.Age:=39;
      --T.etude:=7;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="ROMEO          ";
      T.Id.Prenom:="Juliette       ";
      T.Id.Login:="juliette.romeo                 ";
      T.Id.Mdp:="#01#64#vXB";
      T.Id.N:=18;
      T.Age:=47;
      --T.etude:=7;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="VALLADE        ";
      T.Id.Prenom:="Martine        ";
      T.Id.Login:="martine.vallade                ";
      T.Id.Mdp:="876yare678";
      T.Id.N:=24;
      T.Age:=59;
      --T.etude:=7;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="MOUTON         ";
      T.Id.Prenom:="Aline          ";
      T.Id.Login:="aline.mouton                   ";
      T.Id.Mdp:="iXX890kHWH";
      T.Id.N:=7;
      T.Age:=45;
      --T.etude:=7;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="REBEL          ";
      T.Id.Prenom:="Alicia         ";
      T.Id.Login:="alicia.rebel                   ";
      T.Id.Mdp:="tHGwPW!uT?";
      T.Id.N:=9;
      T.Age:=19;
      --T.etude:=6;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="FLEUR          ";
      T.Id.Prenom:="Caroline       ";
      T.Id.Login:="caroline.fleur                 ";
      T.Id.Mdp:="hYCO39!rVM";
      T.Id.N:=16;
      T.Age:=52;
      --T.etude:=0;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="BARTOK         ";
      T.Id.Prenom:="Belle          ";
      T.Id.Login:="belle.bartok                   ";
      T.Id.Mdp:="#bFDTV994$";
      T.Id.N:=15;
      T.Age:=72;
      --T.etude:=1;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="BELLE          ";
      T.Id.Prenom:="Marie          ";
      T.Id.Login:="marie.belle                    ";
      T.Id.Mdp:="!?cNHYR.27";
      T.Id.N:=13;
      T.Age:=74;
      --T.etude:=5;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="BLEUE          ";
      T.Id.Prenom:="Agathe         ";
      T.Id.Login:="agathe.bleue                   ";
      T.Id.Mdp:="sktZm!$#01";
      T.Id.N:=6;
      T.Age:=62;
      --T.etude:=5;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="ARC            ";
      T.Id.Prenom:="Mireille       ";
      T.Id.Login:="mireille.arc                   ";
      T.Id.Mdp:="dRVRfYNAJ!";
      T.Id.N:=17;
      T.Age:=67;
      --T.etude:=5;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="CADET          ";
      T.Id.Prenom:="Benjamine      ";
      T.Id.Login:="benjamine.cadet                ";
      T.Id.Mdp:="sBQFQBrROP";
      T.Id.N:=3;
      T.Age:=41;
      --T.etude:=3;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="BLANC          ";
      T.Id.Prenom:="Aline          ";
      T.Id.Login:="aline.blanc                    ";
      T.Id.Mdp:="?i91hjk!#$";
      T.Id.N:=7;
      T.Age:=52;
      --T.etude:=3;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="POPPINS        ";
      T.Id.Prenom:="Mary           ";
      T.Id.Login:="mary.poppins                   ";
      T.Id.Mdp:="uSNCPAYJGD";
      T.Id.N:=2;
      T.Age:=31;
      --T.etude:=3;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="PIERRE         ";
      T.Id.Prenom:="Jeanette       ";
      T.Id.Login:="jeanette.pierre                ";
      T.Id.Mdp:="aATJGTaPH!";
      T.Id.N:=11;
      T.Age:=47;
      --T.etude:=3;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="KRUL           ";
      T.Id.Prenom:="Cathy          ";
      T.Id.Login:="cathy.krul                     ";
      T.Id.Mdp:="#$mHKXMm$!";
      T.Id.N:=7;
      T.Age:=39;
      --T.etude:=3;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="BONPAIN        ";
      T.Id.Prenom:="Karine         ";
      T.Id.Login:="karine.bonpain                 ";
      T.Id.Mdp:="nZFAT!nZA#";
      T.Id.N:=15;
      T.Age:=45;
      --T.etude:=3;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="MAILLARD       ";
      T.Id.Prenom:="Yvette         ";
      T.Id.Login:="yvette.maillard                ";
      T.Id.Mdp:="mQQ346?#1m";
      T.Id.N:=12;
      T.Age:=51;
      --T.etude:=0;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="BEAUSONGE      ";
      T.Id.Prenom:="Iseult         ";
      T.Id.Login:="iseult.beausonge               ";
      T.Id.Mdp:="7jBSCDKX0?";
      T.Id.N:=16;
      T.Age:=21;
      --T.etude:=0;
      Test:=new T_Liste_Testeuse'(T,Test);

      E.Id:=1;
      E.Produit.Nom_P:="Peau Douce     ";
      E.Produit.Cat:=T_Categorie'Val(T_Categorie'Pos(Lotion_Visage));
      E.Produit.Age_Min:=15;
      E.Produit.Age_Max:=75;
      E.Produit.Entreprise:="Belle Peau     ";
      E.Nb_Testeuse:=4;
      E.Nom_Charge:="PERSONNE       ";
      E.Prenom_Charge:="Paul           ";
      I.Nom:="BELOEIL        ";
      I.Prenom:="Coco           ";
      Inc:=new T_Liste_Incluse'(I,null);
      I.Nom:="TIGRESSE       ";
      I.Prenom:="Lily           ";
      Inc:=new T_Liste_Incluse'(I,Inc);
      I.Nom:="DUBOIS         ";
      I.Prenom:="Josette        ";
      Inc:=new T_Liste_Incluse'(I,Inc);
      I.Nom:="BARTOK         ";
      I.Prenom:="Belle          ";
      Inc:=new T_Liste_Incluse'(I,Inc);
      E.P_Testeuse:=Inc;
      Etu:=new T_Liste_Etude'(E,null);
      Ajout_Etude_Charge (Chg, Etu, E.Nom_Charge, E.Prenom_Charge);

      E.Id:=2;
      E.Produit.Nom_P:="Bonne nuit     ";
      E.Produit.Cat:=T_Categorie'Val(T_Categorie'Pos(Soin_Nuit));
      E.Produit.Age_Min:=26;
      E.Produit.Age_Max:=55;
      E.Produit.Entreprise:="Clarte         ";
      E.Nb_Testeuse:=0;
      E.Nom_Charge:="FER            ";
      E.Prenom_Charge:="Lucie          ";
      E.P_Testeuse:=null;
      Etu:=new T_Liste_Etude'(E,Etu);
      Ajout_Etude_Charge (Chg, Etu, E.Nom_Charge, E.Prenom_Charge);

      E.Id:=3;
      E.Produit.Nom_P:="Peau Nette     ";
      E.Produit.Cat:=T_Categorie'Val(T_Categorie'Pos(Lotion_Visage));
      E.Produit.Age_Min:=26;
      E.Produit.Age_Max:=55;
      E.Produit.Entreprise:="Belle Peau     ";
      E.Nb_Testeuse:=5;
      E.Nom_Charge:="GRANT          ";
      E.Prenom_Charge:="Hermine        ";
      E.Statut:=T_Statut'Val(T_Statut'Pos(En_Cours));
      I.Nom:="CADET          ";
      I.Prenom:="Benjamine      ";
      Inc:=new T_Liste_Incluse'(I,null);
      I.Nom:="BLANC          ";
      I.Prenom:="Aline          ";
      I.Nj_Jour_Test:=5;
      I.Note:=16;
      Inc:=new T_Liste_Incluse'(I,Inc);
      I.Nom:="POPPINS        ";
      I.Prenom:="Mary           ";
      I.Nj_Jour_Test:=2;
      I.Note:=17;
      Inc:=new T_Liste_Incluse'(I,Inc);
      I.Nom:="PIERRE         ";
      I.Prenom:="Jeanette       ";
      I.Nj_Jour_Test:=6;
      I.Note:=19;
      Inc:=new T_Liste_Incluse'(I,Inc);
      I.Nom:="KRUL           ";
      I.Prenom:="Cathy          ";
      I.Nj_Jour_Test:=6;
      I.Note:=15;
      Inc:=new T_Liste_Incluse'(I,Inc);
      E.P_Testeuse:=Inc;
      Etu:=new T_Liste_Etude'(E,Etu);
      Ajout_Etude_Charge (Chg, Etu, E.Nom_Charge, E.Prenom_Charge);


      E.Id:=4;
      E.Produit.Nom_P:="SunSun         ";
      E.Produit.Cat:=T_Categorie'Val(T_Categorie'Pos(Solaire));
      E.Produit.Age_Min:=56;
      E.Produit.Age_Max:=75;
      E.Nb_Testeuse:=0;
      E.Produit.Entreprise:="Nature Toujours";
      E.Nom_Charge:="GRANT          ";
      E.Prenom_Charge:="Hermine        ";
      E.Statut:=T_Statut'Val(T_Statut'Pos(Cree));
      E.P_Testeuse:=null;
      Etu:=new T_Liste_Etude'(E,Etu);
      Ajout_Etude_Charge (Chg, Etu, E.Nom_Charge, E.Prenom_Charge);


      E.Id:=5;
      E.Produit.Nom_P:="Dodo           ";
      E.Produit.Cat:=T_Categorie'Val(T_Categorie'Pos(Soin_Nuit));
      E.Produit.Age_Min:=56;
      E.Produit.Age_Max:=75;
      E.Produit.Entreprise:="Nature_Toujours";
      E.Nb_Testeuse:=4;
      E.Nom_Charge:="FER            ";
      E.Prenom_Charge:="Lucie          ";
      E.Statut:=T_Statut'Val(T_Statut'Pos(En_Cours));
      I.Nom:="ARC            ";
      I.Prenom:="Jeanne         ";
      I.Nj_Jour_Test:=2;
      I.Note:=15;
      Inc:=new T_Liste_Incluse'(I,null);
      I.Nom:="BELLE          ";
      I.Prenom:="Marie          ";
      I.Nj_Jour_Test:=5;
      I.Note:=10;
      Inc:=new T_Liste_Incluse'(I,Inc);
      I.Nom:="BLEUE          ";
      I.Prenom:="Agathe         ";
      I.Nj_Jour_Test:=7;
      I.Note:=12;
      Inc:=new T_Liste_Incluse'(I,Inc);
      I.Nom:="ARC            ";
      I.Prenom:="Mireille       ";
      I.Nj_Jour_Test:=6;
      I.Note:=13;
      Inc:=new T_Liste_Incluse'(I,Inc);
      E.P_Testeuse:=Inc;
      Etu:=new T_Liste_Etude'(E,Etu);
      Ajout_Etude_Charge (Chg, Etu, E.Nom_Charge, E.Prenom_Charge);

      E.Id:=6;
      E.Produit.Nom_P:="Velour         ";
      E.Produit.Cat:=T_Categorie'Val(T_Categorie'Pos(Lait_Corporel));
      E.Produit.Age_Min:=15;
      E.Produit.Age_Max:=25;
      E.Produit.Entreprise:="Belle Peau     ";
      E.Nb_Testeuse:=4;
      E.Nom_Charge:="PERSONNE       ";
      E.Prenom_Charge:="Paul           ";
      E.Statut:=T_Statut'Val(T_Statut'Pos(En_Cours));
      I.Nom:="BELLE          ";
      I.Prenom:="Lucille        ";
      I.Nj_Jour_Test:=4;
      I.Note:=15;
      Inc:=new T_Liste_Incluse'(I,null);
      I.Nom:="LUNE           ";
      I.Prenom:="Valeria        ";
      I.Nj_Jour_Test:=5;
      I.Note:=12;
      Inc:=new T_Liste_Incluse'(I,Inc);
      I.Nom:="CLARK          ";
      I.Prenom:="Anna           ";
      I.Nj_Jour_Test:=1;
      I.Note:=7;
      I.Pb:=True;
      Inc:=new T_Liste_Incluse'(I,Inc);
      I.Nom:="REBEL          ";
      I.Prenom:="Alicia         ";
      I.Nj_Jour_Test:=12;
      I.Note:=14;
      I.Pb:=False;
      Inc:=new T_Liste_Incluse'(I,Inc);
      E.P_Testeuse:=Inc;
      Etu:=new T_Liste_Etude'(E,Etu);
      Ajout_Etude_Charge (Chg, Etu, E.Nom_Charge, E.Prenom_Charge);

      E.Id:=7;
      E.Produit.Nom_P:="Tout Doux      ";
      E.Produit.Cat:=T_Categorie'Val(T_Categorie'Pos(Lait_Corporel));
      E.Produit.Age_Min:=26;
      E.Produit.Age_Max:=55;
      E.Produit.Entreprise:="Clarte         ";
      E.Nb_Testeuse:=5;
      E.Nom_Charge:="PERSONNE       ";
      E.Prenom_Charge:="Paul           ";
      E.Statut:=T_Statut'Val(T_Statut'Pos(En_Cours));
      I.Nom:="HEPBURN        ";
      I.Prenom:="Audrey         ";
      I.Nj_Jour_Test:=0;
      I.Note:=0;
      Inc:=new T_Liste_Incluse'(I,null);
      I.Nom:="SCHUMAN        ";
      I.Prenom:="Clara          ";
      I.Nj_Jour_Test:=5;
      I.Note:=14;
      Inc:=new T_Liste_Incluse'(I,Inc);
      I.Nom:="ROMEO          ";
      I.Prenom:="Juliette       ";
      I.Nj_Jour_Test:=7;
      I.Note:=15;
      Inc:=new T_Liste_Incluse'(I,Inc);
      I.Nom:="VALLADE        ";
      I.Prenom:="Martine        ";
      I.Nj_Jour_Test:=4;
      I.Note:=12;
      Inc:=new T_Liste_Incluse'(I,Inc);
      I.Nom:="MOUTON         ";
      I.Prenom:="Aline          ";
      I.Nj_Jour_Test:=5;
      I.Note:=13;
      Inc:=new T_Liste_Incluse'(I,Inc);
      E.P_Testeuse:=Inc;
      Etu:=new T_Liste_Etude'(E,Etu);
      Ajout_Etude_Charge (Chg, Etu, E.Nom_Charge, E.Prenom_Charge);

      Ajout_Debut_Etu_Test (Test, Etu);

   end Aj_User;




   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------
   ----------------------- PROCEDURE AJOUT EMPLOYE ET ETUDES -----------------------
   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------
   
   procedure Ajout_Secr (
         P_Secr : in out Pteur_Secretaire;
         S      : in     T_Secretaire) is
   begin
      if P_Secr = null then
         P_Secr:= new T_Liste_Secretaire'(S, null);
      else
         P_Secr := new T_Liste_Secretaire'(S, P_Secr);
      end if;
   end Ajout_Secr;

   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------
   
   procedure Ajout_Charge (
         P_Charge : in out Pteur_Charge;
         Ce       : in     T_Charge_Etude) is
   begin
      if P_Charge = null then
         P_Charge:= new T_Liste_Charge'(Ce, null);
      else
         P_Charge := new T_Liste_Charge'(Ce, P_Charge);
      end if;
   end Ajout_Charge;

   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------
   
   procedure Ajout_Directeur (
         P_Dir     : in out Pteur_Directeur;
         Directeur : in     T_Directeur) is
   begin
      if P_Dir = null then
         P_Dir:= new T_Liste_Directeur'(Directeur, null);
      else
         P_Dir := new T_Liste_Directeur'(Directeur, P_Dir);
      end if;
   end Ajout_Directeur;

   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------

   procedure Creation_Etude (
         Tete_Etude   : in out Pteur_Etude;
         Etude        : in out T_Etude;
         P_Charge     : in out Pteur_Charge;
         Nb_Etude_Cro : in out Integer) is
      K,
      Kn,
      Kp,
      Cpt,
      Choix : Integer;
      S,
      N,
      P     : T_Mot;
      Ok    : Boolean;
      
   begin
      
      Put("Creation d'une nouvelle etude :");
      New_Line;
      --L'ID est unique et vaut le nb d'etudes deja realisees +1
      Etude.Id:=Nb_Etude_Cro+1;

      -- Saisie du produit
      Put("Saisir le nom du produit :");
      Get_Line(Etude.Produit.Nom_P,K);
      Put("Saisir la categorie du produit :");
      New_Line;
      Put("1.Creme de jour");
      New_Line;
      Put("2.Soin de nuit");
      New_Line;
      Put("3.Lait corporel");
      New_Line;
      Put("4.Lotion visage");
      New_Line;
      Put("5.Gel douche");
      New_Line;
      Put("6.Solaire");
      New_Line;
      Put("=> ");
      Secure_Saisie(Choix,6);
      New_Line;
      case Choix is
         when 1 =>
            Etude.Produit.Cat:=T_Categorie'Val(0);
         when 2 =>
            Etude.Produit.Cat:=T_Categorie'Val(1);
         when 3 =>
            Etude.Produit.Cat:=T_Categorie'Val(2);
         when 4 =>
            Etude.Produit.Cat:=T_Categorie'Val(3);
         when 5 =>
            Etude.Produit.Cat:=T_Categorie'Val(4);
         when others =>
            Etude.Produit.Cat:=T_Categorie'Val(5);
      end case;

      Put("Il s'agit d'un produit pour ... ");
      Put("1.Tout Age => 15 a 75 ans");
      New_Line;
      Put("2.Peau jeune => 15 a 25 ans");
      New_Line;
      Put("3.Peau adulte => 26 a 55 ans");
      New_Line;
      Put("4.Peau mature => 56 a 75 ans");
      New_Line;
      Put("Votre choix");
      New_Line;
      Secure_Saisie(Choix,4);
      New_Line;
      case Choix is
         when 1 =>
            Etude.Produit.Age_Min := 15;
            Etude.Produit.Age_Max := 75;
         when 2 =>
            Etude.Produit.Age_Min :=15 ;
            Etude.Produit.Age_Max := 25;
         when 3 =>
            Etude.Produit.Age_Min := 26;
            Etude.Produit.Age_Max := 55;
         when others =>
            Etude.Produit.Age_Min := 56;
            Etude.Produit.Age_Max := 75;
      end case;


      Put("saisir le nom de l'entreprise");
      Get_Line(Etude.Produit.Entreprise,K);
      Put_Line("Saisir (1) pour attribution manuelle du charge de l'etude ou (2) pour attribution automatique");
      Put("saisir votre choix :");
      Secure_Saisie(Choix,2);
      New_Line;
      -- Procedures d'attribution et creation nouvelle etudedans le package body de 
      case Choix is

         when 1 => --Attribution manuelle
            loop
               Put("saisir le nom de charge de l'etude :");
               Get_Line(N,Kn); --saisie securisee si le charge n'existe pas ou si son nombre d'etude est plein
               Put("saisir le prenom du charge d'etude :");
               Get_Line(P,Kn);
               Ok:= Verif_Saisie_Charge(P_Charge,N,P); 
               if Ok then
                  Cpt:=Cpt_Etude_Charge(P_Charge,N,P);
                  if Cpt<3 then
                     Etude.Nom_Charge:=N(1..Kn);
                     Etude.Prenom_Charge:=P(1..Kp);
                     Nv_Etude(Etude,Tete_Etude);
                     Ajout_Etude_Charge (P_Charge, Tete_Etude, N,P);
                  else
                     Put("ce charge d'etude a deja 3 etudes a la charge");
                     New_Line;
                  end if;
               end if;
            end loop;

         when others => --Attribution automatique
            Repartition_Etude_Charge (Etude, P_Charge, Tete_Etude);

      end case;
   end Creation_Etude;

   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------

   procedure Enr_Nvl_Emp (
         P_Secr   : in out Pteur_Secretaire;
         P_Charge : in out Pteur_Charge;
         P_Dir    : in out Pteur_Directeur;
         Erreur   :    out Boolean) is
      Choix     : Integer;
      Emp       : T_Personne;
      Secr      : T_Secretaire;
      Charge_Et : T_Charge_Etude;
      Directeur : T_Directeur;
      P_Aux1    : Pteur_Secretaire := P_Secr;
      P_Aux2    : Pteur_Charge     := P_Charge;
      P_Aux3    : Pteur_Directeur  := P_Dir;
      Existe    : Boolean          := False;
      N         : Integer;

   begin

      Put("Enregistrement d'un nouvel employe");
      New_Line;
      Initialise(0,25);
      N := Random;


      Put("Vous enregistrez un(e) secretaire (1) ou un(e) charge d'etude (2) ou un directeur (3)");
      New_Line;
      Put("Faite votre choix : 1 ou 2 ou 3");
      Secure_Saisie(Choix,3);
      New_Line;

      case Choix is

         --Ajout d'un(e) secretaire
         when 1 =>
            Saisie_Personne(Emp);
            while P_Aux1/=null loop
               if To_Lower(P_Aux1.Secr.Id.Nom)=To_Lower(Emp.Nom) 
                  and then To_Lower(P_Aux1.Secr.Id.Prenom)=To_Lower(Emp.Prenom) then
                  Existe:=True;
               else
                  P_Aux1:=P_Aux1.Secre_Suiv;
               end if;
            end loop;

            if Existe=False then
               Cryp_Mdp(Emp,N);
               Emp.Nom := To_Upper(Emp.Nom);
               Secr.Id:=Emp;
               Ajout_Secr(P_Secr, Secr);
            else
               Put("Une personne avec cette identite existe deja !");
               New_Line;
            end if;

         --Ajout d'un(e) charge(e) d'etude
         when 2 =>
            Saisie_Personne(Emp);
            while P_Aux2/=null loop
               if To_Lower(P_Aux2.Charge.Id.Nom)=To_Lower(Emp.Nom)
                  and then To_Lower(P_Aux2.Charge.Id.Prenom)=To_Lower(Emp.Prenom) then
                  Existe:=True;
               else
                  P_Aux2:=P_Aux2.Charge_Suiv;
               end if;
            end loop;
            if Existe=False then
               Cryp_Mdp(Emp,N);
               Emp.Nom := To_Upper(Emp.Nom);
               Charge_Et.Id:=Emp;
               Ajout_Charge(P_Charge, Charge_Et);
            else
               Put("Une personne avec cette identite existe deja !");
               New_Line;
            end if;

         --Ajout d'un(e) directeur/trice
         when others =>
            Saisie_Personne(Emp);
            while P_Aux3/=null loop
               if To_Lower(P_Aux3.Dir.Id.Nom)=To_Lower(Emp.Nom)
                   and then To_Lower(P_Aux3.Dir.Id.Prenom)=To_Lower(Emp.Prenom) then
                  Existe:=True;
               else
                  P_Aux3:=P_Aux3.Dir_Suiv;
               end if;
            end loop;
            if Existe=False then
               Cryp_Mdp(Emp,N);
               Emp.Nom := To_Upper(Emp.Nom);
               Directeur.Id:=Emp;
               Ajout_Directeur(P_Dir, Directeur);
            else
               Put("Une personne avec cette identite existe deja !");
               New_Line;
            end if;

      end case;

   end Enr_Nvl_Emp;
   
   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------
   ----------------- Procedures de suppression des employes ------------------------
   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------
   
   procedure Supp_Secr (
         Tete   : in out Pteur_Secretaire;
         S      : in     T_Personne;
         Erreur :    out Boolean) is

   begin
      if Tete = null then
         Erreur := True ;
      elsif To_Lower(Tete.Secr.Id.Nom)=To_Lower(S.Nom) 
         and then To_Lower(Tete.Secr.Id.Prenom) = To_Lower(S.Prenom) then
         Erreur:=False;
         Tete:=Tete.Secre_Suiv;
      else
         Supp_Secr(Tete.Secre_Suiv, S, Erreur);
      end if;

   end Supp_Secr;
   
   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------
   
   procedure Supp_Charge (
         Tete      : in out Pteur_Charge;
         P_Etude   : in out Pteur_Etude;
         Ce        : in     T_Personne;
         Erreur    :    out Boolean;
         F         : in out P_Fichier_Archive.File_Type;
         Recup_Tab :    out Tab_Etude) is
      --      Recup_Tab : Tab_Etude;
      Ptc,
      Min      : Pteur_Charge := Tete;
      P_Aux_Et : Pteur_Etude  := P_Etude;


   begin

      if Tete = null then
         Erreur := True ;

      elsif To_Lower(Tete.Charge.Id.Nom) = To_Lower(Ce.Nom) 
         and then To_Lower(Tete.Charge.Id.Prenom) = To_Lower(Ce.Prenom) then
         Erreur:=False;
         if Tete.Charge.Nb_Etude_En_Charge = 0 then --Etude en cours
            Tete:=Tete.Charge_Suiv;
         else
            --Le charge a des etudes en charge =>

            --On recupere le tableau qui les contient
            for I in Tete.Charge.Etude_En_Charge'range loop
               Recup_Tab(I):=Tete.Charge.Etude_En_Charge(I);
            end loop;
            --On supprime le charge de la liste
            Tete:=Tete.Charge_Suiv;
         end if;

      else
         Supp_Charge(Tete.Charge_Suiv,P_Etude, Ce, Erreur,F,Recup_Tab);
      end if;

   end Supp_Charge;

   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------

   procedure Reattribution (
         Id_Et    : in     Integer;
         P_Etude  : in out Pteur_Etude;
         P_Charge : in out Pteur_Charge;
         F        : in out P_Fichier_Archive.File_Type) is

      Ptc,
      Min      : Pteur_Charge := P_Charge;
      P_Aux_Et : Pteur_Etude  := P_Etude;

   begin

      --On verifie si d'autres charges sont disponible pour reattribution
      while Ptc/=null and then Ptc.Charge_Suiv/=null loop
         if Min.Charge.Nb_Etude_En_Charge>Ptc.Charge_Suiv.Charge.Nb_Etude_En_Charge then
            Min:=Ptc.Charge_Suiv;
         elsif Min.Charge.Nb_Etude_En_Charge=Ptc.Charge_Suiv.Charge.Nb_Etude_En_Charge then
            if Min.Charge.Nb_Etude_T>Ptc.Charge_Suiv.Charge.Nb_Etude_T then
               Min:=Ptc.Charge_Suiv;
            end if;
         end if;
         Ptc:=Ptc.Charge_Suiv;
      end loop;
      Put("!!!!");
      Put(Min.Charge.Nb_Etude_En_Charge);

      --Si pas de charges dispo ...
      if Min.Charge.Nb_Etude_En_Charge=3 then
         Put("L'etude ");
         Put(Id_Et);
         Put(" de ce charge va etre archivee");
         New_Line;
         New_Line;
         while P_Aux_Et /= null loop
            if  Id_Et = P_Aux_Et.Etu.Id then
               P_Aux_Et.Etu.Statut := T_Statut'Val(2);
               Archive_Etude (Id_Et,P_Etude,F);
               exit;
            else
               P_Aux_Et:= P_Aux_Et.Etu_Suiv;
            end if;
         end loop;

         New_Line;

         --Si un charge est dispo...
      else

         while P_Aux_Et /= null loop
            if Id_Et = P_Aux_Et.Etu.Id then
               P_Aux_Et.Etu.Nom_Charge :=Min.Charge.Id.Nom;
               P_Aux_Et.Etu.Prenom_Charge := Min.Charge.Id.Prenom;
               Ajout_Etude_Charge (Min, P_Aux_Et, Min.Charge.Id.Nom, Min.Charge.Id.Prenom);
               Min.Charge.Nb_Etude_En_Charge := Min.Charge.Nb_Etude_En_Charge +1;
               New_Line;
               Put("L'etude ");
               Put(Id_Et);
               Put("a ete reattribuee");
               New_Line;
               exit;

               --DANS LE TYPE CHARGE -> Nb_Etude_En_Charge +1 ou pas

            else
               P_Aux_Et:= P_Aux_Et.Etu_Suiv;
            end if;
         end loop;

      end if;

   end Reattribution;


   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------
   procedure Supp_Testeuse (
         Tete   : in out Pteur_Testeuse;
         Tstse  : in     T_Personne;
         Erreur :    out Boolean) is

   begin

      if Tete = null then
         Erreur := True ;

      elsif To_Lower(Tete.Test.Id.Nom)=To_Lower(Tstse.Nom) 
         and then To_Lower(Tete.Test.Id.Prenom) = To_Lower(Tstse.Prenom) then
         --verif de la presence de la testeuse dans une etude
         if Tete.Test.Etude /= null then
            Put("Cette testeuse est actuellement engagee dans une etude");
            New_Line;
            Erreur := True;
         else
            Erreur:=False;
            Tete:=Tete.Test_Suiv;
         end if;

      else
         Supp_Testeuse(Tete.Test_Suiv, Tstse, Erreur);
      end if;

   end Supp_Testeuse;


   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------

   procedure Dprt_Emp (
         P_Secr     : in out Pteur_Secretaire;
         P_Charge   : in out Pteur_Charge;
         P_Testeuse : in out Pteur_Testeuse;
         P_Etude    : in out Pteur_Etude;
         Fait       :    out Boolean;
         F          : in out P_Fichier_Archive.File_Type) is
      Emp       : T_Personne;
      Choix     : Integer;
      Erreur    : Boolean;
      Recup_Tab : Tab_Etude;
      Existe    : Boolean    := False;

   begin

      Put("Enregistrement du depart d'un employe");
      New_Line;
      Put("Vous enregistrez le depart d'un(e) secretaire (1), d'un(e) charge d'etude (2) ou d'une testeuse (3)");
      New_Line;
      Put("Faite votre choix : 1 ou 2 ou 3");
      Secure_Saisie(Choix,3);
      New_Line;
      Saisie_Personne(Emp);
      New_Line;
      case Choix is
         when 1 =>
            Supp_Secr(P_Secr, Emp,Erreur);
         when 2 =>
            Supp_Charge(P_Charge,P_Etude, Emp, Erreur,F,Recup_Tab);
            New_Line;
            Put("Gestion des etudes de ce charge ...");
            New_Line;
            if Recup_Tab(1) /= null then
               Existe:= True;
               Reattribution (Recup_Tab(1).Etu.Id,P_Etude,P_Charge,F);
            end if;
            if Recup_Tab(2) /= null then
               Existe:= True;
               Reattribution (Recup_Tab(2).Etu.Id,P_Etude,P_Charge,F);
            end if;
            if Recup_Tab(3) /= null then
               Existe:= True;
               Reattribution (Recup_Tab(3).Etu.Id,P_Etude,P_Charge,F);
            end if;
            if Existe = False then
               Put("Pas d'etude pour ce charge");
            end if;
            New_Line;

         when others =>
            Supp_Testeuse(P_Testeuse, Emp, Erreur);
      end case;
      if Erreur then
         Fait:=False;
      else
         Fait:=True;
      end if;
   end Dprt_Emp;

   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------
   -------------------- PROCEDURE AFFICHAGE EMPLOYES ET ETUDES ---------------------
   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------

   procedure Vis_Liste_Dir (
         Tete_D : in     Pteur_Directeur) is

   begin

      if Tete_D/=null then
         Put(Tete_D.Dir.Id.Nom);
         Put(Tete_D.Dir.Id.Prenom);
         New_Line;
         Vis_Liste_Dir(Tete_D.Dir_Suiv);
      end if;

   end Vis_Liste_Dir;

   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------
   
   procedure Vis_Liste_Secr (
         Tete_S : in     Pteur_Secretaire) is

   begin

      if Tete_S/=null then
         Put(Tete_S.Secr.Id.Nom);
         Put(Tete_S.Secr.Id.Prenom);
         New_Line;
         Vis_Liste_Secr(Tete_S.Secre_Suiv);
      end if;

   end Vis_Liste_Secr;

   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------
   
   procedure Vis_Liste_Charge (
         Tete_C : in     Pteur_Charge) is

   begin

      if Tete_C/=null then
         Put(Tete_C.Charge.Id.Nom);
         Put(Tete_C.Charge.Id.Prenom);
         New_Line;
         Vis_Liste_Charge(Tete_C.Charge_Suiv);
      end if;

   end Vis_Liste_Charge;


   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------
   
   procedure Visualiser_Liste_Emp (
         Tete_S : in     Pteur_Secretaire;
         Tete_C : in     Pteur_Charge;
         Tete_D : in     Pteur_Directeur) is
   begin

      Put("Directeur(s) =>");
      New_Line;
      Vis_Liste_Dir(Tete_D);
      New_Line;
      New_Line;
      Put("Secretaire(s) =>");
      New_Line;
      Vis_Liste_Secr(Tete_S);
      New_Line;
      New_Line;
      Put("Charge(s) d'etudes =>");
      New_Line;
      Vis_Liste_Charge(Tete_C);
      New_Line;

   end Visualiser_Liste_Emp;

   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------
   
   procedure Visualiser_Secre_Spe (
         Tete_S : in     Pteur_Secretaire;
         Nom,
         Prenom : in     T_Mot) is

   begin

      if Tete_S/=null then
         if To_Lower(Tete_S.Secr.Id.Nom)=To_Lower(Nom) 
            and then To_Lower(Tete_S.Secr.Id.Prenom)=To_Lower(Prenom) then
            Put("Informations sur la secretaire :");
            New_Line;
            Put(Nom);
            Put(" ");
            Put(Prenom);
            New_Line;
            Put("Login :");
            Put(Tete_S.Secr.Id.Login);
            New_Line;
            Put("Mot de passe crypte et parametre N : ");
            Put(Tete_S.Secr.Id.Login);
            Put("  N=");
            Put(Tete_S.Secr.Id.N);
            New_Line;

         end if;

         Visualiser_Secre_Spe(Tete_S.Secre_Suiv,Nom,Prenom);
      end if;

   end Visualiser_Secre_Spe;

   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------
   
   procedure Visualiser_Charge_Spe (
         Tete_C  : in     Pteur_Charge;
         P_Etude :        Pteur_Etude;
         Nom,
         Prenom  : in     T_Mot;
         F       : in out P_Fichier_Archive.File_Type) is
      Choix       : Integer;
      P_Aux       : Pteur_Etude      := P_Etude;
      Existe,
      Existe1,
      Existe2     : Boolean          := False;
      Et_Archivee : T_Etude_Archivee;

      use P_Fichier_Archive;


   begin
      if Tete_C = null then
         New_Line;
         Put("Pas de charge avec cette identite dans la liste des employes");
         New_Line;
      elsif Tete_C/=null then
         if To_Lower(Tete_C.Charge.Id.Nom)=To_Lower(Nom) 
            and then To_Lower(Tete_C.Charge.Id.Prenom)=To_Lower(Prenom) then
            Put("Informations sur le charge d'etude :");
            New_Line;
            Put(Nom);
            Put(" ");
            Put(Prenom);
            New_Line;
            Put("Login :");
            Put(Tete_C.Charge.Id.Login);
            New_Line;
            Put("Mot de passe crypte et parametre N : ");
            Put(Tete_C.Charge.Id.Mdp);
            Put("  N=");
            Put(Tete_C.Charge.Id.N);
            New_Line;
            -----------------------------------------------------------
            -----Afficher le nombre d'etude en cours du charge + ID
            -----------------------------------------------------------
            Put("Nb d'etude en charge =>");
            Put(Tete_C.Charge.Nb_Etude_En_Charge);
            New_Line;
            if Tete_C.Charge.Nb_Etude_En_Charge >0 then
               Put("Id de ses etudes =>");
               if Tete_C.Charge.Etude_En_Charge(1) /=null then
                  Put(Tete_C.Charge.Etude_En_Charge(1).Etu.Id);
               end if;
               Put(", ");
               if Tete_C.Charge.Etude_En_Charge(2) /=null then
                  Put(Tete_C.Charge.Etude_En_Charge(2).Etu.Id);
               end if;
               Put(", ");
               if Tete_C.Charge.Etude_En_Charge(3) /=null then
                  Put(Tete_C.Charge.Etude_En_Charge(3).Etu.Id);
               end if;
               New_Line;
            end if;
            
            Put("Nb d'etudes achevees :");
            Put(Tete_C.Charge.Nb_Etude_T);
            New_Line;
            New_Line;
            Put("Souhaitez vous voir les produits testes par ce charge ? Oui => 1 Non => 2");
            New_Line;
            Secure_Saisie(Choix,2);
            New_Line;

            if Choix = 1 then
               while P_Aux /= null loop
                  if To_Lower(P_Aux.Etu.Nom_Charge)=To_Lower(Nom) 
                     and then To_Lower(P_Aux.Etu.Prenom_Charge)=To_Lower(Prenom) then
                     Existe1 := True;
                     Put("Identifiant de cette etude => ");
                     Put(P_Aux.Etu.Id);
                     New_Line;
                     Put("Nom du produit =>");
                     Put(P_Aux.Etu.Produit.Nom_P);
                     New_Line;
                     Put("Categorie =>");
                     case P_Aux.Etu.Produit.Cat is
                        when T_Categorie'Val(0)=>
                           Put("Creme de jour");
                           New_Line;
                        when T_Categorie'Val(1) =>
                           Put("Soin de nuit");
                           New_Line;
                        when T_Categorie'Val(2) =>
                           Put("Lait corporel");
                           New_Line;
                        when T_Categorie'Val(3) =>
                           Put("Lotion pour le visage");
                           New_Line;
                        when T_Categorie'Val(4) =>
                           Put("Gel Douche");
                           New_Line;
                        when others =>
                           Put("Solaire");
                           New_Line;
                     end case;

                     New_Line;
                     Put("Entreprise =>");
                     Put(P_Aux.Etu.Produit.Entreprise);
                     New_Line;
                     Put("----------------------------------------------------");
                     New_Line;
                  end if;
                  P_Aux := P_Aux.Etu_Suiv;
               end loop;
               if Existe1 = False then
                  Put("Pas d'etude pour ce charge");
                  New_Line;

                  Put("Produits d'etudes archivees =>");
                  New_Line;
                  begin
                     Open(F,In_File,"Fichier_Archive");
                  exception
                     when others =>
                        Create (F, Name=>"Fichier_Archive");
                  end;
                  Close(F);
                  --manipulation du fichier

                  Open(F,In_File,"Fichier_Archive");
                  while not End_Of_File(F) loop
                     Read(F,Et_Archivee);
                     if To_Lower(Et_Archivee.Nom_Charge)=To_Lower(Nom) 
                        and then To_Lower(Et_Archivee.Prenom_Charge)=To_Lower(Prenom)  then
                        Existe2 := True;
                        Put("Nom du produit :");
                        Put(Et_Archivee.Produit.Nom_P);
                        New_Line;
                        Put("Categorie : ");
                        case Et_Archivee.Produit.Cat is
                           when T_Categorie'Val(0)=>
                              Put("Creme de jour");
                              New_Line;
                           when T_Categorie'Val(1) =>
                              Put("Soin de nuit");
                              New_Line;
                           when T_Categorie'Val(2) =>
                              Put("Lait corporel");
                              New_Line;
                           when T_Categorie'Val(3) =>
                              Put("Lotion pour le visage");
                              New_Line;
                           when T_Categorie'Val(4) =>
                              Put("Gel Douche");
                              New_Line;
                           when others =>
                              Put("Solaire");
                              New_Line;
                        end case;
                        Put("Entreprise =>");
                        Put(Et_Archivee.Produit.Entreprise);
                        New_Line;
                        Put("----------------------------------------------------");
                        New_Line;
                     end if;
                  end loop;
                  New_Line;
                  Close (F);
                  --Affichage si pas d'etude archivee pour ce charge
                  if Existe2 = False then
                     Put("Pas de produit issus d'etudes archivees pour ce charge d'etude");
                     New_Line;
                  end if;

               end if;

               New_Line;
            end if;

         else
            Visualiser_Charge_Spe (Tete_C.Charge_Suiv,P_Etude,Nom,Prenom,F);
         end if;
      end if;

   end Visualiser_Charge_Spe;


   procedure Visualiser_Liste_Etude (
         Tete : in     Pteur_Etude) is

   begin

      if Tete/=null then
         Put("Identifiant =>");
         Put(Tete.Etu.Id);
         New_Line;
         Put("Produit teste =>");
         Put(Tete.Etu.Produit.Nom_P);
         New_Line;
         Put("Categorie =>");
         Put(T_Categorie'Image(Tete.Etu.Produit.Cat));
         New_Line;
         Put("-------------------------------");
         New_Line;
         Visualiser_Liste_Etude(Tete.Etu_Suiv);
      end if;

   end Visualiser_Liste_Etude;
   
   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------
   
   procedure Visualiser_Etude_Spe (
         Tete         : in     Pteur_Etude;
         Id_Recherche : in     Integer) is

   begin

      if Tete = null then
         Put("Aucune etude avec cette identifiant");

      elsif Tete/=null then
         if Tete.Etu.Id=Id_Recherche then
            New_Line;
            Put("Le Produit teste lors de cette etude est =>");
            Put(Tete.Etu.Produit.Nom_P);
            New_Line;
            Put(Tete.Etu.Nb_Testeuse);
            Put("testeuses ont ete incluses");
            New_Line;
            Put("La personne en charge de cette etude est/etait");
            Put(Tete.Etu.Prenom_Charge);
            Put(Tete.Etu.Nom_Charge);
            New_Line;
            Put("L'etude est ");
            Put(T_Statut'Image(Tete.Etu.Statut));
            New_Line;

            --Affichage seulement si etude cloturee ...
            if Tete.Etu.Statut = Cloturee then
               if Tete.Etu.Note_Moy/=-1 then
                  Put("La note de ce produit est =>");
                  Put(Tete.Etu.Note_Moy);
                  New_Line;
               end if;
               Put("Le nombre de patientes significative est =>");
               Put(Tete.Etu.Nb_Significatif);
               New_Line;
               if Tete.Etu.Risque then
                  Put("Ce produit presente un risque");
               else
                  Put("Ce produit ne presente pas de risque");
               end if;
            end if;
            New_Line;
         else
            Visualiser_Etude_Spe(Tete.Etu_Suiv,Id_Recherche);
         end if;

      end if;

   end Visualiser_Etude_Spe;

   -------------------------------------------------------------------------------------
   -------------------------------------------------------------------------------------
   ------------------- PROCEDURE DE CONNEXION DES UTILISATEURS -------------------------
   -------------------------------------------------------------------------------------
   -------------------------------------------------------------------------------------
   
   procedure Connexion_Log (
         Cat            : in     Integer;
         P_Dir          : in     Pteur_Directeur;
         P_Secr         : in     Pteur_Secretaire;
         P_Charge       : in     Pteur_Charge;
         P_Test         : in     Pteur_Testeuse;
         Connecte       : in out Boolean;
         Info_Connexion :    out T_Personne) is

      Connexion : T_Personne;
      K         : Integer;
      Cpt       : Integer          := 0;
      Verif     : Boolean;
      P_Aux1    : Pteur_Directeur  := P_Dir;
      P_Aux2    : Pteur_Secretaire := P_Secr;
      P_Aux3    : Pteur_Charge     := P_Charge;
      P_Aux4    : Pteur_Testeuse   := P_Test;
      Param_N   : Integer          := - 1;
      Mdp_Cryp  : T_Mdp;

   begin
      Put("Saisir votre login => ");
      Get_Line(Connexion.Login,K);
      --recup de N et Mdp crypte dans la liste
      case Cat is
         when 1 =>
            while P_Aux1 /= null loop
               if P_Aux1.Dir.Id.Login = To_Lower(Connexion.Login) then
                  Param_N := P_Aux1.Dir.Id.N;
                  Mdp_Cryp := P_Aux1.Dir.Id.Mdp;
                  Connexion.Mdp := P_Aux1.Dir.Id.Mdp;
                  exit;
               else
                  P_Aux1 := P_Aux1.Dir_Suiv;
               end if;
            end loop;
         when 2 =>
            while P_Aux2 /= null loop
               if P_Aux2.Secr.Id.Login =To_Lower(Connexion.Login) then
                  Param_N := P_Aux2.Secr.Id.N;
                  Mdp_Cryp := P_Aux2.Secr.Id.Mdp;
                  exit;
               else
                  P_Aux2 := P_Aux2.Secre_Suiv;
               end if;
            end loop;
         when 3 =>
            while P_Aux3 /= null loop
               if P_Aux3.Charge.Id.Login =To_Lower(Connexion.Login) then
                  Param_N := P_Aux3.Charge.Id.N;
                  Mdp_Cryp := P_Aux3.Charge.Id.Mdp;
                  exit;
               else
                  P_Aux3 := P_Aux3.Charge_Suiv;
               end if;
            end loop;
         when others =>
            while P_Aux4 /= null loop
               if P_Aux4.Test.Id.Login =To_Lower(Connexion.Login) then
                  Param_N := P_Aux4.Test.Id.N;
                  Mdp_Cryp := P_Aux4.Test.Id.Mdp;
                  exit;
               else
                  P_Aux4 := P_Aux4.Test_Suiv;
               end if;
            end loop;
      end case;

      -- Si recup alors ce login existe et on continue

      if Param_N /=-1 then

         Put("Saisir votre mot de passe => ");
         New_Line;
         loop
            Cryp_Mdp(Connexion, Param_N);
            Cpt := Cpt+1;
            if Connexion.Mdp = Mdp_Cryp then
               Verif :=True;
            else
               Verif := False;
            end if;

            exit when Verif= True or Cpt = 3;
            New_Line;
            Put("Le mot de passe ne correspond pas ! Retentez ... ");
            New_Line;
         end loop;
         if Verif then
            Connecte := True;
            --Recup des infos de connexion
            Info_Connexion.Login := Connexion.Login;
            Info_Connexion.Mdp := Mdp_Cryp;
            --Si retour True dans le Prg principal alors affichage menu employe
         else
            Connecte := False;
            --Dans le prog principal -> si retour de false alors retour ecran démarrage
         end if;
      else
         Put("Ce login ne correspond a aucun utilisateur !");
         New_Line;
         Connecte := False;
         delay(3.0);
         --retour a l'ecran d'accueil
      end if;

   end Connexion_Log;



end Gestion_Directeur;
