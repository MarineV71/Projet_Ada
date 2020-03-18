with Ada.Text_Io,Ada.Integer_Text_Io;
use Ada.Text_Io,Ada.Integer_Text_Io;
package body Gestion_Directeur is 
   
   
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
         P_Charge:= new T_Liste_Charge'(CE, null);
      else
         P_Charge := new T_Liste_Charge'(CE, P_charge);
      end if;         
   end Ajout_Charge;


   procedure Enr_Nvl_Emp (P_Secr : IN OUT Pteur_Secretaire;P_Charge: IN OUT Pteur_Charge;erreur: out boolean) is 
      Choix:Integer;
      Emp: T_Personne;
      k:integer;
      Secr:T_Secretaire;
      charge_Et:T_charge_etude;
   begin
   --Faire une saisie sécurisée !!!
      Put("Enregistrement d'un nouvel employé");New_Line;
      --Saisie des informations du nouvel employe
      Put("Veuillez saisir les informations suivantes");New_Line;
      Put("Nom =>");Get_Line(Emp.Nom,K);
      Put("Prenom =>");Get_Line(Emp.Prenom,K);
--      Emp.Login :=Emp.Nom  -> concaténation ? Ada.Stings.unbounded ?
      Put("Mot de passe (10 caratères maximum =>");Get_Line(Emp.Mdp,K);
      --Crypatage du mot de passe + Attention aux caractères possibles
      --Tirage aléatoire de N dans le cryptage
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
            Put("Choix invalide, veuillez saisir à nouveau votre choix");
            new_line;
         end case;
      end loop;
   end Enr_Nvl_Emp;
   
   
   --Function Recherche (P

   --procedure Depart_Emp (Nom_Sup,Prenom_Sup : IN T_Mot; Fait : Out boolean) is
   --begin
      
   --end Depart_Emp;
   
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
   

--   procedure Creation_Etude () is 
--   begin    
--   end Création_Etude;
   
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



         
