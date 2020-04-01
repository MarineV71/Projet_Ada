with nt_console, ada.Text_IO,ada.Integer_Text_IO,Gestion_Etude,Gestion_Secretaire,Gestion_Charge_Etude,Gestion_Testeuse,Gestion_Directeur,Connexion;
use nt_console, ada.Text_IO,ada.Integer_Text_IO,Gestion_Etude,Gestion_Secretaire,Gestion_Charge_Etude,Gestion_Testeuse,Gestion_Directeur,Connexion;
procedure Main is
   Tete_Etude:Pteur_Etude;
   C:Pteur_Charge;
   D:Pteur_Directeur;
   I:Pteur_Incluse;
   S:Pteur_Secretaire;
   T:Pteur_Testeuse;
   P:t_personne;  
   Choix, cat, id:Integer;
 
begin
   Aj_User (D, C, S, T, Tete_Etude, I);loop
   -----------------------------------------------------------
   --                       CONNEXION                       --
   -----------------------------------------------------------
   Put("      --BIENVENUE--");New_Line;
   Put("   --Veuillez vous connecter--"); New_Line;
   
   Put("1. Directeur");New_Line;
   Put_Line("2. Secretaire");
   Put_Line("3. Charge d'etude");
   put_line("4. Testeuse");
   Put("saisir votre categorie :");New_Line;
   loop  --securise la saisie
      begin
         Get(Cat);Skip_Line;
         if Cat in 1..4 then exit;
         end if;
   exception
            when Data_Error =>
              Skip_Line;
                  Put_Line("erreur de saisie");
            end; 
         end loop;
   Put("saisir votre login :");
   Get(P.Login);Skip_Line;
   --loop
   Put("saisir votre mot de passe :");
   Get(P.Mdp);Skip_Line;
   --verif_mdp
   --end loop
   case Cat is
      when 1 => Clear_Screen (Black);
   -----------------------------------------------------------
   --                    MENU DIRECTEUR                     --
   -----------------------------------------------------------
      
      when 2 => Clear_Screen (Black);
   -----------------------------------------------------------
   --                    MENU SECRETAIRE                    --
   -----------------------------------------------------------
   
      when 3 => 
         Clear_Screen (Black);
          C:=Trouve_Charge(C,P); loop
   put_line("-----------------------------------------------------------");
   put_line("--                  MENU CHARGE D'ETUDE                  --");
   put_line("-----------------------------------------------------------");
   put_line("1. Inclure une testeuse dans une etude");
   put_line("2. Visualiser la liste des testeuses");
   Put_Line("3. Modifier le statut d'une etude");
   Put_Line("4. Pour quitter sa session");
         
   put_line("Faites votre choix");
            loop 
               begin
                  Get(Choix);Skip_Line;
                  if Choix in 1..4 then exit;
                  end if;
               exception
                  when Data_Error =>
                     Skip_Line;
                     Put_Line("erreur de saisie");
               end; 
            end loop;

         case Choix is
            when 1 => 
               Ajout_Testeuse (C,T);
            when 2 => Affiche_Liste_Etude (C);
               Put("visualiser les details d'une etude :");
                  loop 
                     begin
                        Get(Id);Skip_Line;exit;
                     exception
                        when Data_Error =>
                           Skip_Line;
                           Put_Line("erreur de saisie");
                     end; 
                  end loop;

                  Affiche_Detail_Etude (C, Id);
               when 3 =>
                  modif_statut(C);
            when others => Put("sortir"); exit;
         end case;
   end loop;

      when 4 => Clear_Screen (Black);
      T:=trouve_testeuse(T,P); loop
   -----------------------------------------------------------
   --                     MENU TESTEUSE                     --
   -----------------------------------------------------------
   put_line("1. Modifier les retours de sur le produit");
   put_line("2. Quitter");
   Put("participe a l'etude : "); Put(T.Test.Etude.Etu.Id);    
   put_line("Faites votre choix");
            loop 
               begin
                  Get(Choix);Skip_Line;
                  if Choix in 1..2 then exit;
                  end if;
               exception
                  when Data_Error =>
                     Skip_Line;
                     Put_Line("erreur de saisie");
               end; 
            end loop;
         case Choix is
               when 1 => Put("modifier l'etude"); --procedure 
               when others => exit;
            end case;
         end loop;
      when others => Clear_Screen (Black);exit;
      end case;
   end loop;
end Main;

   

