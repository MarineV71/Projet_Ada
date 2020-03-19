with Gestion_Etude,Gestion_Secretaire,Gestion_Charge_Etude,Gestion_Testeuse,Gestion_Directeur,Connexion;
use Gestion_Etude,Gestion_Secretaire,Gestion_Charge_Etude,Gestion_Testeuse,Gestion_Directeur,Connexion;
procedure Main is
   Tete_Etude:Pteur_Etude;
   Etude:T_Etude;
   P_Charge:Pteur_Charge;
   
begin
   Creation_Etude (Tete_Etude, Etude, P_Charge);
end Main;

   

