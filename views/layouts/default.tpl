<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
	{$html->charset()}
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>{$beFront->title()}</title>

	{$beFront->metaAll()}
	{$beFront->metaDc()}
	{$beFront->metaOg()}
	<meta name="viewport" content="width=device-width, initial-scale=1">

	{$html->css('normalize.min')}
	{$html->css('style')}

	{$beFront->feeds()}

    <script src="js/libs/modernizr-2.6.2-respond-1.1.0.min.js"></script>
	{$scripts_for_layout}
</head>

<body>
    <!--[if lt IE 7]>
        <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
	{$view->element('header')}

	{$content_for_layout}

	{$view->element('footer')}

    <script>window.jQuery || document.write('<script src="js/libs/jquery-1.11.0.min.js"><\/script>')</script>
    <script src="js/main.js"></script>

	{$beFront->stats()}
</body>
</html>