with Nt_Console, Ada.Text_Io,Ada.Integer_Text_Io,Gestion_Etude,Gestion_Secretaire,Gestion_Charge_Etude,Gestion_Testeuse,Gestion_Directeur,Connexion;
use Nt_Console, Ada.Text_Io,Ada.Integer_Text_Io,Gestion_Etude,Gestion_Secretaire,Gestion_Charge_Etude,Gestion_Testeuse,Gestion_Directeur,Connexion;
procedure Main is
   Tete_Etude : Pteur_Etude;
   C, c_aux          : Pteur_Charge;
   D          : Pteur_Directeur;
   I          : Pteur_Incluse;
   S          : Pteur_Secretaire;
   T, t_aux          : Pteur_Testeuse;
   Info_Connexion : T_Personne;
   Choix,
   Cat,
   Id         : Integer;
   Connect,
   Fait,
   Erreur     : Boolean;
   Nom,
   Prenom     : T_Mot            := (others => ' ');

begin
   Aj_User (D, C, S, T, Tete_Etude, I);
   Visualiser_Liste_Emp (S,C,D);

loop
      Info_Connexion.login:=(others => ' ');
      Info_Connexion.mdp:=(others => ' ');
      -----------------------------------------------------------
      --                       CONNEXION                       --
      -----------------------------------------------------------
      Put("      --BIENVENUE--");
      New_Line;
      Put("   --Veuillez vous connecter--");
      New_Line;

      Put("1. Directeur");
      New_Line;
      Put_Line("2. Secretaire");
      Put_Line("3. Charge d'etude");
      Put_Line("4. Testeuse");
      Put("saisir votre categorie ou 5 pour sortir :");
      New_Line;
      Secure_Saisie(Cat,5);
      if Cat/=5 then
         Connexion_Log (Cat,D,S,C,T,Connect,Info_Connexion);
         Put(Info_Connexion.Login);
      else
         Put("Sortie");
         exit;
      end if;
      if Connect then
         case Cat is
            when 1 =>
               Clear_Screen (Black);
               loop
                  Put_Line("-----------------------------------------------------------");
                  Put_Line("--                    MENU DIRECTEUR                     --");
                  Put_Line("-----------------------------------------------------------");
                  Put_Line("1. Enregistrer un nouvel employe");
                  Put_Line("2. Enregistrer le depart d'un employe");
                  Put_Line("3. Visualiser la liste globale des employe");
                  Put_Line("4. Visualiser la fiche d'un employe");
                  Put_Line("5. Creer une nouvelle etude");
                  Put_Line("6. Visualiser la liste des etudes");
                  Put_Line("7. Visualiser le detail d'une etude");
                  Put_Line("8. Se deconnecter");
                  Put("Faite votre choix =>");
                  Secure_Saisie(Choix,8);
                  -- exit when Choix=8;

                  case Choix is

                     when 1 =>
                        Enr_Nvl_Emp (S,C,D,Erreur);
                        New_line;

                     when 2 =>
                        Dprt_Emp (S,C,T,Fait);
                        if Fait then
                           Put("Depart enregistre !");
                        else
                           Put("Le depart n'a pas ete enregistree !");
                        end if;
                        New_Line;

                     when 3 => --liste globale employe
                        Visualiser_Liste_Emp(S,C,D);

                     when 4 => --fiche employe
                        New_line;
                        Put("Vous souhaitez afficher les informations sur");
                        New_Line;
                        Put("(1) un(e) secretaire ou (2) un(e) charge d'etude");
                        New_Line;
                        Put("Votre choix => ");
                        Secure_Saisie(Choix,2);
                        Put("Vous recherchez un employe en particulier :");
                        New_line;
                        Put("Saisissez son nom => ");
                        Get_Line(Nom,K);
                        Put("Saisissez son prenom => ");
                        Get_Line(Prenom,K);
                        if Choix = 1 then
                           Visualiser_Secre_Spe (S,Nom,Prenom);
                        else
                           Visualiser_Charge_Spe (C,Tete_Etude,Nom,Prenom,F);
                        end if;
                        --remise a "zero" pour utilisation ulterieure
                        Nom := (others => ' ');
                        Prenom := (others => ' ');


                     when 5 => -- creation etude
                        Creation_Etude (Tete_Etude,Etude,C,Nb_Etude_Cro);
                        New_line;

                     when 6 => --Liste etude
                        Put("Liste des etude de la CRO => ");
                        New_Line;
                        New_Line;
                        Visualiser_Liste_Etude (Tete_Etude);
                        New_Line;

                     when 7 => --Etude spe
                        --ID recherche mais possibilite de le faire avec la nom du produit ?
                        Put("Saisir l'identifiant de l'etude que vous cherchez => ");
                        Secure_Saisie(Choix,999);
                        Visualiser_Etude_Spe (Tete_Etude,Choix);

                     when others => -- Deconnexion
                        Connect := False;
                        exit;
                  end case;

               end loop;--Fin de la boucle d'affichage du menu Directeur


            when 2 =>

               Clear_Screen (Black);
               loop
                  Put_Line("-----------------------------------------------------------");
                  Put_Line("--                   MENU SECRETAIRE                     --");
                  Put_Line("-----------------------------------------------------------");
                  Put_Line("1. Enregistrer une nouvelle testeuse ");
                  Put_Line("2. Visualiser les testeuses du vivier");
                  Put_Line("3. Desinscrire une testeuse");
                  Put_Line("4. Archiver une etude");
                  Put_Line("5. Visualiser les etudes cloturees");
                  Put_Line("6. Retrouver les etudes archivees pour une entreprise");
                  Put_Line("7. Afficher les meilleurs produits d'une categorie");
                  Put_Line("8. Se deconnecter");
                  Put("Faite votre choix =>");
                  Secure_Saisie(Choix,8);
                  -- exit when Choix=8;

                  case Choix is

                     when 1 =>
                        Inscrip_Testeuse(T,Fait);
                        if Fait then
                           Put("Inscription effectuee avec succes");
                        else
                           Put("L'inscription n'a pas pu etre effectuee");
                        end if;
                        New_Line;

                     when 2 =>
                        Put_Line("Vous souhaitez ...");
                        Put_Line("1. Visualiser la liste complete des testeuses");
                        Put_Line("2. Visualiser la fiche d'une testeuse");
                        Put("Votre choix");
                        Secure_Saisie(Choix,2);
                        if Choix = 1 then
                           Vis_Liste_Testeuse (T);
                        else
                           Put("Vous recherchez une testeuse en particulier :");
                           Put("Saisissez son nom => ");
                           Get_Line(Nom,K);
                           Put("Saisissez son prenom => ");
                           Get_Line(Prenom,K);
                           Vis_Testeuse_Spe (T,Nom,Prenom);
                        end if;
                        --Remise a 'zero' pour utilisation ulterieure
                        Nom := (others => ' ');
                        Prenom := (others => ' ');

                     when 3 => --desinscrire une testeuse
                        Put("Vous voulez desinscrire une testeuse en particulier :");
                        New_Line;
                        Put("Saisissez son nom => ");
                        Get_Line(Nom,K);
                        Put("Saisissez son prenom => ");
                        Get_Line(Prenom,K);
                        Desinscrip_Testeuse (T,Nom,Prenom,Fait);
                        if Fait then
                           Put("Desinscription effectuee avec succes");
                        else
                           Put("La desinscription n'a pas pu etre effectuee");
                        end if;
                        New_Line;

                     when 4 => --Archiver une etude
                        New_line;
                        Put("Archivage d'une etude => ");
                        Put("Quel est l'identifiant de l'etude a archiver ?");
                        Secure_Saisie(Id_Et,999);
                        Archive_Etude (Id_Et,Tete_Etude,F);
                        New_line;

                     when 5 => --Vis etude cloturee
                        New_line;
                        Vis_Etude_Clot(Tete_Etude);
                        new_line;

                     when 6 => --Etude Archivee pour une entreprise
                        New_Line;
                        Put("Veuillez saisir le nom de l'entreprise");
                        New_Line;
                        Get_Line(Ent,K);
                        New_Line;
                        Vis_Archive_Entreprise(F,Ent,Existe);
                        if Existe=False then
                           Put("Cette entreprise n'existe pas ou n'a pas d'etude archivee");
                        end if;
                        New_Line;
                        Ent := (others =>' ');

                     when 7 => --Aff les meilleurs produits
                        New_line;
                        Put("Cette fonction n'est pas disponible ...");
                        New_line;


                     when others => -- Deconnexion
                        Connect := False;
                        exit;

                  end case;

               end loop; --Fin de la boucle d'affichage du menu Secretaire


            when 3 =>
               c_aux:=c;
               Clear_Screen (Black);
               C_aux:=trouve_charge(C,Info_Connexion);               
               loop
                  Put_Line("-----------------------------------------------------------");
                  Put_Line("--                  MENU CHARGE D'ETUDE                  --");
                  Put_Line("-----------------------------------------------------------");
                  Put_Line("1. Inclure une testeuse dans une etude");
                  Put_Line("2. Visualiser la liste des etudes");
                  Put_Line("3. Modifier le statut d'une etude");
                  Put_Line("4. Pour quitter sa session");

                  Put_Line("Faites votre choix");
                  Secure_Saisie(Choix,4);

                  case Choix is

                     when 1 =>
                        Ajout_Testeuse(C_aux,T);

                     when 2 =>
                        Affiche_Liste_Etude (C_aux);
                        Put("Visualiser les details d'une etude :");
                        Secure_Saisie(Id,999);
                        Affiche_Detail_Etude (C_aux, Id);

                     when 3 =>
                        Modif_Statut(C_aux);

                     when others =>
                        Put("sortie");new_line;
                        exit;

                  end case;
               end loop; --Fin de la boucle d'affichage du menu Charge
                  enregistre_charge(c,c_aux);

            
            when others =>
               t_aux:=t;
               Clear_Screen (Black);
               T_aux:=trouve_testeuse(T_aux,Info_Connexion);
               loop
                  Put_Line("-----------------------------------------------------------");
                  Put_Line("--                     MENU TESTEUSE                     --");
                  Put_Line("-----------------------------------------------------------");
                  Put_Line("1. Modifier les retours sur le produit");
                  Put_Line("2. Quitter");

                  Put("participe a l'etude : ");
                  if T_aux.Test.Etude/=null then
                     Put(T_aux.Test.Etude.Etu.Id);
                  else
                     Put("aucune");
                  end if;
                  New_Line;

                  Put_Line("Faites votre choix");
                  Secure_Saisie(Choix,2);

                  case Choix is

                     when 1 =>
                        Modification_Etude_Retour(T_aux);

                     when others =>
                        exit;

                  end case;
               end loop; --Fin de la boucle d'affichage du menu testeuse
            enregistre_testeuse(T,t_aux);


         end case; -- Fin du case pour l'affichage des differents menus

      end if; -- Fin de la conditionnelle qui verifie la connexion
         
   end loop; --Fin de la boucle qui affiche ecran de connexion

end Main;

   
