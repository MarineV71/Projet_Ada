with Gestion_Etude,Connexion; 
use Gestion_Etude, Connexion; 
package Gestion_Testeuse is

   --------------------------------------------------
   -- Déclaration des types pour la Liste de testeuses
   --------------------------------------------------
   type T_Testeuse is record
         Id         : T_Personne;
         Age : integer:= 0;
         Etude : Pteur_etude := null; --type Pteur_etude de Gestion_Etude 
         Nb_Etude : Integer    := 0;
   end record;
   
   type T_Liste_Testeuse;
   type Pteur_Testeuse is access T_Liste_Testeuse;
   type T_Liste_Testeuse is record 
      test: T_Testeuse;
      test_Suiv : Pteur_Testeuse;
   end record;
function Verif_Saisie_Testeuse (Tete_testeuse: Pteur_testeuse; N,P:T_Mot) return pteur_testeuse;
 function Verif_Testeuse_Etude (tete_etu:pteur_etude; Tete_Test: Pteur_Testeuse) return pteur_testeuse;

end Gestion_Testeuse;
