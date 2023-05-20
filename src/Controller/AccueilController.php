<?php


namespace App\Controller;

use App\Repository\VisiteRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * Description of AccueilController
 *
 * @author nisab
 */

class AccueilController extends AbstractController { 
    
    
    /**
     * 
     * @var VisiteRepository
     */
    private $repository;
    
    /**
     * 
     * @param VisiteRepository $repository
     */
    public function __construct(VisiteRepository $repository){
        $this->repository=$repository;
    } 
    /** 
     * @Route("/", name="accueil")
     * @return Response
     * @param VisiteRepository
     */
    public function index(): Response{
        $visites = $this->repository->findAllOrderBy('datecreation', 'DESC');
        return $this->render("pages/accueil.html.twig", [
            'visites' => $visites
        ]);        
    }
    /**
     * @Route("/", name="voyages.showone")
     * @param VisiteRepository
     * @return Response
     */
    public function showOne():Response {
        $visites = $this->repository->find('datecreation', 'DESC');
         return $this->render("pages/accueil.html.twig", [
            'visites' => $visites
        ]);  
    }
}
    
