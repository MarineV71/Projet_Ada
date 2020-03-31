with Ada.Text_Io,Ada.Integer_Text_Io, Ada.Characters.Handling;
use Ada.Text_Io,Ada.Integer_Text_Io,Ada.Characters.Handling;
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
      I.Prenom:="Jeannette      ";
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
      I.Prenom:="Lucie          ";
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
      Inc:=new T_Liste_Incluse'(I,Inc);
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
   end Aj_User;





   --------------------------------------------------
   -- procedure d'ajout d'employes & etudes
   --------------------------------------------------
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
   
   -------------------------------------------------------
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
   
   -------------------------------------------------------
   procedure Ajout_Directeur (
         P_Dir : in out Pteur_Directeur;
         Directeur       : in     T_Directeur) is
   begin
      if P_Dir = null then
         P_Dir:= new T_Liste_Directeur'(Directeur, null);
      else
         P_Dir := new T_Liste_Directeur'(Directeur, P_Dir);
      end if;
   end Ajout_Directeur;
   
   --------------------------------------------------------
   --------------------------------------------------------

   procedure Creation_Etude (
         Tete_Etude : in out Pteur_Etude;
         Etude      : in out T_Etude;
         P_Charge   : in out Pteur_Charge) is
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
      Put("creation d'une nouvelle etude :");
      New_Line;
      if Tete_Etude=null then
         Etude.Id:=1;
      else
         Etude.Id:=Tete_Etude.Etu.Id+1;
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
      Get(Etude.Produit.Age_Min, Etude.Produit.Age_Max);
      Skip_Line;
      Put("saisir le nom de l'entreprise");
      Get_Line(Etude.Produit.Entreprise,K);
      Put_Line("Saisir (1) pour attribution manuelle du charge de l'etude ou (2) pour attribution automatique");
      Put("saisir votre choix :");
      Get(Choix);
      Skip_Line;
      case Choix is
         when 1 =>
            loop
               Put("saisir le nom de charge de l'etude :");
               Get_Line(N,Kn); --saisie securisee si le charge n'existe pas ou si son nombre d'etude est plein
               Put("saisir le prenom du charge d'etude :");
               Get_Line(P,Kn);
               Ok:= Verif_Saisie_Charge(P_Charge,N,P); --JE NE SAIS PAS S'IL FAUT AUSSI METTRE KN ET KP
               if Ok then
                  Cpt:=Cpt_Etude_Charge(P_Charge,N,P); --IDEM
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
         when 2 =>
            Repartition_Etude_Charge (Etude, P_Charge, Tete_Etude);
         when others=>
            Put("erreur de saisie");
      end case;
   end Creation_Etude;

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
      Existe : Boolean := False;

   begin

      Put("Enregistrement d'un nouvel employe");
      New_Line;

      loop
         Put("Vous enregistrez un(e) secretaire (1) ou un(e) charge d'etude (2) ou un directeur (3)");
         New_Line;
         Put("Faite votre choix : 1 ou 2 ou 3");
         Get(Choix);
         Skip_Line;
         exit when Choix in 1..3;
         Put("Choix invalide, veuillez recommencez !");
      end loop;

      case Choix is
         when 1 =>
            Saisie_Personne(Emp);
            while P_Aux1/=null loop
               if P_Aux1.Secr.Id.Nom=Emp.Nom and then P_Aux1.Secr.Id.Prenom=Emp.Prenom then
                  Existe:=True;
               else
                  P_Aux1:=P_Aux1.Secre_Suiv;
               end if;
            end loop;
            if Existe=False then
               Cryp_Mdp(Emp);
               Secr.Id:=Emp;
               Ajout_Secr(P_Secr, Secr);
            else
               Put("Une personne avec cette identite existe deja !");
               New_Line;
            end if;
         when 2 =>
            Saisie_Personne(Emp);
            while P_Aux2/=null loop
               if P_Aux2.Charge.Id.Nom=Emp.Nom and then P_Aux2.Charge.Id.Prenom=Emp.Prenom then
                  Existe:=True;
               else
                  P_Aux2:=P_Aux2.Charge_Suiv;
               end if;
            end loop;
            if Existe=False then
               Cryp_Mdp(Emp);
               Charge_Et.Id:=Emp;
               Ajout_Charge(P_Charge, Charge_Et);
            else
               Put("Une personne avec cette identite existe deja !");
               New_Line;
            end if;
         when others =>
            Saisie_Personne(Emp);
            while P_Aux3/=null loop
               if P_Aux3.Dir.Id.Nom=Emp.Nom and then P_Aux3.Dir.Id.Prenom=Emp.Prenom then
                  Existe:=True;
               else
                  P_Aux3:=P_Aux3.Dir_Suiv;
               end if;
            end loop;
            if Existe=False then
               Cryp_Mdp(Emp);
               Directeur.Id:=Emp;
               Ajout_Directeur(P_Dir, Directeur);
            else
               Put("Une personne avec cette identite existe deja !");
               New_Line;
            end if;

      end case;

