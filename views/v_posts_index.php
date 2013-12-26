<!DOCTYPE html>

<html lang="en">

<head>

	<title>Posts Index</title>

</head>

<body>

	<?php foreach($posts as $post): ?>

    	    <strong><?=$post['first_name']?> posted on <?=Time::display($post['created'])?></strong><br>
        	
        	<?=nl2br($post['content'])?><br><br>
        
	<?php endforeach; ?>

</body>

</html>
