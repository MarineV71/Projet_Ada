with Ada.Text_Io,Ada.Integer_Text_Io;
use Ada.Text_Io,Ada.Integer_Text_Io;
package body Gestion_Etude is 
   
   procedure Saisie_Personne(Emp:out T_Personne) is
      K:Integer;
   begin
       Put("Veuillez saisir les informations suivantes");New_Line;
      Put("Nom =>");Get_Line(Emp.Nom,K);
      Put("Prenom =>");Get_Line(Emp.Prenom,K);
--      Emp.Login :=Emp.Nom  -> concatÃ©nation ? Ada.Stings.unbounded ?
      Put("Mot de passe (10 caratÃ¨res maximum =>");Get_Line(Emp.Mdp,K);
      --Crypatage du mot de passe + Attention aux caractÃ¨res possibles
      --Tirage alÃ©atoire de N dans le cryptage
   end Saisie_Personne;
   

   procedure Nv_Etude (Etude: in out T_Etude; P_Etude:in out Pteur_Etude) is
   begin
      if P_Etude = null then 
         P_Etude:=new T_Liste_Etude'(Etude,null);
      else 
         P_Etude:=new T_Liste_Etude'(Etude,P_Etude);
      end if;
   end Nv_Etude;
   
procedure Nv_incluse (incluse: in out T_personne_incluse; P_inclu:in out Pteur_incluse) is
   begin
      if P_inclu= null then 
         P_inclu:=new T_Liste_incluse'(incluse,null);
      else 
         P_inclu:=new T_Liste_incluse'(incluse,P_inclu);
      end if;
   end Nv_Incluse;
   
   procedure Nv_Etude_Cloturee(P_Etude_Clo:in out Pteur_Etude) is 
      P_Incl:Pteur_Incluse:=P_Etude_Clo.Etu.P_Testeuse;
      Moy,Cpt:Integer:=0;
   begin 
      if P_Etude_clo.Etu.Statut=Cloturee then
         while P_Incl/=null loop
            if P_Incl.incl.Nj_Jour_Test>=4 then
               Moy:=Moy+P_Incl.Incl.Note;
               Cpt:=Cpt+1;
            end if;
            if P_Etude_Clo.Etu.risque=False and then P_Incl.Incl.Pb=True then
               P_Etude_Clo.Etu.risque:=True;
            end if;
            P_Incl:=P_Incl.Incl_Suiv;
         end loop;
         P_Etude_Clo.Etu.Note_Moy:=Moy/Cpt;
      end if;
   end Nv_Etude_Cloturee;
   
end Gestion_Etude;

