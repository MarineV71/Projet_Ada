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
   

end Gestion_Secretaire;
