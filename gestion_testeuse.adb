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
      
      procedure Modification_Etude_Retour (P_Test:in out Pteur_Testeuse) is 
         P_Incl:Pteur_Incluse;
         P_Etu:Pteur_Etude;
         pb:integer;
      begin
         P_Test:= Verif_Saisie_Testeuse(P_Test,P_Test.test.Id.Nom,P_Test.test.Id.Prenom);
         if P_Test/=null and then P_Test.Test.Etude/=null then 
            P_Etu:=P_Test.Test.Etude;
            if P_Etu.Etu.Statut=En_Cours then
               P_Incl:=p_etu.etu.p_testeuse;
               while P_Incl/=null loop
                  if p_incl.incl.nom=P_test.test.Id.Nom and then p_incl.incl.prenom=P_test.test.Id.Prenom then
                     Put("attribuer une note au produit :");
                     Get(P_Incl.Incl.Note);Skip_Line;
                     Put("combien de jours l'avez vous teste ?");
                     Get(P_Incl.Incl.Nj_Jour_Test);Skip_Line;
                     Put("avez vous des effets indesirables ?(1=oui, 0=non)");
                     loop
                        Get(Pb);Skip_Line;
                        if Pb=1 then
                           P_Incl.Incl.Pb:=True;
                           exit;
                        elsif Pb=0 then
                           P_Incl.Incl.Pb:=False;
                           exit;
                        else 
                           put("vous avez mal saisie, repondez par 1 ou 0");
                        end if;
                     end loop;
                  end if;
                  P_Incl:=P_Incl.Incl_Suiv;
               end loop;
            end if;
         end if;
      end Modification_Etude_Retour;   
   end Gestion_Testeuse;