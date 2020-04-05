with Ada.Text_Io, ada.Float_Text_IO, Ada.Characters.Handling;
use Ada.Text_Io, ada.Float_Text_IO, Ada.Characters.Handling;
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
      Moy   :float:=0.0;
      Cpt    : Integer       := 0;
   begin
      if P_Etude_Clo.Etu.Statut=Cloturee then
         while P_Incl/=null loop
            if P_Incl.Incl.Nj_Jour_Test>=4 then
               Moy:=Moy+float(P_Incl.Incl.Note);
               Cpt:=Cpt+1;
            end if;
               if P_Incl.Incl.Pb=True then
               P_Etude_Clo.Etu.Risque:=True;
               end if;
            P_Incl:=P_Incl.Incl_Suiv;
         end loop;
         P_Etude_Clo.Etu.Nb_Significatif:=Cpt;
         P_Etude_Clo.Etu.Note_Moy:=Moy/float(Cpt);
      end if;
   end Nv_Etude_Cloturee;

   procedure Meilleur_Produit (E:Pteur_Etude; f: in out P_Fichier_Archive.File_Type) is
      E_Aux:Pteur_Etude:=E;
      n:Integer;
      M: Float:=0.0;
      e_arch:T_Etude_Archivee;
      use P_Fichier_Archive;
   begin
      Put_Line("saisir la categorie de produits");
      Put("Saisir la categorie du produit :");
      New_Line;
      Put("1.Creme de jour");
      New_Line;
      Put("2.Soin de nuit");
      New_Line;
      Put("3.Lait corporel");
      New_Line;
      Put("4.Lotion visage");
      New_Line;
      Put("5.Gel douche");
      New_Line;
      Put("6.Solaire");
      New_Line;
      Put("=> ");
      Secure_Saisie(n,6);
      New_Line;
      Put_Line("affichage des meilleurs produits");
   while E_aux/=null loop --cherche la meilleure note sans risque
         if E_aux.Etu.Produit.Cat=T_Categorie'Val(N-1) and then E_aux.Etu.Risque=False then
            if M<E_aux.Etu.note_Moy then
               M:=E_aux.Etu.note_Moy;
            end if;
         end if;
         e_aux:=e_aux.etu_suiv;
      end loop;
      
      begin
         Open(F,In_File,"Fichier_Archive");
      exception
         when others =>
            Create (F, Name=>"Fichier_Archive");
      end;
      Close(F);
      --manipulation du fichier

      Open(F,In_File,"Fichier_Archive");
      while not End_Of_File(F) loop --cherche la meilleure note sans risque dans les archives
         Read(F,E_Arch);
         if E_arch.Produit.Cat=T_Categorie'Val(N-1) and then E_arch.Risque=False then
            if M<E_arch.note_Moy then
               M:=E_arch.note_Moy;Put(E_Arch.Produit.Nom_P);
            end if;
         end if;
         end loop;
      Close (F);

      E_Aux:=E;put(m);
       while E_aux/=null loop --cherche les égalités avec la meilleure note trouvé grace a la premiere boucle
         if E_aux.Etu.Produit.Cat=T_Categorie'Val(N-1) and then E_aux.Etu.Risque=False then
            if m/=0.0 and then M=E_aux.Etu.note_Moy then
               Put(E_aux.Etu.Produit.Nom_P);
               Put(E_Aux.Etu.Note_Moy, Exp =>0, Aft => 1);New_Line;
            end if;
         end if;
         E_Aux:=E_Aux.Etu_Suiv;
      end loop;
      
   begin
         Open(F,In_File,"Fichier_Archive");
      exception
         when others =>
            Create (F, Name=>"Fichier_Archive");
      end;
      Close(F);
      --manipulation du fichier

      Open(F,In_File,"Fichier_Archive");
      while not End_Of_File(F) loop --cherche la meilleure note sans risque dans les archives
         Read(F,E_Arch);
         if E_arch.Produit.Cat=T_Categorie'Val(N-1) and then E_arch.Risque=False then
            if M/=0.0 and then M=E_arch.note_Moy then
            Put(E_Arch.Produit.Nom_P);
               Put(E_Arch.Note_Moy, Exp =>0, Aft => 2);New_Line;
            elsif m=0.0 then  
               put_line("aucun produit classé dans cette categorie");
         end if;
         end if;
         end loop;
      Close (F);
end meilleur_produit;
               
                          
end Gestion_Etude;

