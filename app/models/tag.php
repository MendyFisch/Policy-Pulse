<?php

class Tag extends AppModel {
    var $name = 'Tag';
	var $belongsTo = array('Issue');
}

?>