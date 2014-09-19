Custom Classes and Properties
=============================

Creating custom classes allows the developer to model real world problems using domain specific language. If your application deals with users, you will likely want to create a custom class called User. Properties are a fundamental component of any iOS application and is often the primary conduit for passing information into instantiated objects.


MCMS
====


As a user, I want to create a list of creatures
2 points

    Create a new project: MCMS
    Create a custom class: MagicalCreature
        Add a string property: name
        Add a string property: description
    In your ViewController.h, add an NSMutableArray property called creatures
    When ViewController instantiates, add 3 MagicalCreatures to creatures

As a user, I want to view my list of creatures
3 points

    Add a UITableView to your ViewController
    Show the creatures in your TableView

As a user, I want to add a creature to the list
3 points

    Add a UITextField to your scene
    Add a UIButton titled: Add
    When the button is pressed add a new creature to your app
    Clear the UITextField when the Add button is pressed.

As a user, I want to show a magical creature
3 points

    When a tableView cell is tapped, segue to a new ViewController
        Due to limitations in CheckMate, you must assign the identifier ShowCreatureSegue to your segue.
    The new ViewController should show the creature’s name and description

As a user, I want to edit my creature
2 points

    Add a UIButton to the second ViewController titled: Edit
    When Edit is tapped make its text Done and show a UITextField that allows editing the Creature’s name
    When Edit is tapped again, editing mode should end
        hint: usually with this sort of scene the UITextField appears over the label that was showing the data that will be edited. For example: the Contacts app.
        hint all UIViews have a hidden property
        hint UITextField isa UIView


Stretches
=========


As a user, I want to see a description of my mythical creature
2 points

    Add a description to the MagicalCreature class.  
    Add the corresponding UI elements to accommodate that new property.  
    Show the description in the tableView as well as when you edit the creature on the CreatureViewController.



As a user, I want to see a picture of my mythical creature
2 points

    Add a UIImage property to the MagicalCreature class
    Add a way to view the picture associated with the creature. *hint: these images will be part of your project



As a user, I want to see the creatures battle
3 points

    Add accessories to the creature via a tableView in the CreatureViewController
    Add an accessories property to the MythicalCreature class *hint: accessories should be of type NSMutableArray*
    Add a Battle UIButton on the ViewController
    The Battle button will bring up BattleViewController, that you create, to display the winner of the battle  
    The algorithm for a creature to win a battle is entirely up to you!

