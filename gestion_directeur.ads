with Gestion_Etude,Gestion_Secretaire,Gestion_Charge_Etude,Gestion_Testeuse,Connexion;
use Gestion_Etude,Gestion_Secretaire,Gestion_Charge_Etude,Gestion_Testeuse,Connexion;
package Gestion_Directeur is
  

   --------------------------------------------------
   -- Déclaration du type pour le directeur
   --------------------------------------------------

   type T_Directeur is record
         Id         : T_Personne;
         Nb_Etude_C : Integer    := 0;
      end record;

   type T_Liste_Directeur;
   type Pteur_Directeur is access T_Liste_Directeur;
   type T_Liste_Directeur is record 
      Dir : T_Directeur;
      Dir_Suiv : Pteur_Directeur;
   end record;

   --------------------------------------------------
   -- Procédures
   --------------------------------------------------
   procedure Saisie_Personne(Emp:out T_Personne);
   procedure Ajout_Secr (P_Secr: in out Pteur_Secretaire;S: IN T_Secretaire);
   procedure Ajout_Charge (P_Charge: in out Pteur_Charge;Ce: in T_Charge_Etude);
   procedure Enr_Nvl_Emp (P_Secr : IN OUT Pteur_Secretaire;P_Charge: IN OUT Pteur_Charge;erreur: out boolean);
   procedure Visualiser_Liste_Emp (Tete_S: In Pteur_Secretaire;Tete_C:In Pteur_Charge );
   procedure Visualiser_Secre_Spe (Tete_S: In Pteur_Secretaire;Nom,Prenom: In T_Mot);
   procedure Visualiser_Charge_Spe (Tete_C: in Pteur_Charge;Nom,Prenom: in T_Mot);
   procedure Visualiser_Liste_Etude (Tete: in Pteur_Etude);
   procedure Visualiser_Etude_spe (Tete: in Pteur_Etude;Id_recherche: in Integer);
   procedure supp_secr (tete: in out Pteur_Secretaire; S: IN T_personne; erreur : out boolean);
   procedure supp_charge (tete: in out Pteur_Charge; CE: IN T_personne; erreur : out boolean); --mettre recup
   procedure supp_testeuse (tete: in out Pteur_Testeuse ; tstse: IN T_personne; erreur : out boolean);
   procedure Dprt_Emp (P_Secr : IN OUT Pteur_Secretaire;P_Charge: IN OUT Pteur_Charge; P_Testeuse : in out Pteur_Testeuse; Fait : out Boolean);


end Gestion_Directeur;
