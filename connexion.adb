with Ada.Integer_Text_Io,Ada.Text_Io,Aleatoire,Ada.Characters.Handling;
use Ada.Integer_Text_Io,Ada.Text_Io,Aleatoire,Ada.Characters.Handling;

package body Connexion is 
   
   procedure Cryp_Mdp (P: OUT T_Personne) is 
      Cpt:Integer:=1;
      C: Character;
      N: Integer;
   begin
      Initialise(0,25);
      N:= Random;
      P.N:=N;
      Put("Veuillez saisir un mot de passe de 10 caractères");
      New_Line;
      loop
         Get(C);
         case C is
            --Utilisation des codes ASCII des caractères (valeurs numériques)
            when 'A'..'Z'=>
                  C:=To_Lower(C);
                  if Character'Pos(C)+ N > 122 then
                     P.Mdp(Cpt) := Character'Val(Character'Pos('a')+((Character'Pos(C)+N-122)-1));
                  else
                     P.Mdp(Cpt) := Character'Val(Character'Pos(C)+N);
                  end if;
                  Cpt:=Cpt+1;
            when 'a'..'z'=>
                  C:=To_Upper(C);
                  if Character'Pos(C) - N < 65 then
                     P.Mdp(Cpt) := Character'Val(Character'Pos('Z')-(N-(Character'Pos(C)-65+1)));
                  else
                     P.Mdp(Cpt) := Character'Val(Character'Pos(C)-N);
                  end if;
                  Cpt:= Cpt+1;
            when '0'..'9'=>
                  if (Character'Pos(C)+(N mod 10))>57 then
                     P.Mdp(Cpt) := Character'Val(Character'Pos('0')+((Character'Pos(C)+(N mod 10)-57)-1));
                  else
                     P.Mdp(Cpt) := Character'Val(Character'Pos(C)+(N mod 10));
                  end if;
                  Cpt:=Cpt+1;
            when '#'|'$'|'*'|'.'|'!'|'?'=>
               P.Mdp(Cpt) := C;
               Cpt:=Cpt+1;
            when others =>
               null;
         end case;
         exit when Cpt = 11;
      end loop;
      
               
   end Cryp_Mdp;
   
end Connexion;
   
