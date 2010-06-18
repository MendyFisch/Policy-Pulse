<?php

class Issue extends AppModel {
    var $name = 'Issue';
	var $belongsTo = array('Category');
	var $hasMany = array('Tag' 
						=> array('className' => 'Tag',
								 'conditions' => '',
								 'order' => '',
								 'dependent' => true,
								 'foreignKey' => 'issue_id'
								 )
						);
}

?>