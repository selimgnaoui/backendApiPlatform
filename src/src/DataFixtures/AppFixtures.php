<?php

namespace App\DataFixtures;

use App\Entity\Task;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use App\Entity\Post;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        for ($i = 0; $i < 4; $i++) {
            $task = new Task();
            $task->setName('Task '  . ($i+1));
            $task->setDone(false);
            $task->setType('Meeting');
            $manager->persist($task);

        }

        $manager->flush();
    }
}
