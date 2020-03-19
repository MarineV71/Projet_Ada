with Gestion_Etude, Gestion_Testeuse,Connexion;
use Gestion_Etude, Gestion_Testeuse, Connexion;
package Gestion_Charge_Etude is

   --------------------------------------------------
   -- Déclaration des types pour la Liste de 
   -- de chargés d'études
   --------------------------------------------------
   
   type Tab_Etude is array (Integer range 1..3) of T_Etude;
   type T_Charge_Etude is record
         Id         : T_Personne;
         Nb_Etude_En_Charge : Integer    := 0;
         Etude_En_Charge: Tab_Etude; 
         Nb_Etude_T : integer :=0;
   end record;
   
   
   type T_Liste_Charge;
   type Pteur_Charge is access T_Liste_Charge;
   type T_Liste_Charge is record 
      charge: T_Charge_Etude;
      charge_suiv : Pteur_Charge;
   end record;
   --------------------------------------------------
   -- Procedure charges d'etudes
   --------------------------------------------------
   
   function verif_Saisie_charge(Tete_Charge: Pteur_Charge; N,P:T_Mot)return boolean;

end Gestion_Charge_Etude;

