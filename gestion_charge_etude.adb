with Ada.Text_Io,Ada.Integer_Text_Io;
use Ada.Text_Io,Ada.Integer_Text_Io;
package body Gestion_Charge_Etude is
   function Trouve_Charge (
         Tete_C   : Pteur_Charge;
         Personne : T_Personne)
     return Pteur_Charge is
   begin
      if Tete_C/=null then
         if Tete_C.Charge.Id.Login=Personne.Login and then Tete_C.Charge.Id.Mdp=Personne.Mdp then
            return(Tete_C);
         else
            return(Trouve_Charge(Tete_C.Charge_Suiv,Personne));
         end if;
      else
         return(null);
      end if;
   end Trouve_Charge;


   function Verif_Saisie_Charge (
         Tete_Charge : Pteur_Charge;
         N,
         P           : T_Mot)
     return Boolean is
   begin
      if Tete_Charge= null then
         return(False);
      elsif N=Tete_Charge.Charge.Id.Nom and then P=Tete_Charge.Charge.Id.Prenom then
         return(True);
      else
         return(Verif_Saisie_Charge(Tete_Charge.Charge_Suiv, N, P));
      end if;
   end Verif_Saisie_Charge;

   function Cpt_Etude_Charge (
         Tete_Charge : Pteur_Charge;
         N,
         P           : T_Mot)
     return Integer is
   begin
      if Tete_Charge= null then
         return(0);
      elsif N=Tete_Charge.Charge.Id.Nom and then P=Tete_Charge.Charge.Id.Prenom then
         return(Tete_Charge.Charge.Nb_Etude_En_Charge);
      else
         return(Cpt_Etude_Charge(Tete_Charge.Charge_Suiv, N, P));
      end if;
   end Cpt_Etude_Charge;


   procedure Ajout_Etude_Charge (
         Tete_Charge : in out Pteur_Charge;
         P_Etude     :        Pteur_Etude;
         N,
         P           :        T_Mot) is
      Fait : Boolean := False;
   begin
      if Tete_Charge/= null then
         if N=Tete_Charge.Charge.Id.Nom and then P=Tete_Charge.Charge.Id.Prenom then
            for I in Tete_Charge.Charge.Etude_En_Charge'range loop
               if Fait=False then
                  if Tete_Charge.Charge.Etude_En_Charge(I)=null then
                     Tete_Charge.Charge.Etude_En_Charge(I):=P_Etude;
                     Fait:=True;
                  end if;
               end if;
            end loop;
         else
            Ajout_Etude_Charge(Tete_Charge.Charge_Suiv, P_Etude,N,P);
         end if;
      end if;
   end Ajout_Etude_Charge;

   procedure Repartition_Etude_Charge (
         Etude       : in out T_Etude;
         Tete_Charge : in out Pteur_Charge;
         P_Etude     : in out Pteur_Etude) is
      Ptc,
      Min : Pteur_Charge := Tete_Charge;
   begin
      while Ptc/=null and then Ptc.Charge_Suiv/=null loop
         if Min.Charge.Nb_Etude_En_Charge>Ptc.Charge_Suiv.Charge.Nb_Etude_En_Charge then
            Min:=Ptc.Charge_Suiv;
         elsif Min.Charge.Nb_Etude_En_Charge=Ptc.Charge_Suiv.Charge.Nb_Etude_En_Charge then
            if Min.Charge.Nb_Etude_T>Ptc.Charge_Suiv.Charge.Nb_Etude_T then
               Min:=Ptc.Charge_Suiv;
            end if;
         end if;
         Ptc:=Ptc.Charge_Suiv;
      end loop;
      if Min.Charge.Nb_Etude_En_Charge=3 then
         Put("il n'y a pas de charge d'etude disponible pour la prise en charge de cette nouvelle etude");
         New_Line;
      end if;
      Nv_Etude(Etude,P_Etude);
      Ajout_Etude_Charge (Min, P_Etude, Min.Charge.Id.Nom, Min.Charge.Id.Prenom);
   end Repartition_Etude_Charge;

   procedure Affiche_Liste_Etude (
         Tete_Charge : Pteur_Charge) is
      T : Tab_Etude := Tete_Charge.Charge.Etude_En_Charge;
   begin
      Put("Affichage de la liste des etudes en charge :");
      New_Line;
      for I in T'range loop
         if T(I)/=null then
            Put(T(I).Etu.Id);
            Put(" - ");
            Put(T(I).Etu.Produit.Nom_P);
            Put(" - ");
            Put(T_Categorie'Image(T(I).Etu.Produit.Cat));
            New_Line;
         end if;
      end loop;--cette procedure sera relier a la procedure affiche_detail_etude !!!!!!!!
   end Affiche_Liste_Etude;

   procedure Affiche_Detail_Etude (
         Tete_Charge : Pteur_Charge;
         Id_Etu      : Integer) is
      T   : Tab_Etude     := Tete_Charge.Charge.Etude_En_Charge;
      Inc : Pteur_Incluse;
   begin
      for I in T'range loop
         if Id_Etu=T(I).Etu.Id then
            Put("Affichage de l etude numero");
            Put(T(I).Etu.Id);
            New_Line;
            Put("Statut de l'etude : ");
            Put(T_Statut'Image(T(I).Etu.Statut));
            New_Line;
            Put("Nom du produit teste : ");
            Put(T(I).Etu.Produit.Nom_P);
            New_Line;
            Put("Categorie du produit : ");
            Put(T_Categorie'Image(T(I).Etu.Produit.Cat));
            New_Line;
            Put("Pour femmes de");
            Put(T(I).Etu.Produit.Age_Min);
            Put(" a");
            Put(T(I).Etu.Produit.Age_Max);
            Put(" ans");
            New_Line;
            Put("Produit par la societe : ");
            Put(T(I).Etu.Produit.Entreprise);
            New_Line;
            Put(T(I).Etu.Nb_Testeuse);
            Put(" testeuse(s) participent a cette etude");
            New_Line;
            Inc:=T(I).Etu.P_Testeuse;
            Affiche_Testeuse_Incluse(Inc);
         end if;--faudra relier cette procedure avec afffiche_liste_etude
      end loop;
   end Affiche_Detail_Etude;

   procedure Affiche_Testeuse_Incluse (
         Tete_Inclu : Pteur_Incluse) is
   begin
      if Tete_Inclu/=null then
         Put(Tete_Inclu.Incl.Nom);
         Put(Tete_Inclu.Incl.Prenom);
         New_Line;
         Put("teste depuis:");
         Put(Tete_Inclu.Incl.Nj_Jour_Test);
         Put("jour(s) - note de");
         Put(Tete_Inclu.Incl.Note);
         New_Line;
         Put("effets indesirables :");
         if Tete_Inclu.Incl.Pb then
            Put("oui");
         else
            Put("non");
         end if;
         New_Line;
         New_Line;
         Affiche_Testeuse_Incluse(Tete_Inclu.Incl_Suiv);
      end if;
   end Affiche_Testeuse_Incluse;

   procedure Ajout_Testeuse (
         Tete_Charge :        Pteur_Charge;
         Tete_Test   : in out Pteur_Testeuse) is
      T         : Tab_Etude          := Tete_Charge.Charge.Etude_En_Charge;
      Tete_Incl : Pteur_Incluse;
      Incl      : T_Personne_Incluse;
      Id_Etu    : Integer;
      Nom,
      Prenom    : T_Mot;
      Fait      : Boolean            := False;
   begin
      Put("saisir l'id de l'etude");
      Get(Id_Etu);
      Skip_Line;
      for I in T'range loop
         if Fait=False then
            if Id_Etu=T(I).Etu.Id then --verifie que l'etude existe
               if T(I).Etu.Statut=Cree then
                  Put("saisir le nom de la testeuse :");
                  Get(Nom);
                  Skip_Line;
                  Put("saisir le prenom de la testeuse :");
                  Get(Prenom);
                  Skip_Line;
                  Tete_Incl:=T(I).Etu.P_Testeuse;
                  Tete_Test:=Verif_Saisie_Testeuse(Tete_Test,Nom,Prenom);
                  Tete_Test:=Verif_Testeuse_Etude(T(I), Tete_Test);
                  if Tete_Test/=null then --si la testeuse peut etre inclus dans l'etude, l'ajouter et lui donner un pteur d'etude
                     Incl.Nom:=Nom;
                     Incl.Prenom:=Prenom;
                     Nv_Incluse(Incl,Tete_Incl);
                     Tete_Test.Test.Etude:=T(I);
                     Fait:=True;
                     T(I).Etu.P_Testeuse:=Tete_Incl;--remplace le pointeur des incluses du charge
                     T(I).Etu.Nb_Testeuse:=T(I).Etu.Nb_Testeuse+1;--peut etre fait en procedure
                     Put("fait");
                     New_Line;
                     New_Line;
                  else
                     Put_Line("cette testeuse ne peut pas participer a cette etude");
                  end if;
               else
                  Put_Line("l'etude n'a plus le statut creee");
               end if;
            else
               Put_Line("l'etude ne fait pas partie de vos etudes");
            end if;
         end if;
      end loop;
   end Ajout_Testeuse;

   procedure Modif_Statut (
         P_Charge : in out Pteur_Charge) is
      T      : Tab_Etude := P_Charge.Charge.Etude_En_Charge;
      Id_Etu : Integer;
   begin
      Put("saisir l'id de l'etude");
      Get(Id_Etu);
      Skip_Line;
      for I in T'range loop
         if Id_Etu=T(I).Etu.Id then
            if T(I).Etu.Statut/=T_Statut'Last then
               T(I).Etu.Statut:=T_Statut'Val(T_Statut'Pos(T(I).Etu.Statut)+1);
               Put("l'etude ");
               Put(Id_Etu);
               Put(T_Statut'Image(T(I).Etu.Statut));
               New_Line;
               New_Line;
            end if;
         end if;
      end loop;
   end Modif_Statut;
end Gestion_Charge_Etude;


