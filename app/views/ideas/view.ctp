<!-- File: /app/views/ideas/view.ctp -->

<h1><?php echo $idea['Idea']['title']?></h1>

<p><small>Imagined by: <?php echo $idea['User']['fname'] . ' ' . $idea['User']['lname'] . ' on ' . $time->niceShort($idea['Idea']['created']) ?></small></p>

<p><?php echo $idea['Idea']['description']?></p>