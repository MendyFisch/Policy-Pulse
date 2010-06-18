<?php
class CategoriesController extends AppController {

	var $name = 'Categories';
	var $helpers = array('Html', 'Ajax','Javascript');
	var $components = array( 'RequestHandler' );
	
	function index() {
		$this->set('categories', $this->Category->find('all', array(
																	'order' => 'Category.name ASC',
																	'recursive' => 2
																	)
													   )
				   );	
	}
	function boost($id) {
		$record = $this->Category->read('now_weight', $id);
		$now_weight = $record['Category']['now_weight'];
		$now_weight+=0.1;
		$this->Category->set('now_weight', $now_weight);
		$this->Category->save($this->data);
		$this->render('/elements/ajaxreturn');
	}
}
?>