with Gestion_Etude,Gestion_Testeuse,Connexion;
use Gestion_Etude,Gestion_Testeuse, Connexion;
package Gestion_Charge_Etude is

   --------------------------------------------------
   -- Déclaration des types pour la Liste de 
   -- de chargés d'études
   --------------------------------------------------
   
   type Tab_Etude is array (Integer range 1..3) of Pteur_Etude;
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
      function trouve_Charge (Tete_C: Pteur_Charge;personne: T_Personne)return pteur_charge;   

   function Verif_Saisie_Charge(Tete_Charge: Pteur_Charge; N,P:T_Mot)return Boolean;
   function Cpt_Etude_Charge (Tete_Charge: Pteur_Charge; N,P:T_Mot) return Integer ;
   procedure Ajout_Etude_Charge (Tete_Charge: in out Pteur_Charge; P_Etude:Pteur_Etude; N,P:T_Mot);
   procedure repartition_etude_charge (Etude:in out T_Etude; Tete_Charge: in out Pteur_Charge; P_Etude: in out Pteur_Etude);
   procedure Affiche_Liste_Etude (Tete_Charge: Pteur_Charge);
   procedure Affiche_Detail_Etude (Tete_Charge: Pteur_Charge; id_etu: integer);
   procedure Affiche_Testeuse_Incluse(Tete_Inclu: Pteur_Incluse);
   procedure Ajout_Testeuse (Tete_Charge: Pteur_Charge; tete_test: in out pteur_testeuse);
   procedure Modif_Statut(P_Charge:in out Pteur_Charge);

end Gestion_Charge_Etude;
