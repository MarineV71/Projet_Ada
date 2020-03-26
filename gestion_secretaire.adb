with Ada.Text_Io,Ada.Integer_Text_Io;
use Ada.Text_Io,Ada.Integer_Text_Io;
package body Gestion_Secretaire is

   --------------------------------------------------
   -- Inscription des testeuses
   --------------------------------------------------

   procedure Ajout_Testeuse(P_Testeuse : in out Pteur_Testeuse; T : in T_Testeuse) is
   -- Ajout en tete ici
   --Pour ajout en fin Tete.suiv := new t_cell'(T,null) ?
   begin
      if P_Testeuse = null then
         P_Testeuse := new T_Liste_Testeuse'(T,null);
      else
         P_Testeuse := new T_Liste_Testeuse'(T,P_Testeuse);
      end if;
   end Ajout_Testeuse;
   
   
   procedure Inscrip_Testeuse (
         P_Testeuse : in   Out  Pteur_Testeuse) is
      Testeuse      : T_Personne;
      T : T_Testeuse;
      P      : Pteur_Testeuse := P_Testeuse;
      Existe : Boolean := false;
   begin
      Put("Inscription d'une nouvelle testeuse");
      Saisie_Personne(Testeuse);
      --Vérif de la non existence
      while P /=null loop
         if Testeuse.Nom /= P.Test.Id.Nom and Testeuse.Prenom /= P.Test.Id.Prenom then
            P:=P.Test_Suiv;
         elsif Testeuse.Nom = P.Test.Id.Nom then
            if Testeuse.Prenom /= P.Test.Id.Prenom then
               P:=P.Test_Suiv;
            else
               Existe := True;
               exit;
            end if;
         end if;
      end loop;
      If existe then
         Put("Une testeuse avec les mêmes nom et prénom existe deja");
         New_Line;
      else 
         T.Id := Testeuse;
         Put("Saisir l'age de cette testeuse =>");
         Get(T.Age);         
         Ajout_Testeuse (P_Testeuse,T);
      end if;
      
   end Inscrip_Testeuse;

   --------------------------------------------------
   -- Procedures de visualisation des testeuses
   --------------------------------------------------

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
         -- Afficher étude en en cours ?
         if P_Testeuse = null then
            Put("Ne participe à aucune etude actuellement.");New_Line;
         else
            Put("Participe actuellement a une etude.");
            --Afficher le nom du produit ?
         end if;
         New_Line;
         Put("Elle a participe a ");
         Put(P_Testeuse.test.Nb_Etude);
         Put("Etude");
         New_Line;
         Put("-------------------------------------------------");
         New_Line;
         Vis_Liste_Testeuse(P_Testeuse.Test_Suiv);
      end if;
       
   end Vis_Liste_Testeuse;
   
   --------------------------------------------------
   -- Visualisation d'une testeuse en particulier
   --------------------------------------------------

   procedure Vis_Testeuse_Spe (
         P_Testeuse : in     Pteur_Testeuse; N,P : In T_Mot) is
   begin
      --Prog Principal
      --Put("Vous recherchez une testeuse en particulier :");
      --Put("Saisissez son nom => ");Get_Line(N,K);
      --Put("Saisissez son prenom => "); Get_Line(N,K);
      if P_Testeuse /= null then
         if N = P_Testeuse.test.Id.Nom and P = P_Testeuse.Test.Id.Prenom then
            Put("Cette testeuse a ");
            Put(P_Testeuse.test.Age);
            Put(", a participe a ");
            Put(P_Testeuse.Test.Nb_Etude);
            if P_Testeuse = null then
               Put("dont aucune actuellement.");
               New_Line;
            else
               Put("Dont 1 en ce moment");
               New_Line;
            end if;
         else
            if P_Testeuse.Test_Suiv = null then
               Put("Aucune testeuse avec ce nom et ce prenom dans le vivier");
            end if;
            Vis_Testeuse_Spe (P_Testeuse.test_Suiv, N, P);
         end if;
      end if;
      
   end Vis_Testeuse_Spe;

   --------------------------------------------------
   -- Désinscription d'une testeuse
   --------------------------------------------------

   procedure Desinscrip_Testeuse (P_Testeuse : IN OUT Pteur_Testeuse;N,P : IN T_Mot; Fait : Out Boolean) is
   begin
      if P_Testeuse = null then 
         Put("Aucune Testeuse avec cette identite"); 
      Elsif P_Testeuse /= null then 
         if P_Testeuse.Test.Id.Nom = N and then P_Testeuse.Test.Id.Prenom = P then
            P_Testeuse := P_Testeuse.Test_Suiv;
         else
            null;
         end if;
      end if;
            
   end Desinscrip_Testeuse;


   --------------------------------------------------
   -- Archivage d'une étude
   --------------------------------------------------

