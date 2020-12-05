<?php
namespace src\Model;

class Commentaire {
    private $Id;
    private $Auteur;
    private $Mail;
    private $Titre;
    private $Comment;

    public function SqlAdd(\PDO $bdd){
        try {
            $requete = $bdd->prepare("INSERT INTO commentaires (Auteur, Mail, Titre, Comment) VALUES(:Auteur, :Mail, :Titre, :Comment)");

            $requete->execute([
                "Auteur" => $this->getAuteur(),
                "Mail" => $this->getMail(),
                "Titre" => $this->getTitre(),
                "Comment" => $this->getComment(),
            ]);
            return $bdd->lastInsertId();
        }catch (\Exception $e){
            return $e->getMessage();
        }

    }

    public function SqlUpdate(\PDO $bdd){
        try {
            $requete = $bdd->prepare("UPDATE commentaires set Auteur= :Auteur, Mail = :Mail, Titre= :Titre, Comment= :Comment WHERE Id = :Id");

            $requete->execute([
                "Auteur" => $this->getAuteur(),
                "Mail" => $this->getMail(),
                "Titre" => $this->getTitre(),
                "Comment" => $this->getComment(),
                "Id" => $this->getId()
            ]);
            return "OK";
        }catch (\Exception $e){
            return $e->getMessage();
        }

    }

    public function SqlGetAll(\PDO $bdd){
        $requete = $bdd->prepare("SELECT * FROM commentaires");
        $requete->execute();
        $datas =  $requete->fetchAll(\PDO::FETCH_CLASS,'src\Model\Commentaire');
        return $datas;

    }

    public function SqlGetById(\PDO $bdd, $Id){
        $requete = $bdd->prepare("SELECT * FROM commentaires WHERE Id=:Id");
        $requete->execute([
            "Id" => $Id
        ]);
        $requete->setFetchMode(\PDO::FETCH_CLASS,'src\Model\Commentaire');
        $data = $requete->fetch();

        return $data;
    }

    public function SqlDeleteById(\PDO $bdd, $Id){
        $requete = $bdd->prepare("DELETE FROM commentaires WHERE Id=:Id");
        $requete->execute([
            "Id" => $Id
        ]);
        return true;
    }

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->Id;
    }

    /**
     * @param mixed $Id
     * @return Commentaire
     */
    public function setId($Id)
    {
        $this->Id = $Id;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getAuteur()
    {
        return $this->Auteur;
    }

    /**
     * @param mixed $Auteur
     * @return Commentaire
     */
    public function setAuteur($Auteur)
    {
        $this->Auteur = $Auteur;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getMail()
    {
        return $this->Mail;
    }

    /**
     * @param mixed $Mail
     * @return Commentaire
     */
    public function setMail($Mail)
    {
        $this->Mail = $Mail;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getTitre()
    {
        return $this->Titre;
    }

    /**
     * @param mixed $Titre
     * @return Commentaire
     */
    public function setTitre($Titre)
    {
        $this->Titre = $Titre;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getComment()
    {
        return $this->Comment;
    }

    /**
     * @param mixed $Comment
     * @return Commentaire
     */
    public function setComment($Comment)
    {
        $this->Comment = $Comment;
        return $this;
    }

}