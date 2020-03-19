with Ada.Text_Io,Ada.Integer_Text_Io;
use Ada.Text_Io,Ada.Integer_Text_Io;
package body Gestion_Directeur is 
   
   procedure Saisie_Personne(Emp:out T_Personne) is
      K:Integer;
   begin
       Put("Veuillez saisir les informations suivantes");New_Line;
      Put("Nom =>");Get_Line(Emp.Nom,K);
      Put("Prenom =>");Get_Line(Emp.Prenom,K);
--      Emp.Login :=Emp.Nom  -> concaténation ? Ada.Stings.unbounded ?
      Put("Mot de passe (10 caratères maximum =>");Get_Line(Emp.Mdp,K);
      --Crypatage du mot de passe + Attention aux caractères possibles
      --Tirage aléatoire de N dans le cryptage
   end Saisie_Personne;
   
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
               Get_Line(N,Kn); --saisie s�curis�e si le charge n'existe pas ou si son nombre d'etude est plein
               Put("saisir le prenom du charge d'etude :");
               Get_Line(P,Kn); 
               Ok:= Verif_Saisie_Charge(P_Charge,N,P); --JE NE SAIS PAS S'IL FAUT AUSSI METTRE KN ET KP
               if Ok then 
                  cpt:=Cpt_Etude_Charge(P_Charge,N,P); --IDEM
                  if Cpt<3 then 
                     Etude.Nom_Charge:=N(1..Kn);
                     Etude.Prenom_Charge:=P(1..Kp);                     
                     Nv_Etude(Etude,Tete_Etude);
                     Ajout_Etude_Charge (P_Charge, tete_Etude, N,P);
                  end if;                  
               end if;
            end loop;
                  
         when 2 =>
            --procedure attribution automatique 
            put("ok");
         when others=> 
            Put("erreur de saisie");
      end case;
      
      
   end Creation_Etude;

   procedure Enr_Nvl_Emp (P_Secr : IN OUT Pteur_Secretaire;P_Charge: IN OUT Pteur_Charge;erreur: out boolean) is 
      Choix:Integer;
      Emp: T_Personne;
      Secr:T_Secretaire;
      charge_Et:T_charge_etude;
   begin
   --Faire une saisie sécurisée !!!
      Put("Enregistrement d'un nouvel employé");New_Line;
      Saisie_Personne(Emp);
      loop
      Put("Vous enregistrez un(e) secretaire (1) ou un(e) charge d'etude (2)");New_Line;   
      Put("Faite votre choix : 1 ou 2");
      Get(Choix);Skip_Line;
      case Choix is 
         when 1 =>
            Secr.id:=Emp;   
            Ajout_Secr(P_Secr, Secr);
         when 2 => 
            Charge_Et.Id:=Emp;
            Ajout_Charge(P_Charge, charge_Et);
         when others =>
            Put("Choix invalide, veuillez saisir �  nouveau votre choix");
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
                 --appel de la procedure d'attribution des �tudes aux charges etudes
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
            Put("Choix invalide, veuillez saisir �  nouveau votre choix");
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
         Put("Produit testé =>");
         Put(Tete.Etu.Produit.Nom_P);
         New_Line;
         Put("Catégorie =>");
         Put(T_Categorie'image(Tete.Etu.Produit.Cat));
         New_Line;
         Visualiser_Liste_Etude(Tete.Etu_Suiv);
      end if;
   end Visualiser_Liste_Etude;
   
   procedure Visualiser_Etude_spe (Tete: in Pteur_Etude;Id_recherche: in Integer) is
   begin
      if Tete/=null then
         if Tete.Etu.Id=Id_Recherche then 
            Put("Le Produit testé lors de cette étude est =>");
            Put(Tete.Etu.Produit.Nom_P);
            New_Line;
            Put(Tete.Etu.Nb_Testeuse);
            Put("testeuses ont ete incluses");
            New_Line;
            Put("La personne en charge de cette etude est/était");
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
               Put("Ce produit présente un risque");
            else
               Put("Ce produit ne présente pas de risque");
            end if;
            New_Line;
         end if;
      end if;    
   end Visualiser_Etude_Spe;
      
end Gestion_Directeur;



         
