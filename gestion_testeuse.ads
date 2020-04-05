with Gestion_Etude,Connexion;
use Gestion_Etude, Connexion;
package Gestion_Testeuse is

   --------------------------------------------------
   -- Déclaration des types pour la Liste de testeuses
   --------------------------------------------------
   type T_Testeuse is
      record
         Id       : T_Personne;
         Age      : Integer     := 0;
         Etude    : Pteur_Etude := null; --type Pteur_etude de Gestion_Etude
         Nb_Etude : Integer     := 0;
      end record;

   type T_Liste_Testeuse;
   type Pteur_Testeuse is access T_Liste_Testeuse;
   type T_Liste_Testeuse is
      record
         Test      : T_Testeuse;
         Test_Suiv : Pteur_Testeuse;
      end record;
   function Trouve_Testeuse (
         Tete_T   : Pteur_Testeuse;
         Personne : T_Personne)
     return Pteur_Testeuse;
   function Verif_Saisie_Testeuse (
         Tete_Testeuse : Pteur_Testeuse;
         N,
         P             : T_Mot)
     return Boolean;
   function Verif_Testeuse_Etude (
         Tete_Etu  : Pteur_Etude;
         Tete_Test : Pteur_Testeuse)
     return Pteur_Testeuse;
   procedure Modification_Etude_Retour (
         P_Test : in out Pteur_Testeuse);
   procedure Ajout_Etude_Testeuse (
         Teste   : in out Pteur_Testeuse;
         P_Etude :        Pteur_Etude;
         N,
         P       :        T_Mot);
   procedure Ajout_Debut_Etu_Test (
         T  : in out Pteur_Testeuse;
         Et : in     Pteur_Etude);
end Gestion_Testeuse;
