with Ada.Text_Io,Ada.Integer_Text_Io;
use Ada.Text_Io,Ada.Integer_Text_Io;
package body Gestion_Charge_Etude is 
   function Verif_Saisie_Charge (Tete_Charge: Pteur_Charge; N,P:T_Mot) return Boolean is 
      begin
      if Tete_Charge= null then return(False);
      elsif N=Tete_Charge.charge.Id.Nom and then P=Tete_Charge.charge.Id.Prenom then
            return(True);
         else
            return(verif_Saisie_charge(Tete_Charge.charge_Suiv, N, P));
         end if;
      end verif_Saisie_charge;
    
      function Cpt_Etude_Charge (Tete_Charge: Pteur_Charge; N,P:T_Mot) return Integer is
      begin
         if Tete_Charge= null then return(0);
         elsif N=Tete_Charge.Charge.Id.Nom and then P=Tete_Charge.Charge.Id.Prenom then
            return(Tete_Charge.Charge.Nb_Etude_En_Charge);
         else
            return(Cpt_Etude_Charge(Tete_Charge.charge_Suiv, N, P));
         end if;
      end Cpt_Etude_Charge;
      

      procedure Ajout_Etude_Charge (Tete_Charge: in out Pteur_Charge; P_Etude:Pteur_Etude; N,P:T_Mot) is
      T:tab_etude:=Tete_Charge.Charge.Etude_En_Charge;
      begin
         if Tete_Charge/= null then
            if N=Tete_Charge.Charge.Id.Nom and then P=Tete_Charge.Charge.Id.Prenom then
                  for I in T'range loop
                     if T(I).etu.Id=0 then
                        T(I):=P_Etude;     
                     end if;
                  end loop;
            else 
               Ajout_Etude_Charge(Tete_Charge.Charge_Suiv, P_Etude,N,P);
            end if;
         end if;
         end Ajout_Etude_Charge;
         
end Gestion_Charge_Etude;

