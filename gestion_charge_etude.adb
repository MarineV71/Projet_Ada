with Ada.Text_Io,Ada.Integer_Text_Io;
use Ada.Text_Io,Ada.Integer_Text_Io;
package body Gestion_Charge_Etude is 
   
   function Verif_Saisie_Charge (Tete_Charge: Pteur_Charge; N,P:T_Mot) return Boolean is 
      begin
      if Tete_Charge= null then return(False);
      elsif N=Tete_Charge.charge.Id.Nom and then P=Tete_Charge.charge.Id.Prenom then
            return(True);
         else
            return(verif_Saisie_charge(Tete_Charge.charge_Suiv, N, P));
         end if;
      end Verif_Saisie_Charge;
      
      function Cpt_Etude_Charge (Tete_Charge: Pteur_Charge; N,P:T_Mot) return Integer is
      begin
         if Tete_Charge= null then return(0);
         elsif N=Tete_Charge.Charge.Id.Nom and then P=Tete_Charge.Charge.Id.Prenom then
            return(Tete_Charge.Charge.Nb_Etude_En_Charge);
         else
            return(Cpt_Etude_Charge(Tete_Charge.charge_Suiv, N, P));
         end if;
      end Cpt_Etude_Charge;
      

      procedure Ajout_Etude_Charge (Tete_Charge: in out Pteur_Charge; P_Etude:Pteur_Etude; N,P:T_Mot) is
      T:tab_etude:=Tete_Charge.Charge.Etude_En_Charge;
      begin
         if Tete_Charge/= null then
            if N=Tete_Charge.Charge.Id.Nom and then P=Tete_Charge.Charge.Id.Prenom then
                  for I in T'range loop
                     if T(I).etu.Id=0 then
                        T(I):=P_Etude;     
                     end if;
                  end loop;
            else 
               Ajout_Etude_Charge(Tete_Charge.Charge_Suiv, P_Etude,N,P);
            end if;
         end if;
         end Ajout_Etude_Charge;
         
   procedure repartition_etude_charge (Etude:in out T_Etude; Tete_Charge: in out Pteur_Charge; P_Etude: in out Pteur_Etude) is
      Ptc,Min:Pteur_Charge:=Tete_Charge;
   begin
      while Ptc/=null and then ptc.charge_suiv/=null loop
         if Min.Charge.Nb_Etude_En_Charge>Ptc.Charge_Suiv.Charge.Nb_Etude_En_Charge then
            Min:=Ptc.Charge_Suiv;        
         elsif Min.Charge.Nb_Etude_En_Charge=Ptc.Charge_Suiv.Charge.Nb_Etude_En_Charge then
            if Min.Charge.Nb_Etude_T>Ptc.Charge_Suiv.Charge.Nb_Etude_T then
               Min:=Ptc.Charge_Suiv;
            end if;
         end if;
         Ptc:=Ptc.charge_Suiv;
      end loop;
      if Min.Charge.Nb_Etude_En_Charge=3 then 
         Put("il n'y a pas de charge d'etude disponible pour la prise en charge de cette nouvelle etude");
         New_Line;
      end if;
      Nv_Etude(Etude,P_Etude);
      Ajout_Etude_Charge (Min, P_Etude, min.charge.id.nom, min.charge.id.prenom);
   end Repartition_Etude_Charge;
   
   procedure Affiche_liste_Etude (Tete_Charge: Pteur_Charge) is 
      T:Tab_Etude:=Tete_Charge.Charge.Etude_En_Charge;
      k:integer;
