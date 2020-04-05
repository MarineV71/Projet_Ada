with Ada.Text_Io,Ada.Integer_Text_Io,Ada.Float_Text_IO,Ada.Characters.Handling,Aleatoire;
use Ada.Text_Io,Ada.Integer_Text_Io,Ada.Float_Text_IO,Ada.Characters.Handling,Aleatoire;
package body Gestion_Secretaire is
   

   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------
   --------------------- INSCRIPTION DES TESTEUSES ---------------------------------
   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------

   procedure Ajout_Testeuse (
         P_Testeuse : in out Pteur_Testeuse;
         T          : in     T_Testeuse) is

   begin

      if P_Testeuse = null then
         P_Testeuse := new T_Liste_Testeuse'(T,null);
      else
         P_Testeuse := new T_Liste_Testeuse'(T,P_Testeuse);
      end if;

   end Ajout_Testeuse;

   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------
   
   procedure Inscrip_Testeuse (
         P_Testeuse : in out Pteur_Testeuse;
         Fait       :    out Boolean) is

      Testeuse : T_Personne;
      T        : T_Testeuse;
      P        : Pteur_Testeuse := P_Testeuse;
      Existe   : Boolean        := False;
      N        : Integer;

   begin

      Put_Line("Inscription d'une nouvelle testeuse");
      Saisie_Personne(Testeuse);

      --Vérif de la non existence dans la liste des testeuses
      while P /=null loop
         if To_Lower(Testeuse.Nom) /= To_Lower(P.Test.Id.Nom) 
            and To_Lower(Testeuse.Prenom) /= To_Lower(P.Test.Id.Prenom) then
            P:=P.Test_Suiv;
            Existe:=False;
         elsif To_Lower(Testeuse.Nom) = To_Lower(P.Test.Id.Nom) then
            if To_Lower(Testeuse.Prenom) /= To_Lower(P.Test.Id.Prenom) then
               P:=P.Test_Suiv;
            else
               Existe := True;
               exit;
            end if;
         end if;
      end loop;

      if Existe then
         Put("Une testeuse avec les memes nom et prenom existe deja");
         New_Line;
         Fait := False;

      else
         --Aucun homonyme de cette testeuse -> on continue
         Initialise(0,25);
         N:=Random;
         Testeuse.N:=N;
         Cryp_Mdp(Testeuse,N);
         Testeuse.Nom := To_Upper(Testeuse.Nom);
         T.Id := Testeuse;
         Put("Saisir l'age de cette testeuse =>");
         Get(T.Age);

         --On verifie l'age de la nouvelle testeuse
         if T.Age<15 then
            Put("Cette testeuse est trop jeune.");
            New_Line;
            Fait := False;
         elsif T.Age>75 then
            Put("Cette testeuse est trop agee.");
            New_Line;
            Fait := False;
         else
            T.nb_etude:=0;
            --Si son age est 'bon' alors on peut l'inscrire
            Ajout_Testeuse (P_Testeuse,T);
            Fait := True;
         end if;
      end if;

   end Inscrip_Testeuse;

   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------
   -------------- PROCEDURE DE VISUALISATION DES TESTEUSES -------------------------
   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------

   procedure Vis_Liste_Testeuse (
         P_Testeuse : in     Pteur_Testeuse) is
   begin
      if P_Testeuse /= null then
         Put("Nom et prenom => ");
         Put(P_Testeuse.Test.Id.Nom);
         Put(P_Testeuse.Test.Id.Prenom);
         New_Line;
         Put("Age =>");
         Put(P_Testeuse.Test.Age);
         New_Line;
         -- Afficher etude en en cours ?
         if P_Testeuse.Test.Etude = null then
            Put("Ne participe a aucune etude actuellement.");
            New_Line;
         else
            Put("Participe actuellement a une etude.");
            --Afficher le nom du produit ?
         end if;
         New_Line;
         Put("Elle a participe a ");
         Put(P_Testeuse.Test.Nb_Etude);
         Put("Etude");
         New_Line;
         Put_Line("-------------------------------------------------");
         New_Line;
         Vis_Liste_Testeuse(P_Testeuse.Test_Suiv);
      end if;

   end Vis_Liste_Testeuse;

   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------

   procedure Vis_Testeuse_Spe (
         P_Testeuse : in     Pteur_Testeuse;
         N,
         P          : in     T_Mot) is

   begin

      if P_Testeuse /= null then
         if To_Lower(N) = To_Lower(P_Testeuse.Test.Id.Nom)
               and To_Lower(P) = To_Lower(P_Testeuse.Test.Id.Prenom) then
            Put("Cette testeuse a ");
            Put(P_Testeuse.Test.Age);
            Put(" ans, a participe a ");
            Put(P_Testeuse.Test.Nb_Etude);
            Put(" etude(s)");
            if P_Testeuse = null then
               Put(" dont aucune actuellement.");
               New_Line;
            else
               Put(" dont 1 en ce moment");
               New_Line;
            end if;
            Put("Mot de passe => ");
            Put(P_Testeuse.Test.Id.Mdp);
            New_Line;
            Put("N => ");
            Put(P_Testeuse.Test.Id.N);
            new_line;
              
         else
            if P_Testeuse.Test_Suiv = null then
               Put("Aucune testeuse avec ce nom et ce prenom dans le vivier");
               New_Line;
            end if;
            Vis_Testeuse_Spe (P_Testeuse.Test_Suiv, N, P);
         end if;
      end if;

   end Vis_Testeuse_Spe;

   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------
   ---------------------- Désinscription d'une testeuse ----------------------------
   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------

   procedure Desinscrip_Testeuse (
         P_Testeuse : in out Pteur_Testeuse;
         N,
         P          : in     T_Mot;
         Fait       :    out Boolean) is

   begin

      if P_Testeuse = null then
         Put("Aucune Testeuse avec cette identite");

      elsif P_Testeuse /= null then
         --Si l'identite correspond ...
         if To_Lower(P_Testeuse.Test.Id.Nom) = To_Lower(N)
               and then To_Lower(P_Testeuse.Test.Id.Prenom)=To_Lower(P) then
            --On verifie que la testeuse n'est pas incluse
            if  P_Testeuse.Test.Etude = null then
               P_Testeuse := P_Testeuse.Test_Suiv;
               Fait:= True;
            else
               Put("Cette testeuse est actuellement incluse dans une étude");
               New_Line;
               Fait:=False;
            end if;
         else
            Desinscrip_Testeuse (P_Testeuse.Test_Suiv,N,P,Fait);
         end if;

      end if;

   end Desinscrip_Testeuse;


   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------
   ------------------------- PROCEDURES ARCHIVAGE ETUDE ----------------------------
   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------

   procedure Sup_Etude_Clot (
         P_Etude : in out Pteur_Etude;
         Id      : in     Integer) is

   begin

      if P_Etude /= null then
         if P_Etude.Etu.Id = Id then
            P_Etude := P_Etude.Etu_Suiv;
         else
            Sup_Etude_Clot(P_Etude.Etu_Suiv,Id);
         end if;
      end if;

   end Sup_Etude_Clot;

   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------

   procedure Archive_Etude (
         Id_Et   : in     Integer;
         P_Etude : in out Pteur_Etude;
         F       : in out P_Fichier_Archive.File_Type) is
      --      Id_Et      : Integer;
      P_Aux      : Pteur_Etude      := P_Etude;
      A_Archiver : T_Etude_Archivee;
      use P_Fichier_Archive;
   begin
      --      Put("Archivage d'une etude => ");
      --      Put("Quel est l'identifiant de l'etude a archiver ?");
      --      Get(Id_Et);
      --      Skip_Line;
      --demander une confirmation avec le nom du produit ?
      --Faire la demande avec un nom de produit ?
      while P_Aux/= null loop
         if P_Aux.Etu.Id = Id_Et then
            if P_Aux.Etu.Statut = Cloturee then
               A_Archiver.Id:= P_Aux.Etu.Id;
               A_Archiver.Produit:= P_Aux.Etu.Produit;
               A_Archiver.Nb_Testeuse := P_Aux.Etu.Nb_Testeuse;
               A_Archiver.Nom_Charge := P_Aux.Etu.Nom_Charge;
               A_Archiver.Prenom_Charge := P_Aux.Etu.Prenom_Charge;
               A_Archiver.Note_Moy := P_Aux.Etu.Note_Moy;
               A_Archiver.Nb_Significatif := P_Aux.Etu.Nb_Significatif;
               A_Archiver.Risque := P_Aux.Etu.Risque;
               -- ouverture avec exception append
               begin
                  Open(F,Append_File,"Fichier_Archive");
               exception
                  when others =>
                     Create (F, Name=>"Fichier_Archive");
               end;
               Close(F);
               --manipulation du fichier
               Open(F,Append_File,"Fichier_Archive");
               Write(F,A_Archiver);
               Close(F);
               New_Line;
               Sup_Etude_Clot(P_Etude,Id_Et);
               --P_Aux:= P_Aux.Etu_Suiv;
               Put("Archivage realise avec succes ! ");
               New_Line;
               New_Line;
               exit;

            else
               Put("L'etude que vous souhaitez archivee n'est pas cloturee !");
               New_Line;
               Put("Archivage impossible");
               New_Line;
               exit;
            end if;
         else
            P_Aux:=P_Aux.Etu_Suiv;
         end if;
      end loop;

   end Archive_Etude;

   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------
   ------------------------ PROCEDURES DE VISUALISATION  ---------------------------
   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------


   procedure Vis_Etude_Clot (
         P_Etude : in     Pteur_Etude) is

   begin

      if P_Etude /= null then
         if P_Etude.Etu.Statut = Cloturee then
            Put("ID =>");
            Put(P_Etude.Etu.Id);
            New_Line;
            Put("Produit teste => ");
            Put(P_Etude.Etu.Produit.Nom_P);
            New_Line;
            --Put(T_Categorie'Image(P_Etude.Etu.Produit.Cat));
            case P_Etude.Etu.Produit.Cat is
               when T_Categorie'Val(0)=>
                  Put("Creme de jour");
                  New_Line;
               when T_Categorie'Val(1) =>
                  Put("Soin de nuit");
                  New_Line;
               when T_Categorie'Val(2) =>
                  Put("Lait corporel");
                  New_Line;
               when T_Categorie'Val(3) =>
                  Put("Lotion pour le visage");
                  New_Line;
               when T_Categorie'Val(4) =>
                  Put("Gel Douche");
                  New_Line;
               when others =>
                  Put("Solaire");
                  New_Line;
            end case;

            Put("Entreprise => ");
            Put(P_Etude.Etu.Produit.Entreprise);
            New_Line;
         end if;
         Vis_Etude_Clot(P_Etude.Etu_Suiv);
      end if;

   end Vis_Etude_Clot;


   ---------------------------------------------------------------------------------
   ---------------------------------------------------------------------------------

   procedure Vis_Archive_Entreprise (
         F      : in out P_Fichier_Archive.File_Type;
         Ent    : in     T_Mot;
         Existe :    out Boolean) is
      Et_Archivee : T_Etude_Archivee;
      use P_Fichier_Archive;
   begin
      Existe:=False; --Affichage si pas d'étude pour cette entreprise (MAIN)
      Put("Etude(s) archivees pour l'entreprise ");
      Put(Ent);
      New_Line;
      New_Line;
      begin
         Open(F,In_File,"Fichier_Archive");
      exception
         when others =>
            Create (F, Name=>"Fichier_Archive");
      end;
      Close(F);
      --manipulation du fichier

      Open(F,In_File,"Fichier_Archive");
      while not End_Of_File(F) loop
         Read(F,Et_Archivee);
         if To_Lower(Et_Archivee.Produit.Entreprise)=To_Lower(Ent) then
            Existe := True;
            Put("Information sur le Produit :");
            Put(Et_Archivee.Produit.Nom_P);
            New_Line;
            Put("Categorie : ");
            case Et_Archivee.Produit.Cat is
               when T_Categorie'Val(0)=>
                  Put("Creme de jour");
                  New_Line;
               when T_Categorie'Val(1) =>
                  Put("Soin de nuit");
                  New_Line;
               when T_Categorie'Val(2) =>
                  Put("Lait corporel");
                  New_Line;
               when T_Categorie'Val(3) =>
                  Put("Lotion pour le visage");
                  New_Line;
               when T_Categorie'Val(4) =>
                  Put("Gel Douche");
                  New_Line;
               when others =>
                  Put("Solaire");
                  New_Line;
            end case;
            Put("Tranche d'age : ");
            if Et_Archivee.Produit.Age_Min=15 and Et_Archivee.Produit.Age_Max=75 then
               Put("Tout Age => de 15 a 75 ans");
               New_Line;
            elsif Et_Archivee.Produit.Age_Min=15 and Et_Archivee.Produit.Age_Max=25 then
               Put("Peau Jeune => de 15 a 25 ans");
               New_Line;
            elsif Et_Archivee.Produit.Age_Min=26 and Et_Archivee.Produit.Age_Max=55 then
               Put("Peau Adulte => de 26 a 55 ans");
               New_Line;
            elsif Et_Archivee.Produit.Age_Min=56 and Et_Archivee.Produit.Age_Max=75 then
               Put("Peau Mature => de 56 a 75 ans");
               New_Line;
            end if;
            Put("Lors de cette etude ");
            Put(Et_Archivee.Nb_Testeuse);
            Put(" testeuse(s) incluse(s) dont "); --> faire une vérif si -1 si pb lors de l'étude ?
            Put(Et_Archivee.Nb_Significatif);
            Put(" testeuse(s) significative(s)");
            New_Line;
            Put("La note moyenne recue pour ce produit est ");
            Put(Et_Archivee.Note_Moy);
            New_Line;
            if Et_Archivee.Risque then
               Put("Les testeuses rapportent des risques pour ce produit");
            else
               Put("Les testeuses n'ont pas rapporte de risques");
            end if;
            New_Line;
            Put("Identite du charge d'etude responsable de cette etude : ");
            Put(Et_Archivee.Nom_Charge);
            Put(" ");
            Put(Et_Archivee.Prenom_Charge);
            New_Line;
            New_Line;
         end if;
      end loop;
      New_Line;
      Close (F);
   end Vis_Archive_Entreprise;

   --------------------------------------------------
   -- Affichage des meilleurs produits testés
   --------------------------------------------------


   --   procedure Aff_Meilleur_Prod (
   --) is
   --   begin
   --      -- Appel de Function ???
   --   end Aff_Meilleur_Prod;

end Gestion_Secretaire;

   
   
   
