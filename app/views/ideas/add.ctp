<!-- File: /app/views/ideas/add.ctp -->	
	
<h1>Record your idea:</h1>
<?php
echo $form->create('Idea');
echo $form->input('title');
echo $form->input('description', array('rows' => '3'));
echo $form->input('user_id', array('type' => 'hidden', 'value' => $this->Session->read('user_id')));
echo $form->end('Save Idea');
?>