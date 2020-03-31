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
 procedure Modification_Etude_Retour (P_Test:in out Pteur_Testeuse);
 procedure Ajout_Etude_Testeuse (Teste: in out Pteur_Testeuse; P_Etude:Pteur_Etude; N,P:T_Mot);
 procedure Ajout_Debut_Etu_Test (T:in out Pteur_Testeuse; E:in out Pteur_Etude);
end Gestion_Testeuse;
