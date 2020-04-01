package Connexion is 
   Subtype T_Mot is String (1 .. 15);
   Subtype T_Login is String (1..31);
   subtype T_Mdp is String (1..10);
   type T_Profil is (Directeur,Secretaire,Charge_Etude,Testeuse);
   type T_Personne is record
         Nom,
         Prenom : T_Mot:=(others=>' ');
         Login      : T_Login:=(others=>' ');
         Mdp        : T_Mdp:=(others=>' ');
         N          : Integer:=0;
   end record;
      
   procedure Cryp_Mdp (P: IN OUT T_Personne;N: IN integer);
   procedure Secure_Saisie (N:in out Integer; m: integer) ;

end Connexion;