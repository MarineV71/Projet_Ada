with Ada.Text_Io,Ada.Integer_Text_Io;
use Ada.Text_Io,Ada.Integer_Text_Io;
package body Gestion_Directeur is 
   procedure Aj_user (direc: out pteur_directeur; chg : out pteur_charge; scrt:out pteur_secretaire; test:out pteur_testeuse; Etu:out pteur_etude; Inc:out pteur_incluse) is
      D:T_Directeur;
      I:T_Personne_Incluse;
      S:T_Secretaire;
      T:t_Testeuse;
      E:T_Etude;
      C:T_Charge_Etude;

   begin
      D.Id.Nom:="WAYNE          ";
      D.Id.Prenom:="John           ";
      D.Id.Login:="john.wayne                     ";
      D.Id.Mdp:="uOAnaee!43";
      D.Id.N:=12;
      D.Nb_Etude_C:=7;
      Direc:=new T_Liste_Directeur'(d,null);
      
      S.Id.Nom:="GUERRE         ";
      S.Id.Prenom:="Martin         ";
      S.Id.Login:="martin.guerre                  ";
      S.Id.Mdp:="6wZOPMs?9!";
      S.Id.N:=5;
      Scrt:=new T_Liste_Secretaire'(S,null);

      C.id.nom:="PERSONNE       ";
   c.id.prenom:="Paul           ";
   c.id.login:="paul.personne                  ";
   c.id.mdp:="5678!.?def";
   c.id.n:=14;
   c.nb_etude_en_charge:=3;
   --c.etude_en_charge
   c.nb_etude_t:=0;
     Chg:=new T_Liste_Charge'(C,null);
 
   c.id.nom:="FER            ";
   c.id.prenom:="Lucie          ";
   c.id.login:="lucie.fer                      ";
   c.id.mdp:="tSZZeHOF46";
   c.id.n:=12;
   c.nb_etude_en_charge:=2;
   --c.etude_en_charge
   c.nb_etude_t:=0;
   chg:=new T_Liste_Charge'(C,chg);

   c.id.nom:="GRANT          ";
   c.id.prenom:="Hermine        ";
   c.id.login:="hermine.grant                  ";
   c.id.mdp:="!5ef8h0jk3";
   c.id.n:=4;
   c.nb_etude_en_charge:=2;
   --c.etude_en_charge
      C.Nb_Etude_T:=0;
      Chg:=new T_Liste_Charge'(C,Chg);
      
      T.Id.Nom:="BELOEIL        ";
      T.id.prenom:="Coco           ";
      T.id.login:="coco.beloeil                   ";
      T.id.mdp:="?hJhJ678!2";
      T.Id.N:=5;
      T.Age:=19;
      --T.etude:=1;
      Test:=new T_Liste_Testeuse'(T,null);

      T.Id.Nom:="TIGRESSE       ";
      T.id.prenom:="Lily           ";
      T.id.login:="lily.tigresse                  ";
      T.id.mdp:="zUJUHzQD21";
      T.Id.N:=10;
      T.Age:=27;
      --T.etude:=1;
      Test:=new T_Liste_Testeuse'(T,test);

      T.Id.Nom:="ARC            ";
      T.id.prenom:="Jeanne         ";
      T.id.login:="jeanne.arc                     ";
      T.id.mdp:="90tMGZVIN#";
      T.Id.N:=5;
      T.Age:=66;
      --T.etude:=5;
      Test:=new T_Liste_Testeuse'(T,test);

      T.Id.Nom:="SOUBIROUX      ";
      T.id.prenom:="Bernadette     ";
      T.id.login:="bernadette.soubiroux           ";
      T.id.mdp:="xCIFRSG$#6";
      T.Id.N:=12;
      T.Age:=59;
      --T.etude:=0;
      Test:=new T_Liste_Testeuse'(T,test);
      
      T.Id.Nom:="DUBOIS         ";
      T.id.prenom:="Josette        ";
      T.id.login:="josette.dubois                 ";
      T.id.mdp:="#pIMC$cUFX";
      T.Id.N:=6;
      T.Age:=65;
      --T.etude:=1;
      Test:=new T_Liste_Testeuse'(T,test);
      
      T.Id.Nom:="BELLE          ";
      T.id.prenom:="Lucille        ";
      T.id.login:="lucille.belle                  ";
      T.id.mdp:="aFNTWWP780";
      T.Id.N:=15;
      T.Age:=21;
      --T.etude:=6;
      Test:=new T_Liste_Testeuse'(T,test);
      
      T.Id.Nom:="HEPBURN        ";
      T.id.prenom:="Audrey         ";
      T.id.login:="audrey.hepburn                 ";
      T.id.mdp:="oOFM$#sFOB";
      T.Id.N:=12;
      T.Age:=35;
      --T.etude:=7;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="LUNE           ";
      T.id.prenom:="Valeria        ";
      T.id.login:="valeria.lune                   ";
      T.id.mdp:="nMF346IT!B";
      T.Id.N:=21;
      T.Age:=17;
      --T.etude:=6;
      Test:=new T_Liste_Testeuse'(T,Test);
      
      T.Id.Nom:="CLARK          ";
      T.id.prenom:="Anna           ";
      T.id.login:="anna.clark                     ";
      T.id.mdp:="tIYHJHKHIY";
      T.Id.N:=19;
      T.Age:=24;
      --T.etude:=6;
      Test:=new T_Liste_Testeuse'(T,Test);
      
      T.Id.Nom:="SCHUMAN        ";
      T.id.prenom:="Clara          ";
      T.id.login:="clara.schuman                  ";
      T.id.mdp:="wUILDKJEA1";
      T.Id.N:=4;
      T.Age:=39;
      --T.etude:=7;
      Test:=new T_Liste_Testeuse'(T,Test);
      
      T.Id.Nom:="ROMEO          ";
      T.id.prenom:="Juliette       ";
      T.id.login:="juliette.romeo                 ";
      T.id.mdp:="#01#64#vXB";
      T.Id.N:=18;
      T.Age:=47;
      --T.etude:=7;
      Test:=new T_Liste_Testeuse'(T,Test);
      
      T.Id.Nom:="VALLADE        ";
      T.id.prenom:="Martine        ";
      T.id.login:="martine.vallade                ";
      T.id.mdp:="876yare678";
      T.Id.N:=24;
      T.Age:=59;
      --T.etude:=7;
      Test:=new T_Liste_Testeuse'(T,Test);
      
      T.Id.Nom:="MOUTON         ";
      T.id.prenom:="Aline          ";
      T.id.login:="mouton.mouton                  ";
      T.id.mdp:="iXX890kHWH";
      T.Id.N:=7;
      T.Age:=45;
      --T.etude:=7;
      Test:=new T_Liste_Testeuse'(T,Test);
      
      T.Id.Nom:="REBEL          ";
      T.id.prenom:="Alicia         ";
      T.id.login:="alicia.rebel                   ";
      T.id.mdp:="tHGwPW!uT?";
      T.Id.N:=9;
      T.Age:=19;
      --T.etude:=6;
      Test:=new T_Liste_Testeuse'(T,Test);
      
      T.Id.Nom:="FLEUR          ";
      T.id.prenom:="Caroline       ";
      T.id.login:="caroline.fleur                 ";
      T.id.mdp:="hYCO39!rVM";
      T.Id.N:=16;
      T.Age:=52;
      --T.etude:=0;
      Test:=new T_Liste_Testeuse'(T,Test);
      
      T.Id.Nom:="BARTOK         ";
      T.id.prenom:="Belle          ";
      T.id.login:="belle.bartok                   ";
      T.id.mdp:="#bFDTV994$";
      T.Id.N:=15;
      T.Age:=72;
      --T.etude:=1;
      Test:=new T_Liste_Testeuse'(T,Test);
      
      T.Id.Nom:="BELLE          ";
      T.id.prenom:="Marie          ";
      T.id.login:="marie.belle                    ";
      T.id.mdp:="!?cNHYR.27";
      T.Id.N:=13;
      T.Age:=74;
      --T.etude:=5;
      Test:=new T_Liste_Testeuse'(T,Test);
      
      T.Id.Nom:="BLEUE          ";
      T.id.prenom:="Agathe         ";
      T.id.login:="agathe.bleue                   ";
      T.id.mdp:="sktZm!$#01";
      T.Id.N:=6;
      T.Age:=62;
      --T.etude:=5;
      Test:=new T_Liste_Testeuse'(T,Test);
      
      T.Id.Nom:="ARC            ";
      T.id.prenom:="Mireille       ";
      T.id.login:="mireille.arc                   ";
      T.id.mdp:="dRVRfYNAJ!";
      T.Id.N:=17;
      T.Age:=67;
      --T.etude:=5;
      Test:=new T_Liste_Testeuse'(T,Test);
      
      T.Id.Nom:="CADET          ";
      T.id.prenom:="Benjamine      ";
      T.id.login:="benjamine.cadet                ";
      T.id.mdp:="sBQFQBrROP";
      T.Id.N:=3;
      T.Age:=41;
      --T.etude:=3;
      Test:=new T_Liste_Testeuse'(T,Test);
      
      T.Id.Nom:="BLANC          ";
      T.id.prenom:="Aline          ";
      T.id.login:="aline.blanc                    ";
      T.id.mdp:="?i91hjk!#$";
      T.Id.N:=7;
      T.Age:=52;
      --T.etude:=3;
      Test:=new T_Liste_Testeuse'(T,Test);
      
      T.Id.Nom:="POPPINS        ";
      T.id.prenom:="Mary           ";
      T.id.login:="mary.poppins                   ";
      T.id.mdp:="uSNCPAYJGD";
      T.Id.N:=2;
      T.Age:=31;
      --T.etude:=3;
      Test:=new T_Liste_Testeuse'(T,Test);
      
      T.Id.Nom:="PIERRE         ";
      T.id.prenom:="Jeanette       ";
      T.id.login:="jeanette.pierre                ";
      T.id.mdp:="aATJGTaPH!";
      T.Id.N:=11;
      T.Age:=47;
      --T.etude:=3;
      Test:=new T_Liste_Testeuse'(T,Test);

      T.Id.Nom:="KRUL           ";
      T.id.prenom:="Cathy          ";
      T.id.login:="cathy.krul                     ";
      T.id.mdp:="#$mHKXMm$!";
      T.Id.N:=7;
      T.Age:=39;
      --T.etude:=3;
      Test:=new T_Liste_Testeuse'(T,Test);
      
      T.Id.Nom:="BONPAIN        ";
      T.id.prenom:="Karine         ";
      T.id.login:="karine.bonpain                 ";
      T.id.mdp:="nZFAT!nZA#";
      T.Id.N:=15;
      T.Age:=45;
      --T.etude:=3;
      Test:=new T_Liste_Testeuse'(T,Test);
      
      T.Id.Nom:="MAILLARD       ";
      T.id.prenom:="Yvette         ";
      T.id.login:="yvette.maillard                ";
      T.id.mdp:="mQQ346?#1m";
      T.Id.N:=12;
      T.Age:=51;
      --T.etude:=0;
      Test:=new T_Liste_Testeuse'(T,Test);
       
      T.Id.Nom:="BEAUSONGE      ";
      T.id.prenom:="Iseult         ";
      T.id.login:="iseult.beausonge               ";
      T.id.mdp:="7jBSCDKX0?";
      T.Id.N:=16;
      T.Age:=21;
      --T.etude:=0;
      Test:=new T_Liste_Testeuse'(T,Test);
      
      E.Id:=1;
      E.Produit.Nom_P:="Peau Douce     ";
      E.Produit.Cat:=T_Categorie'val(T_Categorie'pos(Lotion_Visage));
      E.Produit.Age_Min:=15;
      E.Produit.Age_Max:=75;
      E.Produit.Entreprise:="Belle Peau     ";
      E.Nb_Testeuse:=4;
      E.Nom_Charge:="PERSONNE       ";
      E.Prenom_Charge:="Paul           ";
      I.Nom:="BELOEIL        ";
      I.Prenom:="Coco           ";
      Inc:=new t_liste_incluse'(I,null);
      I.Nom:="TIGRESSE       ";
      I.Prenom:="Lily           ";
      inc:=new t_liste_incluse'(I,inc);
      I.Nom:="DUBOIS         ";
      I.Prenom:="Josette        ";
      inc:=new t_liste_incluse'(I,inc);
      I.Nom:="BARTOK         ";
      I.Prenom:="Belle          ";
      inc:=new t_liste_incluse'(I,inc);
      E.P_Testeuse:=Inc;
      Etu:=new T_Liste_Etude'(E,null);
      
      E.Id:=2;
      E.Produit.Nom_P:="Bonne nuit     ";
      E.Produit.Cat:=T_Categorie'Val(T_Categorie'pos(Soin_nuit));
      E.Produit.Age_Min:=26;
      E.Produit.Age_Max:=55;
      E.Produit.Entreprise:="Clarte         ";   
      E.Nb_Testeuse:=0;
      E.Nom_Charge:="FER            ";
      E.Prenom_Charge:="Lucie          ";
      E.P_Testeuse:=null;   
      Etu:=new T_Liste_Etude'(E,etu);

      E.Id:=3;
      E.Produit.Nom_P:="Peau Nette     ";
      E.Produit.Cat:=T_Categorie'Val(T_Categorie'pos(Lotion_visage));
      E.Produit.Age_Min:=26;
      E.Produit.Age_Max:=55;
      E.Produit.Entreprise:="Belle Peau     ";
      E.Nb_Testeuse:=5;
      E.Nom_Charge:="GRANT          ";
      E.Prenom_Charge:="Hermione       ";
      E.Statut:=T_Statut'Val(T_Statut'pos(en_cours));
      I.Nom:="CADET          ";
      I.Prenom:="Benjamine      ";
      inc:=new t_liste_incluse'(I,null);
      I.Nom:="BLANC          ";
      I.Prenom:="Aline          ";
      I.Nj_Jour_Test:=5;
      I.Note:=16;
      inc:=new t_liste_incluse'(I,inc);
      I.Nom:="POPPINS        ";
      I.Prenom:="Mary           ";
      I.Nj_Jour_Test:=2;
      I.Note:=17;
      inc:=new t_liste_incluse'(I,inc);
      I.Nom:="PIERRE         ";
      I.Prenom:="Jeannette      ";
      I.Nj_Jour_Test:=6;
      I.Note:=19;
      inc:=new t_liste_incluse'(I,inc);
      I.Nom:="KRUL           ";
      I.Prenom:="Cathy          ";
      I.Nj_Jour_Test:=6;
      I.Note:=15;
      inc:=new t_liste_incluse'(I,inc);
      E.P_Testeuse:=Inc;
      Etu:=new T_Liste_Etude'(E,etu);

      
      E.Id:=4;
      E.Produit.Nom_P:="SunSun         ";
      E.Produit.Cat:=T_Categorie'Val(t_categorie'pos(Solaire));
      E.Produit.Age_Min:=56;
      E.Produit.Age_Max:=75;
      E.Nb_Testeuse:=0;
      E.Produit.Entreprise:="Nature Toujours";
      E.Nom_Charge:="GRANT          ";
      E.Prenom_Charge:="Hermine        ";
      E.Statut:=T_Statut'Val(T_Statut'Pos(cree));
      E.P_Testeuse:=NULL;
      Etu:=new T_Liste_Etude'(E,etu);

      
      E.Id:=5;
      E.Produit.Nom_P:="Dodo           ";
      E.Produit.Cat:=T_Categorie'Val(t_categorie'pos(soin_nuit));
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
      inc:=new t_liste_incluse'(I,null);
      I.Nom:="BELLE          ";
      I.Prenom:="Marie          ";
      I.Nj_Jour_Test:=5;
      I.Note:=10;
      inc:=new t_liste_incluse'(I,inc);
      I.Nom:="BLEUE          ";
      I.Prenom:="Agathe         ";
      I.Nj_Jour_Test:=7;
      I.Note:=12;
      inc:=new t_liste_incluse'(I,inc);
      I.Nom:="ARC            ";
      I.Prenom:="Mireille       ";
      I.Nj_Jour_Test:=6;
      I.Note:=13;
      inc:=new t_liste_incluse'(I,inc);      
      E.P_Testeuse:=Inc;
      Etu:=new T_Liste_Etude'(E,Etu);

      E.Id:=6;
      E.Produit.Nom_P:="Velour         ";
      E.Produit.Cat:=T_Categorie'Val(t_categorie'pos(lait_corporel));
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
      inc:=new t_liste_incluse'(I,null);      
      I.Nom:="LUNE           ";
      I.Prenom:="Valeria        ";
      I.Nj_Jour_Test:=5;
      I.Note:=12;
      inc:=new t_liste_incluse'(I,inc);      
      I.Nom:="CLARK          ";
      I.Prenom:="Anna           ";
      I.Nj_Jour_Test:=1;
      I.Note:=7;
      I.Pb:=True;
      inc:=new t_liste_incluse'(I,inc);      
      I.Nom:="REBEL          ";
      I.Prenom:="Alicia         ";
      I.Nj_Jour_Test:=12;
      I.Note:=14;
      I.Pb:=False;
      inc:=new t_liste_incluse'(I,inc);      
      E.P_Testeuse:=Inc;
      Etu:=new T_Liste_Etude'(E,Etu);

      E.Id:=7;
      E.Produit.Nom_P:="Tout Doux      ";
      E.Produit.Cat:=T_Categorie'Val(t_categorie'pos(lait_corporel));
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
      inc:=new t_liste_incluse'(I,inc);      
      I.Nom:="SCHUMAN        ";
      I.Prenom:="Clara          ";
      I.Nj_Jour_Test:=5;
      I.Note:=14;
      inc:=new t_liste_incluse'(I,inc);      
      I.Nom:="ROMEO          ";
      I.Prenom:="Juliette       ";
      I.Nj_Jour_Test:=7;
      I.Note:=15;
      inc:=new t_liste_incluse'(I,inc);      
      I.Nom:="VALLADE        ";
      I.Prenom:="Martine        ";
      I.Nj_Jour_Test:=4;
      I.Note:=12;
      inc:=new t_liste_incluse'(I,inc);      
      I.Nom:="MOUTON         ";
      I.Prenom:="Aline          ";
      I.Nj_Jour_Test:=5;
      I.Note:=13;
      inc:=new t_liste_incluse'(I,inc);      
      E.P_Testeuse:=Inc;
      Etu:=new T_Liste_Etude'(E,Etu);
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



         
