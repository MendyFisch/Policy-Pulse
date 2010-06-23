<?php
class IdeasController extends AppController {

	var $name = 'Ideas';
	var $helpers = array('Html', 'Time', 'Text', 'Paginator');
	
	function index() {
		$this->set('ideas', $this->Idea->find('all'));
		$this->Session->write('user_id', 1);		
	}
	function view($id = null) {
		$this->helpers[] = 'Time';
		$this->Idea->id = $id;
		$this->set('idea', $this->Idea->read());
	}
	function add() {
		if (!empty($this->data)) {
			if ($this->Idea->save($this->data)) {
				$this->Session->setFlash('Your idea has been recorded.');
				$this->redirect(array('action' => 'index'));
			}
		}
	}
}
?>