with Ada.Text_Io,Ada.Integer_Text_Io,Ada.Characters.Handling;
use Ada.Text_Io,Ada.Integer_Text_Io,Ada.Characters.Handling;
package body Gestion_Testeuse is

   function Trouve_Testeuse (
         Tete_T   : Pteur_Testeuse;
         Personne : T_Personne)
     return Pteur_Testeuse is --Reccupere le pointeur de la testeuse connectée
   begin
      if Tete_T/=null then
         if Tete_T.Test.Id.Login=Personne.Login and then
               Tete_T.Test.Id.Mdp=Personne.Mdp then
            return(Tete_T);
         else
            return(Trouve_Testeuse(Tete_T.Test_Suiv,Personne));
         end if;
      else
         return(null);
      end if;
   end Trouve_Testeuse;

   function Verif_Saisie_Testeuse (
         Tete_Testeuse : Pteur_Testeuse;
         N,
         P             : T_Mot)
     return boolean is
   begin
      if Tete_Testeuse= null then
         return (false);
      elsif To_Lower(tete_Testeuse.Test.Id.Nom) = To_Lower(N) and then To_Lower(tete_Testeuse.Test.Id.Prenom)=To_Lower(P) then
         return(true);
      else
         return(Verif_Saisie_Testeuse(Tete_Testeuse.Test_Suiv, N, P));
      end if;
   end Verif_Saisie_Testeuse;

   function Verif_Testeuse_Etude (
         Tete_Etu  : Pteur_Etude;
         Tete_Test : Pteur_Testeuse)
     return Pteur_Testeuse is--verifie si la testeuse peut participer a l'etude
   begin
      if Tete_Test/=null then
         if Tete_Test=null then
            return(null);
         elsif Tete_Test.Test.Age>=Tete_Etu.Etu.Produit.Age_Min and
               Tete_Test.Test.Age<=Tete_Etu.Etu.Produit.Age_Max then
            if Tete_Test.Test.Etude=null then
               return(Tete_Test);
            else
               return(null);
            end if;
         else
            return(null);
         end if;
      else
         return (null);
      end if;
   end Verif_Testeuse_Etude;

   procedure Modification_Etude_Retour (
         P_Test : in out Pteur_Testeuse) is
      P_Incl : Pteur_Incluse;
      P_Etu  : Pteur_Etude;
      Pb     : Integer;
      ok :boolean;
   begin
      if p_test/=null then
      ok:= Verif_Saisie_Testeuse(P_Test,P_Test.Test.Id.Nom,
         P_Test.Test.Id.Prenom);
      if ok and then P_Test.Test.Etude/=null then
         P_Etu:=P_Test.Test.Etude;
         if P_Etu.Etu.Statut=En_Cours then
            P_Incl:=P_Etu.Etu.P_Testeuse;
            while P_Incl/=null loop
               if P_Incl.Incl.Nom=P_Test.Test.Id.Nom and then
                     P_Incl.Incl.Prenom=P_Test.Test.Id.Prenom then
                  Put("Modifier les retours sur le produit :"); 
                  Put(P_Etu.Etu.Produit.Nom_p);new_line;
                  Put("attribuer une note au produit :");
                  Secure_Saisie(P_Incl.Incl.Note,20);
                  Put("combien de jours l'avez vous teste ?");
                  Secure_Saisie(P_Incl.Incl.Nj_Jour_Test,365);
                  Put("avez vous des effets indesirables ?(1=oui, 2=non)");
                  loop
                     Secure_Saisie(Pb,2);
                     if Pb=1 then
                        P_Incl.Incl.Pb:=True;
                        exit;
                     elsif Pb=2 then
                        P_Incl.Incl.Pb:=False;
                        exit;
                     else
                        Put("vous avez mal saisie, repondez par 1 ou 2");
                     end if;
                  end loop;
               end if;
               P_Incl:=P_Incl.Incl_Suiv;
            end loop;
         elsif P_Etu.Etu.Statut=cree then
            Put("l'etude n'a pas encore debute");NEW_line;
         else 
            put("l'etude est cloturee");new_line;
            end if;
         end if;
         end if;
   end Modification_Etude_Retour;

   procedure Ajout_Etude_Testeuse (
         Teste   : in out Pteur_Testeuse;
         P_Etude :        Pteur_Etude;
         N,
         P       :        T_Mot) is
   begin
      if Teste/= null then
         if N=Teste.Test.Id.Nom and then P=Teste.Test.Id.Prenom then
            Teste.Test.Etude:=P_Etude;
            Put(Teste.Test.Etude.Etu.Id);
            Put(Teste.Test.Id.Nom);
         else
            Ajout_Etude_Testeuse(Teste.Test_Suiv, P_Etude,N,P);
         end if;
      else
         Put("le nom et prenom ne correspondent pas avec une testeuse");
      end if;
   end Ajout_Etude_Testeuse;

   procedure Ajout_Debut_Etu_Test (
         T  : in out Pteur_Testeuse;
         Et : in     Pteur_Etude) is --ajoute le pointeur etude au testeuse 
      I : Pteur_Incluse;
      E : Pteur_Etude;
   begin
      if T/=null then
         E:=Et;
         while E/=null loop
            I:=E.Etu.P_Testeuse;
            while I/=null loop
               if I.Incl.Nom=T.Test.Id.Nom and then I.Incl.Prenom=
                     T.Test.Id.Prenom then
                  T.Test.Etude:=E;
               end if;
               I:=I.Incl_Suiv;
            end loop;
            E:=E.Etu_Suiv;
         end loop;
         Ajout_Debut_Etu_Test(T.Test_Suiv,Et);
      end if;
   end Ajout_Debut_Etu_Test;

   procedure Enregistre_Testeuse(T:in out Pteur_Testeuse;T_Aux:Pteur_Testeuse)is --permet de conserver les modifications
      Ok:Boolean;
   begin
      if T/=null then
         ok:=Verif_Saisie_Testeuse(T,T_Aux.Test.Id.Nom,T_Aux.Test.Id.Prenom);
         if Ok then 
            T.Test:=T_Aux.Test;
         else
            Enregistre_Testeuse(T.Test_Suiv,T_Aux);
         end if;
      end if;
   end Enregistre_Testeuse;
      
end Gestion_Testeuse;