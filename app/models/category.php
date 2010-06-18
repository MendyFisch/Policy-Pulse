<?php

class Category extends AppModel {
    var $name = 'Category';
	var $hasMany = array('Issue' 
						=> array('className' => 'Issue',
								 'conditions' => '',
								 'order' => 'Issue.now_weight DESC',
								 'dependent' => true,
								 'foreignKey' => 'category_id'
								 )
						);
								 
}

?>