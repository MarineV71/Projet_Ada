with Ada.Text_Io,Ada.Integer_Text_Io;
use Ada.Text_Io,Ada.Integer_Text_Io;
package body Gestion_Charge_Etude is 
   function verif_Saisie_charge (Tete_Charge: Pteur_Charge; N,P:T_Mot) return Boolean is 
      begin
      if Tete_Charge= null then return(False);
      elsif N=Tete_Charge.charge.Id.Nom then
         if P=Tete_Charge.charge.Id.Prenom then
            return(True);
         else
            return(verif_Saisie_charge(Tete_Charge.charge_Suiv, N, P));
         end if;
      else 
         return(verif_Saisie_charge(Tete_Charge.charge_Suiv,N,P));
         end if;
      end verif_Saisie_charge;
      
end Gestion_Charge_Etude;

