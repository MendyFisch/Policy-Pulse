<?php

class Idea extends AppModel {
    var $name = 'Idea';
	var $hasOne = array('User' 
						=> array('className' => 'User',
								 'conditions' => '',
								 'order' => '',
								 'dependent' => false,
								 'foreignKey' => ''
								 )
						);
								 
}

?>