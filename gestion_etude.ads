with Sequential_Io, Connexion;
Use Connexion;
package Gestion_Etude is 

   
   --------------------------------------------------
   -- Déclaration des types pour la Liste de testeuses
   -- incluses
   --------------------------------------------------

   type T_Personne_Incluse is record 
      Nom, Prenom : T_Mot := (others=>' ');
      Nj_Jour_Test : Integer :=0;
      Note : Integer range 0..20:=-1;
      pb : boolean;
   end record;
   
   type T_Liste_Incluse;
   type Pteur_Incluse is access T_Liste_Incluse;
   type T_Liste_Incluse is record 
      incl: T_Personne_Incluse;
      incl_suiv : Pteur_Incluse;
   end record;
   
   --------------------------------------------------
   -- Déclaration des types pour la Liste d'études
   --------------------------------------------------
  
   type T_Categorie is (Creme_Jour,Soin_Nuit,Lait_Corporel,Lotion_Visage,
      Gel_Douche,Solaire);
   
   type T_Tranche_Age is (Tout_Age,Peau_Jeune,Peau_Adulte,Peau_Mature);
   
   type T_Produit is record
      Nom_P : T_Mot:= (others=>' ');
      Cat: T_Categorie;
      Age_Min, Age_Max: Integer:=0;
      Entreprise: T_Mot:= (others=>' ');
   end record;

   type T_Statut is (Cree,En_Cours,Cloturee);
   
   type T_Etude is record 
      Id : Integer :=0;
      Produit : T_Produit;
      Nb_Testeuse : Integer :=0;
      nom_charge, prenom_charge : t_Mot := (others=>' ');
      Statut : T_Statut := Cree; 
      P_Testeuse : Pteur_Incluse;
      Note_Moy : Integer := -1;
      Nb_Significatif : Integer :=0;
      Risque : Boolean;
   end record;

   Type T_Liste_Etude;
   type Pteur_Etude is access T_Liste_Etude;
   type T_Liste_Etude is record
      etu: T_Etude;
      etu_Suiv : Pteur_Etude;
   end record;
  
   --------------------------------------------------
   -- Définition du type pour les études à archiver
   --------------------------------------------------
  
  type T_Etude_Archivee is record 
      Id : Integer;
      Produit : T_Produit;
      Nb_Testeuse : Integer :=0;
      nom_charge, prenom_charge : t_mot := (others=>' ');
      Note_Moy : Integer := -1;
      Nb_Significatif : Integer :=0;
      Risque : Boolean;
  end record;
  
   --------------------------------------------------
   -- Declaration pour fichiers d'études archivées
   --------------------------------------------------
  package P_Fichier_Archive is new Sequential_Io (T_Etude_Archivee);
   
   --------------------------------------------------
   -- procedure d'etude
   --------------------------------------------------

  procedure Nv_Etude (Etude: in out T_Etude; P_Etude:in out Pteur_Etude) ;

end Gestion_Etude;

