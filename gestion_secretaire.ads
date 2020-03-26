with Gestion_Etude,Gestion_Testeuse,Connexion;
use Gestion_Etude,Gestion_Testeuse,Connexion;
package Gestion_Secretaire is
   
   --------------------------------------------------
   -- Déclaration des types pour la Liste de
   -- secrétaires
   --------------------------------------------------
   
   type T_Secretaire is record
         Id    : T_Personne;
   end record;
   
   type T_Liste_Secretaire;
   type Pteur_Secretaire is access T_Liste_Secretaire;
   type T_Liste_Secretaire is record
      Secr : T_Secretaire;
      Secre_Suiv : Pteur_Secretaire;
   end record;
   

   --------------------------------------------------
   -- Procédures
   --------------------------------------------------
procedure Ajout_Testeuse(P_Testeuse : in out Pteur_Testeuse; T : in T_Testeuse);
procedure Inscrip_Testeuse (P_Testeuse : in   out  Pteur_Testeuse);
procedure Vis_Liste_Testeuse (
   P_Testeuse : in     Pteur_Testeuse);
procedure Vis_Testeuse_Spe (
   P_Testeuse : in     Pteur_Testeuse; N,P : in T_Mot);
procedure Desinscrip_Testeuse (P_Testeuse : in out Pteur_Testeuse;N,P : in T_Mot; Fait : out Boolean);
procedure Archive_Etude (P_Etude : in out Pteur_Etude; F: in out P_Fichier_Archive.File_Type);
procedure Vis_Etude_Clot (P_Etude : In Pteur_Etude);
         

end Gestion_Secretaire;
