with Ada.Text_Io,Ada.Integer_Text_Io,Ada.Characters.Handling;
use Ada.Text_Io,Ada.Integer_Text_Io,Ada.Characters.Handling;
package body Gestion_Etude is

   procedure Saisie_Personne (
         Emp :    out T_Personne) is
      K_nom,K_prenom : Integer; 
   begin

      Put("Veuillez saisir les informations suivantes");
      New_Line;
      Put("Nom =>");
      Get_Line(Emp.Nom,K_nom);
      Put("Prenom =>");
      Get_Line(Emp.Prenom,K_Prenom);
      Put(Emp.Nom);New_Line;
      Put(Emp.Prenom);Put("ok");

      --Formation du login pour la connexion
      -- prenom.nom
      Emp.Login(1..K_Prenom):=To_Lower(Emp.Prenom(1..K_Prenom));
      Emp.Login(K_Prenom+1):='.';
      Emp.Login(K_Prenom+2..K_prenom+1+K_nom):=to_lower(Emp.Nom(1..K_Nom));


   end Saisie_Personne;


   procedure Nv_Etude (
         Etude   : in out T_Etude;
         P_Etude : in out Pteur_Etude) is
   begin
      if P_Etude = null then
         P_Etude:=new T_Liste_Etude'(Etude,null);
      else
         P_Etude:=new T_Liste_Etude'(Etude,P_Etude);
      end if;
   end Nv_Etude;

   procedure Nv_Incluse (
         Incluse : in out T_Personne_Incluse;
         P_Inclu : in out Pteur_Incluse) is
   begin
      if P_Inclu= null then
         P_Inclu:=new T_Liste_Incluse'(Incluse,null);
      else
         P_Inclu:=new T_Liste_Incluse'(Incluse,P_Inclu);
      end if;
   end Nv_Incluse;

   procedure Nv_Etude_Cloturee (
         P_Etude_Clo : in out Pteur_Etude) is
      P_Incl : Pteur_Incluse := P_Etude_Clo.Etu.P_Testeuse;
      Moy,
      Cpt    : Integer       := 0;
   begin
      if P_Etude_Clo.Etu.Statut=Cloturee then
         while P_Incl/=null loop
            if P_Incl.Incl.Nj_Jour_Test>=4 then
               Moy:=Moy+P_Incl.Incl.Note;
               Cpt:=Cpt+1;
            end if;
            if P_Etude_Clo.Etu.Risque=False and then P_Incl.Incl.Pb=True then
               P_Etude_Clo.Etu.Risque:=True;
            end if;
            P_Incl:=P_Incl.Incl_Suiv;
         end loop;
         P_Etude_Clo.Etu.Note_Moy:=Moy/Cpt;
      end if;
   end Nv_Etude_Cloturee;

end Gestion_Etude;

