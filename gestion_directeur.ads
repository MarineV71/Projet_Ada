with Gestion_Etude,Gestion_Secretaire,Gestion_Charge_Etude,Connexion;
use Gestion_Etude,Gestion_Secretaire,Gestion_Charge_Etude,Connexion;
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


end Gestion_Directeur;