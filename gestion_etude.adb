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
end Gestion_Etude;