end Enr_Nvl_Emp;

--------------------------------------------------
-- procedure de suppression des employes
--------------------------------------------------
procedure Supp_Secr (
      Tete   : in out Pteur_Secretaire;
      S      : in     T_Personne;
      Erreur :    out Boolean) is

begin
   if Tete = null then
      Erreur := True ;
   elsif Tete.Secr.Id=S then
      Erreur:=False;
      Tete:=Tete.Secre_Suiv;
   else
      Supp_Secr(Tete.Secre_Suiv, S, Erreur);
   end if;
   
end Supp_Secr;

---------------------------------------------------
procedure Supp_Charge (
      Tete   : in out Pteur_Charge;
      Ce     : in     T_Personne;
      Erreur :    out Boolean) is--mettre recup

begin
   if Tete = null then
      Erreur := True ;
   elsif Tete.Charge.Id=Ce then
      Erreur:=False;
      --Verifier si etude en cours et réattribution 
      --appel de la procedure d'attribution des etudes aux charges etudes
      Tete:=Tete.Charge_Suiv;
   else
      Supp_Charge(Tete.Charge_Suiv, Ce, Erreur);
   end if;
   
end Supp_Charge;

--------------------------------------------------------------------
procedure Supp_Testeuse (
      Tete   : in out Pteur_Testeuse;
      Tstse  : in     T_Personne;
      Erreur :    out Boolean) is
begin
   if Tete = null then
      Erreur := True ;
   elsif Tete.Test.Id=Tstse then
      Erreur:=False;
      Tete:=Tete.Test_Suiv;
   else
      Supp_Testeuse(Tete.Test_Suiv, Tstse, Erreur);
   end if;
   
end Supp_Testeuse;


-----------------------------------------------------------

procedure Dprt_Emp (
      P_Secr     : in out Pteur_Secretaire;
      P_Charge   : in out Pteur_Charge;
      P_Testeuse : in out Pteur_Testeuse;
      Fait       :    out Boolean) is
   Emp    : T_Personne;
   Choix  : Integer;
   Erreur : Boolean;

begin
   
   Put("Enregistrement du depart d'un employe");
   New_Line;
   Saisie_Personne(Emp);
   loop
      Put("Vous enregistrez le depart d'un(e) secretaire (1), d'un(e) charge d'etude (2) ou d'une testeuse (3)");
      New_Line;
      Put("Faite votre choix : 1 ou 2");
      Get(Choix);
      Skip_Line;
      case Choix is
         when 1 =>
            Supp_Secr(P_Secr, Emp,Erreur);
         when 2 =>
            Supp_Charge(P_Charge, Emp, Erreur);
         when 3 =>
            Supp_Testeuse(P_Testeuse, Emp, Erreur);
         when others =>
            Put("Choix invalide, veuillez saisir a nouveau votre choix");
            New_Line;
      end case;
      if Erreur then
         Fait:=False;
      else
         Fait:=True;
      end if;
   end loop;
end Dprt_Emp;

--------------------------------------------------
-- procedure d'affichage des employes
--------------------------------------------------

procedure Vis_Liste_Dir (Tete_D: in Pteur_Directeur) is 

begin 
   
   if Tete_D/=null then
      Put(Tete_D.Dir.Id.Nom);
      Put(Tete_D.Dir.Id.Prenom);
      New_Line;
      Vis_Liste_Dir(Tete_D.Dir_Suiv);
   end if;
   
end Vis_Liste_Dir;

----------------------------------------------------------
procedure Vis_Liste_Secr (Tete_S: in Pteur_Secretaire) is 

begin 
   
   if Tete_S/=null then
      Put(Tete_S.Secr.Id.Nom);
      Put(Tete_S.Secr.Id.Prenom);
      New_Line;
      Vis_Liste_Secr(Tete_S.Secre_Suiv);
   end if;
   
