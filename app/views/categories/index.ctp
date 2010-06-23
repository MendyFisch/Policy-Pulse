<!-- File: /app/views/categories/index.ctp -->
<h1 class='idea_index'>Issues...</h1>
<ul>
<?php foreach ($categories as $category): ?>
	<?php $fontSize = strval($category['Category']['now_weight']) . 'em'; ?>
	<li><span id='sizer' style="font-size:<?php echo $fontSize; ?>">
	<?php echo $ajax->link(
							$category['Category']['name'],
							array('controller' => 'categories', 'action' => 'boost', $category['Category']['id']),
							array('update' => 'result')
						   );
					
	?>
	</span></li>
	<ul>
	<?php foreach ($category['Issue'] as $issue): ?>
		<?php echo '<li>'.$issue['name'].'</li>'; ?>
		<ul>
		<?php foreach ($issue['Tag'] as $tag): ?>
			<?php echo '<li>'.$tag['name'].'</li>'; ?>			
		<?php endforeach; ?>
		</ul>
	<?php endforeach; ?>
	</ul>
<?php endforeach; ?>
</ul>
<div id="result"></div>

