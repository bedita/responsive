{*
<?php
/**
 * Log Panel Element
 *
 * PHP versions 4 and 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright 2005-2010, Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright 2005-2010, Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org
 * @package       debug_kit
 * @subpackage    debug_kit.views.elements
 * @since         DebugKit 0.1
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 **/
?>
*}
<h2>Logs</h2>
<div class="code-table">
{foreach $content as $logName => $logs}
	<h3>{$logName}</h3>
	{if count($logs) > 0}
		{$headers = ['Time', 'Message']}
		{$rows =[]}
		{foreach $logs as $i => $l}
		   {$rows[] = [$l.0, $l.1]}
         {/foreach}
		{$toolbar->table($rows, $headers, ['title' => $logName])};
	{else}
		<p class="info">There were no log entries made this request</p>
	{/if}
{/foreach}
</div>
