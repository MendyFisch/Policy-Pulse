<!-- File: /app/views/ideas/index.ctp -->

<h1 class='idea_index'>Imagine...</h1>
<?php echo $html->link('Add your idea', array('controller' => 'ideas', 'action' => 'add')); ?>
<table class='sort'>
	<tr><td class='round_left'>Hot Right Now</td><td>All Time Best</td><td>Hot this Week</td><td>Hot this Month</td><td class='round_right'>Hot this Year</td></tr>
</table>

	<?php foreach ($ideas as $idea): ?>
		<div class="idea_index_listing">	
			<span class="idea_index_title"><?php echo $html->link($idea['Idea']['title'], array('controller' => 'ideas', 'action' => 'view', $idea['Idea']['id'])); ?></span>
			<span class="idea_index_user">By <?php echo $idea['User']['fname'].' '.$idea['User']['lname'].' - '.$time->niceShort($idea['Idea']['created']); ?></span>
			<p class="idea_index_description">
				<?php echo $text->truncate($idea['Idea']['description'], 200, array('ending' => '...', 'exact' => false, 'considerHtml' => true)); ?>
			</p>
		</div> 
	<?php endforeach; ?>

