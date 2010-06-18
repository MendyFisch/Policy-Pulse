<!-- File: /app/views/categories/index.ctp -->

<h1 class='idea_index'>Issues...</h1>
<ul>
<?php foreach ($categories as $category): ?>
	<?php echo '<li>'.$category['Category']['name'].'</li>'; ?>
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