-- dans le prog principal --> Traiter l'ouverture du fichier en mode in file pour vérifier que le fichier existe
   procedure Archive_Etude (P_Etude : IN OUT Pteur_Etude; F: IN OUT P_Fichier_Archive.file_type) is -- P_Fichier_Archive.file_type ?
      Id_Et: Integer;
      P_Aux:Pteur_Etude:=P_Etude;
      A_Archiver : T_Etude_Archivee;
      use P_Fichier_Archive;
   begin
      Put("Archivage d'une etude => ");
      Put("Quel est l'identifiant de l'etude a archiver ?");
      Get(Id_Et);Skip_Line;
      --demander une confirmation avec le nom du produit ?
      --Faire la demande avec un nom de produit ?
      while P_Aux/= null loop
         if P_Aux.etu.Id = Id_Et then
            if P_Aux.Etu.Statut = Cloturee then --Mettre un T'image pour la condition ?
               A_Archiver.Id:= P_Aux.etu.Id;
               A_Archiver.Produit:= P_Aux.etu.Produit;
               A_Archiver.Nb_Testeuse := P_Aux.etu.Nb_Testeuse;
               A_Archiver.nom_Charge := P_Aux.etu.nom_charge;
               A_Archiver.prenom_Charge := P_Aux.etu.prenom_Charge;
               A_Archiver.Note_Moy := P_Aux.etu.Note_Moy;
               A_Archiver.Nb_Significatif := P_Aux.etu.Nb_Significatif;
               A_Archiver.Risque := P_Aux.Etu.Risque;
               -- ouverture avec exception append --> dans le Prog PRINCIPAL ?
               --begin
               --   Open(F,Append_File,"Fichier_Archive");
               --exception
               --when others => create (F, name=>"Fichier_Archive");
               --end;
               --Close(F);
               --manipulation de la séquence
               Open(F,Append_File,"Fichier_Archive");
               Write(F,A_Archiver);
               Close(F);
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
   
   
   --------------------------------------------------
   -- Visualisation des études cloturées
   --------------------------------------------------

   procedure Vis_Etude_Clot (P_Etude : In Pteur_Etude) is
   begin
      if P_Etude /= null then
         if P_Etude.Etu.Statut = Cloturee then
            Put(P_Etude.Etu.Id);
            Put(P_Etude.Etu.Produit.Nom_P);
            Put(T_Categorie'image(P_Etude.etu.Produit.Cat));
            Put(P_Etude.Etu.Produit.Entreprise);
         end if;
      end if;
   end Vis_Etude_Clot;
   
   
   --------------------------------------------------
   -- Visualisation des études archivées pour une entreprise
   --------------------------------------------------

   procedure Vis_Archive_Entreprise (F: IN OUT P_Fichier_Archive.file_type; Ent: IN T_Mot; Existe : OUT Boolean) is
      Et_Archivee : T_Etude_Archivee;
     use P_Fichier_Archive;
   begin
      existe:=false; --Affichage dans le prog principal si pas d'étude pour cette entreprise
      Put("Etude(s) archivees pour l'entreprise ");Put(Ent);new_line;
      open(F,in_file,"Fichier_Archive");
      while not End_Of_File(F) loop
         Read(F,Et_Archivee);
         if Et_Archivee.Produit.Entreprise=Ent then
            Existe := True;
            Put("Information sur le Produit :");
            Put(Et_Archivee.Produit.Nom_P);New_Line;
            Put("Categorie : ");
            case Et_Archivee.Produit.Cat is 
               when T_Categorie'val(0)=>
                  Put("Creme de jour");
                  new_line;
               when T_Categorie'val(1) =>
                  Put("Soin de nuit");
                  New_Line;
               when T_Categorie'val(2) =>
                  Put("Lait corporel");
                  new_line;
               when T_Categorie'val(3) =>
                  Put("Lotion pour le visage");
                  new_line;
               when T_Categorie'val(4) =>
                  Put("Gel Douche");
                  new_line;
               when others =>
                  Put("Solaire");
                  new_line;
            end case;
            Put("Tranche d'age : ");
            if Et_Archivee.Produit.Age_Min=15 and Et_Archivee.Produit.Age_Max=75 then
               Put("Tout Age");New_Line;
            elsif Et_Archivee.Produit.Age_Min=15 and Et_Archivee.Produit.Age_Max=25 then
               Put("Peau Jeune");New_Line;
            elsif Et_Archivee.Produit.Age_Min=26 and Et_Archivee.Produit.Age_Max=55 then
               Put("Peau Adulte");New_Line;
            elsif Et_Archivee.Produit.Age_Min=56 and Et_Archivee.Produit.Age_Max=75 then
               Put("Peau Mature");New_Line;
            end if;
            Put("Lors de cette etude ");Put(Et_Archivee.Nb_Testeuse);
            Put(" testeuse(s) incluse(s) dont "); --> faire une vérif si -1 si pb lors de l'étude ?
            Put(Et_Archivee.Nb_Significatif);Put(" testeuse(s) significative(s)");
            New_Line;
            Put("La note moyenne recue pour ce produit est ");Put(Et_Archivee.Note_Moy);
            new_line;
            if Et_Archivee.Risque then 
               Put("Les testeuses rapportent des risques pour ce produit");
            else
               Put("Les testeuses n'ont pas rapporte de risques");
            end if;
            New_Line;
            Put("Identite du charge d'etude responsable de cette etude : ");
            Put(Et_Archivee.Nom_Charge);Put(" ");Put(Et_Archivee.Prenom_Charge);
            new_line;new_line;
         end if;  
      end loop;
      new_line;
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

   
   
   
