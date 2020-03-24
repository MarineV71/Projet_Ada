with Ada.Text_Io,Ada.Integer_Text_Io;
use Ada.Text_Io,Ada.Integer_Text_Io;
package body Gestion_Etude is 
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
   end Nv_incluse;
end Gestion_Etude;

