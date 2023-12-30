<?php

namespace App\DataFixtures;
use App\Entity\User;
use App\Entity\Fournisseur;
use App\Entity\Service;
use App\Entity\TypeService;
use App\Entity\Reservation;
use App\Entity\Calendrier;
use App\Entity\Notes;

use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Symfony\Component\Validator\Constraints\DateTime;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class AppFixtures extends Fixture
{
    private $passwordEncoder;

    public function __construct(UserPasswordEncoderInterface $passwordEncoder)
    {
        $this->passwordEncoder = $passwordEncoder;
    }
    public function load(ObjectManager $manager)
    {
        $fournisseurs = Array();
        $services = Array();
        $typeservices = Array();
        $users = Array();
        $reservations = Array();
        $cal=Array();
        $notes=Array();

        for ($i = 1; $i < 2; $i++) {

            $users[$i] = new User();
            $users[$i]->setEmail("Admin" . $i . "@gmail.com");
            $users[$i]->setPassword($this->passwordEncoder->encodePassword( $users[$i],"Admin" . $i ));
            $users[$i]->setUuid("Admin" . $i);
            $users[$i]->setRoles(['ROLE_ADMIN']);
            $manager->persist($users[$i]);


        }
        $manager->flush();


        for ($i = 1; $i < 10; $i++) {

            $users[$i] = new User();
            $users[$i]->setEmail("Client" . $i . "@gmail.com");
            $users[$i]->setPassword($this->passwordEncoder->encodePassword(
                $users[$i], // Pass User instance to encodePassword
                "Client" . $i
            ));
            $users[$i]->setUuid("PseudoClient" . $i);
            $users[$i]->setRoles(['ROLE_USER']);
            $manager->persist($users[$i]);

            $fournisseurs[$i] = new Fournisseur();
            $fournisseurs[$i]->setEmail("Fournisseur" . $i . "@gmail.com");
            $fournisseurs[$i]->setPassword("Fournisseur" . $i);
            $fournisseurs[$i]->setNom("Fournisseur" . $i);
            $fournisseurs[$i]->setPrenom("Prenom" . $i);
            $fournisseurs[$i]->setPolitique("Politique" . $i);

            $manager->persist($fournisseurs[$i]);


            $typeservices[$i] = new TypeService();
            $typeservices[$i]->setType("Type" . $i);
    
            $manager->persist($typeservices[$i]);

            
            $services[$i] = new Service();
            $services[$i]->setTitre("Service" . $i);
            $services[$i]->setTelephone(7700000 + $i);
            $services[$i]->setAdresse("AdresseService" . $i);
            $services[$i]->setCreneauBase(15*$i);
            $services[$i]->setTarif(10*$i);
            $services[$i]->setFournisseur($fournisseurs[$i]);
            $services[$i]->setType($typeservices[$i]);
    
            $manager->persist($services[$i]);


            $reservations[$i] = new Reservation();
            $reservations[$i]->setJour(new \DateTime('06/04/2021'));
            $reservations[$i]->setHeure("10:00");
            $reservations[$i]->setService($services[$i]);
            $reservations[$i]->setClient($users[$i]);
            $reservations[$i]->setFournisseur($fournisseurs[$i]);
            $reservations[$i]->setValideeParFournisseur(true);
    
            $manager->persist($reservations[$i]);

            $cal[$i]=new Calendrier();
            $cal[$i]->setService($services[$i]);
            $cal[$i]->setLundiDebut(new \DateTime('10:00'));
            $cal[$i]->setLundiFin(new \DateTime('17:00'));
            $cal[$i]->setMardiDebut(new \DateTime('08:00'));
            $cal[$i]->setMardiFin(new \DateTime('16:00'));
            $cal[$i]->setMercrediDebut(new \DateTime('09:00'));
            $cal[$i]->setMercrediFin(new \DateTime('17:00'));
            $cal[$i]->setJeudiDebut(new \DateTime('10:00'));
            $cal[$i]->setJeudiFin(new \DateTime('18:00'));
            $cal[$i]->setVendrediDebut(new \DateTime('08:00'));
            $cal[$i]->setVendrediFin(new \DateTime('15:00'));
            $cal[$i]->setSamediDebut(new \DateTime('08:00'));
            $cal[$i]->setSamediFin(new \DateTime('15:00'));
            $cal[$i]->setDimancheDebut(new \DateTime('08:00'));
            $cal[$i]->setDimancheFin(new \DateTime('15:00'));

            $manager->persist($cal[$i]); 

            $notes[$i] = new Notes();
            $notes[$i]->setFournisseur($fournisseurs[$i]);
            $notes[$i]->setClient($users[$i]);
            $notes[$i]->setProblemeRDV($i);
            $notes[$i]->setPrixService($i+10);
            $notes[$i]->setUtiliszerService($i);
            $notes[$i]->setNiveauSatisfaction($i+5);
            $notes[$i]->setCommentaire("C'est l'avis du client ".$users[$i]);

            $manager->persist($notes[$i]);
        }
        $manager->flush();
    }
}