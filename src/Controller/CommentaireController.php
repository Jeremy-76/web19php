<?php
namespace src\Controller;

use src\Model\BDD;
use src\Model\Categorie;
use src\Model\Commentaire;

class CommentaireController extends AbstractController {

    public function Update($id){
        $commentaires = new Commentaire();
        $datas = $commentaires->SqlGetByArticleId(BDD::getInstance(),$id);

        if($_POST){
            $objCommentaire = new Commentaire();
            $objCommentaire->setAuteur($_POST["Auteur"]);
            $objCommentaire->setMail($_POST["Mail"]);
            $objCommentaire->setComment($_POST["Comment"]);
            $objCommentaire->setArticleId($id);
            $objCommentaire->setDate();
            //Exécuter la mise à jour
            $objCommentaire->SqlUpdate(BDD::getInstance(),$id);
            // Redirection
            header("Location:/article/show/$id");
        }else{
            return $this->twig->render("Commentaire/update.html.twig", [
                "commentaire"=>$datas
            ]);
        }

    }

    public function Delete($id){
        $commentaires = new Commentaire();
        $datas = $commentaires->SqlDeleteById(BDD::getInstance(),$id);

        header("Location:/Article/all");
    }

}