end Vis_Liste_Secr;

-----------------------------------------------------------
procedure Vis_Liste_Charge (Tete_C: in Pteur_Charge) is 

begin 
   
   if Tete_C/=null then
      Put(Tete_C.Charge.Id.Nom);
      Put(Tete_C.Charge.Id.Prenom);
      New_Line;
      Vis_Liste_Charge(Tete_C.Charge_Suiv);
   end if;
   
end Vis_Liste_Charge;


------------------------------------------------------------
procedure Visualiser_Liste_Emp (
      Tete_S : in     Pteur_Secretaire;
   Tete_C : in     Pteur_Charge;
      Tete_D : in Pteur_Directeur) is
begin
   
   Put("Directeur(s) =>");
   New_Line;
   Vis_Liste_Dir(Tete_D);
   New_Line;
   New_line;      
   Put("Secretaire(s) =>");
   New_Line;
   Vis_Liste_Secr(Tete_S);
   New_Line;   
   New_line;
   Put("Charge(s) d'etudes =>");
   New_Line;
   Vis_Liste_Charge(Tete_C);
   New_Line;

end Visualiser_Liste_Emp;

---------------------------------------------------------------------------
procedure Visualiser_Secre_Spe (
      Tete_S : in     Pteur_Secretaire;
      Nom,
      Prenom : in     T_Mot) is

begin
   
   if Tete_S/=null then
      if to_lower(Tete_S.Secr.Id.Nom)=to_lower(Nom) and then to_lower(Tete_S.Secr.Id.Prenom)=to_lower(Prenom) then
         Put("Informations sur la secretaire :");
         Put(Nom);Put(" ");Put(Prenom);New_Line;
         Put("Login :");Put(Tete_S.Secr.Id.Login);
         Put("Mot de passe crypte et parametre N : ");
         Put(Tete_S.Secr.Id.Login);Put("  N=");Put(Tete_S.Secr.Id.N);
         New_Line;
         
      end if;
      
      Visualiser_Secre_Spe(Tete_S.Secre_Suiv,Nom,Prenom);
   end if;
   
end Visualiser_Secre_Spe;

---------------------------------------------------------------------------------
procedure Visualiser_Charge_Spe (
      Tete_C : in     Pteur_Charge;
      Nom,
      Prenom : in     T_Mot) is
         Choix:character;

begin
   
   if Tete_C/=null then
      if To_lower(Tete_C.Charge.Id.Nom)=to_lower(Nom) and then to_lower(Tete_C.Charge.Id.Prenom)=to_lower(Prenom) then
         Put("Informations sur le charge d'etude :");
         Put(Nom);Put(" ");Put(Prenom);New_Line;
         Put("Login :");Put(Tete_C.Charge.Id.Login);
         Put("Mot de passe crypte et parametre N : ");
         Put(Tete_C.Charge.Id.Login);Put("  N=");Put(Tete_C.Charge.Id.N);
         New_Line;
         -----------------------------------------------------------
         -----Afficher le nombre d'etude en cours du charge + ID
         -----Voir comment est geré les etudes en cours d'un charge
         -----------------------------------------------------------
         Put("Nb d'etudes achevees :");Put(Tete_C.Charge.Nb_Etude_T);
         loop
            Put("Souhaitez vous voir les produits testes ? Oui => O Non => N");
            new_line;
            Get(Choix);Skip_Line;
            exit when Choix='O' or Choix='N';
            Put("Choix invalide, retentez !");
         end loop;
         if Choix ='O' then
            ----------------------------------------------------------------
            ----Afficher les produits apres avoir parcouru la liste d'etude
            ---- Depend aussi de la facon dont sont enregistres les etudes 
            ---- dans le type charge 
            ----------------------------------------------------------------
            null;
         end if;
                 
         New_Line;
      end if;
      
      Visualiser_Charge_Spe (Tete_C.Charge_Suiv,Nom,Prenom);
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

--------------------------------------------------------------
procedure Visualiser_Etude_Spe (
      Tete         : in     Pteur_Etude;
      Id_Recherche : in     Integer) is
begin
   if Tete/=null then
      if Tete.Etu.Id=Id_Recherche then
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
         New_Line;
      end if;
      Visualiser_Etude_Spe(Tete.Etu_Suiv,Id_Recherche);
   end if;
end Visualiser_Etude_Spe;

end Gestion_Directeur;



         
