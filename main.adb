with Gestion_Etude,Gestion_Secretaire,Gestion_Charge_Etude,Gestion_Testeuse,Gestion_Directeur,Connexion;
use Gestion_Etude,Gestion_Secretaire,Gestion_Charge_Etude,Gestion_Testeuse,Gestion_Directeur,Connexion;
procedure Main is
   Tete_Etude:Pteur_Etude;
   Etude:T_Etude;
   P_Charge:Pteur_Charge;
   D:Pteur_Directeur;
   I:Pteur_Incluse;
   Scr:Pteur_Secretaire;
   T:Pteur_Testeuse;  
   
begin
   Aj_User (D, P_Charge, Scr, T, Tete_Etude, I);
end Main;

   

