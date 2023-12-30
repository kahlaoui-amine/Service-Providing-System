<?php

namespace App\Controller\Admin;

use App\Entity\Service;
use EasyCorp\Bundle\EasyAdminBundle\Config\Action;
use EasyCorp\Bundle\EasyAdminBundle\Config\Actions;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TelephoneField;
use EasyCorp\Bundle\EasyAdminBundle\Field\MoneyField;
use EasyCorp\Bundle\EasyAdminBundle\Field\LocaleField;
use EasyCorp\Bundle\EasyAdminBundle\Field\NumberField;
use Vich\UploaderBundle\Form\Type\VichImageType;
use EasyCorp\Bundle\EasyAdminBundle\Context\AdminContext;
use EasyCorp\Bundle\EasyAdminBundle\Router\CrudUrlGenerator;

class ServiceCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Service::class;
    }


    public function configureFields(string $pageName): iterable
    {
        
        $fields = [
            TextField::new('titre'),
            TelephoneField::new('telephone'),
            TextField::new('adresse'),
            NumberField::new('creneau_base'),
            NumberField::new('tarif'),
            AssociationField::new('type')->autocomplete(),
            AssociationField::new('fournisseur')->hideOnForm(),
        ];

        
        return $fields;
    }
    public function suppression(AdminContext $context)
    {  
        return $this->redirect($this->get(CrudUrlGenerator::class)->build()->setAction(Action::INDEX)->generateUrl());
    }
    public function configureActions(Actions $actions): Actions
    {
       
        return $actions
        ->add(Crud::PAGE_INDEX, Action::DETAIL)
            ->setPermission(Action::DETAIL, 'ROLE_ADMIN')
            ->setPermission(Action::INDEX, 'ROLE_ADMIN')
            ->setPermission(Action::EDIT, 'ROLE_ADMIN')
            ->setPermission(Action::SAVE_AND_RETURN, 'ROLE_ADMIN')
            ->setPermission(Action::SAVE_AND_CONTINUE, 'ROLE_ADMIN')
            ->disable(Action::DELETE)
           
        ;
    }
}