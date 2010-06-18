<?php
class CategoriesController extends AppController {

	var $name = 'Categories';
	
	function index() {
		$this->set('categories', $this->Category->find('all', array(
																	'order' => 'Category.name ASC',
																	'recursive' => 2
																	)
													   )
				   );	
	}
}
?>