begin 
   put("Affichage de la liste des etudes en charge :");new_line;
   for I in T'range loop
      Put(T(I).Etu.Id); Put(" - ");
      Put(T(I).Etu.Produit.Nom_P,k); Put(" - ");
      Put(T_categorie'Image(T(I).Etu.Produit.Cat)); New_Line;
   end loop;--cette procedure sera relier a la procedure affiche_detail_etude !!!!!!!!
end Affiche_liste_etude;

procedure Affiche_Detail_Etude (Tete_Charge: Pteur_Charge; id_etu: integer) is
   T:Tab_Etude:=Tete_Charge.Charge.Etude_En_Charge; 
   Inc:Pteur_Incluse;
   k:integer;
begin
   for I in T'range loop
      if Id_Etu=T(I).Etu.Id then
         Put("Affichage de l etude numero"); Put(T(I).Etu.Id); Put(t_statut'image(T(I).Etu.Statut)); Put(" :");New_Line;
         Put("Test de");Put(T(I).Etu.Produit.Nom_P,k); Put(" - ");
         Put(t_categorie'image(T(I).Etu.Produit.Cat)); new_line;
         Put("Pour femmes de");Put(T(I).Etu.Produit.Age_Min); Put("a"); Put(T(I).Etu.Produit.Age_Max);New_Line;
         Put("Produit par la societe");Put(T(I).Etu.Produit.Entreprise,K);New_Line;
         put(T(I).Etu.nb_testeuse); put("testeuse(s) participent a cette etude");new_line;
         Inc:=T(I).Etu.P_Testeuse;
         affiche_testeuse_incluse(inc);
      end if;--faudra relier cette procedure avec afffiche_liste_etude
   end loop;
end Affiche_Detail_Etude;
 
procedure Affiche_Testeuse_Incluse(Tete_Inclu: Pteur_Incluse) is
   K:Integer;
begin
   if tete_Inclu/=null then
      Put(Tete_Inclu.incl.Nom,K);
      Put(Tete_Inclu.incl.Prenom,K); new_line; put("teste depuis:");
      Put(Tete_Inclu.incl.Nj_Jour_Test); Put("jour(s) - note de");
      put(tete_inclu.incl.note);new_line;put("effets indesirables :"); 
      if Tete_Inclu.incl.Pb then Put("oui"); else Put("non"); end if;
      Affiche_Testeuse_Incluse(tete_inclu.incl_suiv);
   end if;
end Affiche_Testeuse_Incluse;
   
   procedure Ajout_Testeuse (Tete_Charge: Pteur_Charge; tete_test: in out pteur_testeuse; id_etu: integer) is
      T:Tab_Etude:=Tete_Charge.Charge.Etude_En_Charge; 
      Tete_Incl: Pteur_Incluse;
      incl:t_personne_incluse;
      K:Integer;
      nom,prenom:t_mot;
   begin
      for I in T'range loop
         if Id_Etu=T(I).Etu.Id then --verifie que l'etude existe 
            if T(I).Etu.Statut=Cree then
            Put("saisir le nom de la testeuse :");
            Get_Line(Nom,K);
            Put("saisir le prenom de la testeuse");
            Get_Line(Prenom,K);--je ne sais pas s'il un K /= de celui du nom ou pas
            tete_incl:=T(i).etu.P_testeuse;
            Tete_Test:=Verif_Saisie_Testeuse(Tete_Test,nom,Prenom);
            Tete_Test:=Verif_Testeuse_Etude(T(I), Tete_Test);
            if tete_test/=null then --si la testeuse peut etre inclus dans l'etude, l'ajouter et lui donner un pteur d'etude
               incl.Nom:=Nom;
               Incl.Prenom:=Prenom;
               Nv_Incluse(Incl,Tete_Incl);
               tete_test.test.etude:=T(i);
            else 
               put_line("cette testeuse ne peut pas participer a cette etude");
            end if;
            end if;
         else Put_Line("l'etude n'a plus le statut creee");
         end if;
      end loop;
   end Ajout_Testeuse;
   
   procedure Modif_Statut(P_Charge:in out Pteur_Charge; id_etu:integer)is
      T:Tab_Etude:=P_Charge.Charge.Etude_En_Charge; 
   begin 
      for I in T'range loop 
         if Id_Etu=T(I).Etu.Id then
            if T(I).Etu.Statut/=T_Statut'Last then 
               T(I).Etu.Statut:=T_Statut'val(T_Statut'pos(T(I).etu.statut)+1);
            end if;
         end if;
      end loop;
   end Modif_Statut;
end Gestion_Charge_Etude;


