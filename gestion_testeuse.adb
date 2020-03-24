with Ada.Text_Io,Ada.Integer_Text_Io;
use Ada.Text_Io,Ada.Integer_Text_Io;
package body Gestion_Testeuse is 
   function Verif_Saisie_Testeuse (Tete_testeuse: Pteur_testeuse; N,P:T_Mot) return pteur_testeuse is 
      begin
      if Tete_testeuse= null then return (null);
      elsif N=Tete_testeuse.test.Id.Nom and then P=Tete_testeuse.test.Id.Prenom then
            return(tete_testeuse);
         else
            return(verif_Saisie_testeuse(Tete_testeuse.test_Suiv, N, P));
         end if;
      end Verif_Saisie_Testeuse;
      
      function Verif_Testeuse_Etude (tete_etu:pteur_etude; Tete_Test: Pteur_Testeuse) return pteur_testeuse is
      begin
         if tete_test/=null then
            if Tete_test=null then return(null);
            elsif Tete_Test.Test.Age>=Tete_Etu.Etu.produit.Age_Min and Tete_Test.Test.Age<=Tete_Etu.Etu.produit.Age_Max then
               if Tete_Test.Test.Etude=null then 
                  return(tete_test);
               else Return(null);
               end if;
            else return(null);
            end if;
         else return (null);
         end if;
      end Verif_Testeuse_Etude; 
         end Gestion_Testeuse;
   
