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
   Choix, cat, k:Integer;
   
begin
   Aj_User (D, C, S, T, Tete_Etude, I);
   -----------------------------------------------------------
   --                       CONNEXION                       --
   -----------------------------------------------------------
   Put("      --BIENVENUE--");New_Line;
   Put("   --Veuillez vous connecter--"); New_Line;
   Put("saisir votre categorie :");New_Line;
   Put("1. Directeur");New_Line;
   Put_Line("2. Secretaire");
   Put_Line("3. Charge d'etude");
   put_line("4. Testeuse");
   Get(Cat);Skip_Line;
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
   
      when 3 => Clear_Screen (Black);
         C:=Trouve_Charge(C,P);
         --C.charge.etude_en_charge(1):=tete_etude;
         Put(Tete_Etude.Etu.Nom_Charge);
         Put(Tete_Etude.Etu.Prenom_Charge);
         Put(Tete_Etude.Etu.Id);
         put(c.charge.id.prenom);
         --Ajout_Etude_Charge (C, tete_etude, tete_etude.etu.nom_charge, tete_Etude.etu.prenom_charge);
   put_line("-----------------------------------------------------------");
   put_line("--                  MENU CHARGE D'ETUDE                  --");
   put_line("-----------------------------------------------------------");
   put_line("1. Inclure une testeuse dans une etude");
   put_line("2. Visualiser la liste des testeuses");
         Put_Line("3. Modifier le statut d'une etude");
         Affiche_liste_Etude (C);
   put_line("Faites votre choix");
   Get(Choix);Skip_Line;
   case Choix is
      when 1 => 
         Ajout_Testeuse (C,T);
      when others => put("nul");
   end case;
   

      when 4 => Clear_Screen (Black);
   -----------------------------------------------------------
   --                     MENU TESTEUSE                     --
   -----------------------------------------------------------

      when others => Clear_Screen (Black);
   end case;
end Main;

   

