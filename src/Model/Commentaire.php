<?php
namespace src\Model;

class Commentaire {
    private $Id;
    private $Auteur;
    private $Mail;
    private $Date;
    private $Comment;
    private $ArticleId;

    public function SqlAdd(\PDO $bdd){
        try {
            $requete = $bdd->prepare("INSERT INTO commentaires (Auteur, Mail, Date, Comment, ArticleId) VALUES(:Auteur, :Mail, :Date, :Comment, :ArticleId)");

            $requete->execute([
                "Auteur" => $this->getAuteur(),
                "Mail" => $this->getMail(),
                "Date" => $this->getDate(),
                "Comment" => $this->getComment(),
                "ArticleId" => $this->getArticleId(),
            ]);
            return $bdd->lastInsertId();
        }catch (\Exception $e){
            return $e->getMessage();
        }

    }

    public function SqlGetByArticleId(\PDO $bdd, $Id){
        $requete = $bdd->prepare("SELECT * FROM commentaires WHERE ArticleId=:Id ");
        $requete->execute([
            "Id" => $Id
        ]);
        $requete->setFetchMode(\PDO::FETCH_CLASS,'src\Model\Commentaire');
        $data = $requete->fetchAll();

        return $data;
    }

    /** Id **/
    public function getId()
    {
        return $this->Id;
    }

    public function setId($Id)
    {
        $this->Id = $Id;
        return $this;
    }

    /** ArticleId **/
    public function getArticleId()
    {
        return $this->ArticleId;
    }

    public function setArticleId($ArticleId)
    {
        $this->ArticleId = $ArticleId;
        return $this;
    }

    /** Auteur **/
    public function getAuteur()
    {
        return $this->Auteur;
    }

    public function setAuteur($Auteur)
    {
        $this->Auteur = $Auteur;
        return $this;
    }

    /** Mail **/
    public function getMail()
    {
        return $this->Mail;
    }

    public function setMail($Mail)
    {
        $this->Mail = $Mail;
        return $this;
    }

    /** Dtae **/
    public function getDate()
    {
        return $this->Date;
    }

    public function setDate()
    {
        $this->Date = date('Y-m-d H:i:s');
        return $this;
    }

    /** Commentaire **/
    public function getComment()
    {
        return $this->Comment;
    }

    public function setComment($Comment)
    {
        $this->Comment = $Comment;
        return $this;
    }

}