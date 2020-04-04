with Gestion_Etude,Gestion_Secretaire,Gestion_Charge_Etude,Gestion_Testeuse,Connexion;
use Gestion_Etude,Gestion_Secretaire,Gestion_Charge_Etude,Gestion_Testeuse,Connexion;
package Gestion_Directeur is


   --------------------------------------------------
   ----- Declaration du type pour le directeur ------
   --------------------------------------------------

   type T_Directeur is
      record
         Id         : T_Personne;
         Nb_Etude_C : Integer    := 0;
      end record;

   type T_Liste_Directeur;
   type Pteur_Directeur is access T_Liste_Directeur;
   type T_Liste_Directeur is
      record
         Dir      : T_Directeur;
         Dir_Suiv : Pteur_Directeur;
      end record;

   --------------------------------------------------
   ----------------- PROCEDURES ---------------------
   --------------------------------------------------
   procedure Ajout_Secr (
         P_Secr : in out Pteur_Secretaire;
         S      : in     T_Secretaire);

   procedure Ajout_Charge (
         P_Charge : in out Pteur_Charge;
         Ce       : in     T_Charge_Etude);

   procedure Enr_Nvl_Emp (
         P_Secr   : in out Pteur_Secretaire;
         P_Charge : in out Pteur_Charge;
         P_Dir    : in out Pteur_Directeur;
         Erreur   :    out Boolean);

   procedure Vis_Liste_Dir (
         Tete_D : in     Pteur_Directeur);

   procedure Vis_Liste_Secr (
         Tete_S : in     Pteur_Secretaire);

   procedure Vis_Liste_Charge (
         Tete_C : in     Pteur_Charge);

   procedure Visualiser_Liste_Emp (
         Tete_S : in     Pteur_Secretaire;
         Tete_C : in     Pteur_Charge;
         Tete_D : in     Pteur_Directeur);

   procedure Visualiser_Secre_Spe (
         Tete_S : in     Pteur_Secretaire;
         Nom,
         Prenom : in     T_Mot);

   procedure Visualiser_Charge_Spe (
         Tete_C  : in     Pteur_Charge;
         P_Etude : in     Pteur_Etude;
         Nom,
         Prenom  : in     T_Mot;
         F       : in out P_Fichier_Archive.File_Type);

   procedure Visualiser_Liste_Etude (
         Tete : in     Pteur_Etude);

   procedure Visualiser_Etude_Spe (
         Tete         : in     Pteur_Etude;
         Id_Recherche : in     Integer);

   procedure Supp_Secr (
         Tete   : in out Pteur_Secretaire;
         S      : in     T_Personne;
         Erreur :    out Boolean);

   procedure Supp_Charge (
         Tete      : in out Pteur_Charge;
         P_Etude   : in out Pteur_Etude;
         Ce        : in     T_Personne;
         Erreur    :    out Boolean;
         F         : in out P_Fichier_Archive.File_Type;
         Recup_Tab :    out Tab_Etude);

   procedure Reattribution (
         Id_Et    : in     Integer;
         P_Etude  : in out Pteur_Etude;
         P_Charge : in out Pteur_Charge;
         F        : in out P_Fichier_Archive.File_Type);

   procedure Supp_Testeuse (
         Tete   : in out Pteur_Testeuse;
         Tstse  : in     T_Personne;
         Erreur :    out Boolean);

   procedure Dprt_Emp (
         P_Secr     : in out Pteur_Secretaire;
         P_Charge   : in out Pteur_Charge;
         P_Testeuse : in out Pteur_Testeuse;
         P_Etude    : in out Pteur_Etude;
         Fait       :    out Boolean;
         F          : in out P_Fichier_Archive.File_Type);

   procedure Creation_Etude (
         Tete_Etude   : in out Pteur_Etude;
         Etude        : in out T_Etude;
         P_Charge     : in out Pteur_Charge;
         Nb_Etude_Cro : in out Integer);

   procedure Aj_User (
         Direc :    out Pteur_Directeur;
         Chg   :    out Pteur_Charge;
         Scrt  :    out Pteur_Secretaire;
         Test  :    out Pteur_Testeuse;
         Etu   :    out Pteur_Etude;
         Inc   :    out Pteur_Incluse);

   procedure Connexion_Log (
         Cat            : in     Integer;
         P_Dir          : in     Pteur_Directeur;
         P_Secr         : in     Pteur_Secretaire;
         P_Charge       : in     Pteur_Charge;
         P_Test         : in     Pteur_Testeuse;
         Connecte       : in out Boolean;
         Info_Connexion :    out T_Personne);

end Gestion_Directeur;
