with Ada.Text_Io,Ada.Integer_Text_Io;
use Ada.Text_Io,Ada.Integer_Text_Io;
package body Gestion_Etude is 
   procedure Aj_user (direc:out pteur_directeur; chg : out pteur_charge; scrt:out pteur_secretaire) is
   begin
   direc.dir.id.nom:="WAYNE          ";
   direc.dir.id.prenom:="John           ";
   direc.dir.id.login:="john.wayne                     ";
   direc.dir.id.mdp:="nMYnaee!43";
   direc.dir.id.n:=12;
   direc.dir.nb_etude_C:=7;
   direc:=new T_Liste_directeur'(direc,null);
   
   scrt.secr.id.nom:="GUERRE         ";
   scrt.secr.id.prenom:="Martin         ";
   scrt.secr.id.login:="martin.guerre                  ";
   scrt.secr.id.mdp:="6wJYZWs?9!";
   scrt.secr.id.n:=5;
   ajout_secr(scrt,scrt.secr);
   
   chg.charge.id.nom:="PERSONNE       ";
   chg.charge.id.prenom:="Paul           ";
   chg.charge.id.login:="paul.personne                  ";
   chg.charge.id.mdp:="5678!.?def";
   chg.charge.id.n:=14;
   chg.charge.nb_etude_en_charge:=3;
   --chg.charge.etude_en_charge
   chg.charge.nb_etude_t:=0;
   ajout_charge(chg,chg.charge);
   
   chg.charge_suiv.id.nom:="FER            ";
   chg.charge_suiv.id.prenom:="Lucie          ";
   chg.charge_suiv.id.login:="lucie.fer                      ";
   chg.charge_suiv.id.mdp:="tQXXeFMD46";
   chg.charge_suiv.id.n:=12;
   chg.charge_suiv.nb_etude_en_charge:=2;
   --chg.charge_suiv.etude_en_charge
   chg.charge_suiv.nb_etude_t:=0;
   ajout_charge(chg,chg.charge_suiv);
   
   chg.charge_suiv.id.nom:="GRANT          ";
   chg.charge_suiv.id.prenom:="Hermine        ";
   chg.charge_suiv.id.login:="hermine.grant                  ";
   chg.charge_suiv.id.mdp:="!5ef8h0jk3";
   chg.charge_suiv.id.n:=4;
   chg.charge_suiv.nb_etude_en_charge:=2;
   --chg.charge_suiv.etude_en_charge
   chg.charge_suiv.nb_etude_t:=0;
   ajout_charge(chg,chg.charge_suiv);
   
   end aj_user;
   procedure Nv_Etude (Etude: in out T_Etude; P_Etude:in out Pteur_Etude) is
   begin
      if P_Etude = null then 
         P_Etude:=new T_Liste_Etude'(Etude,null);
      else 
         P_Etude:=new T_Liste_Etude'(Etude,P_Etude);
      end if;
   end Nv_Etude;
   
procedure Nv_incluse (incluse: in out T_personne_incluse; P_inclu:in out Pteur_incluse) is
   begin
      if P_inclu= null then 
         P_inclu:=new T_Liste_incluse'(incluse,null);
      else 
         P_inclu:=new T_Liste_incluse'(incluse,P_inclu);
      end if;
   end Nv_Incluse;
   
   procedure Nv_Etude_Cloturee(P_Etude_Clo:in out Pteur_Etude) is 
      P_Incl:Pteur_Incluse:=P_Etude_Clo.Etu.P_Testeuse;
      Moy,Cpt:Integer:=0;
   begin 
      if P_Etude_clo.Etu.Statut=Cloturee then
         while P_Incl/=null loop
            if P_Incl.incl.Nj_Jour_Test>=4 then
               Moy:=Moy+P_Incl.Incl.Note;
               Cpt:=Cpt+1;
            end if;
            if P_Etude_Clo.Etu.risque=False and then P_Incl.Incl.Pb=True then
               P_Etude_Clo.Etu.risque:=True;
            end if;
            P_Incl:=P_Incl.Incl_Suiv;
         end loop;
         P_Etude_Clo.Etu.Note_Moy:=Moy/Cpt;
      end if;
   end Nv_Etude_Cloturee;
   
end Gestion_Etude;

