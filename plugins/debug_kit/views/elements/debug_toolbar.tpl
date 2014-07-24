{*
<?php
/**
 * Debug Toolbar Element
 *
 * Renders all of the other panel elements.
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
<div id="debug-kit-toolbar">
	 {if empty($debugToolbarPanels)}
		<p class="warning">There are no active panels. You must enable a panel to see its output</p>
	 {else}
		<ul id="panel-tabs">
			<li class="panel-tab icon">
				<a href="#hide" id="hide-toolbar">
					{$html->image('/debug_kit/img/cake.icon.png', ['alt' => 'CakePHP'])}
				</a>
			</li>

		  {foreach $debugToolbarPanels as $panelName => $panelInfo}
			 {$panelUnderscore = $panelName|lower}
			 <li class="panel-tab">
				{$title = $panelInfo.title|default:$panelUnderscore}
				{$toolbar->panelStart($title, $panelUnderscore)}
				<div class="panel-content" id="{$panelUnderscore}-tab">
					<a href="#" class="panel-maximize ui-control ui-button">+</a>
					<a href="#" class="panel-minimize ui-control ui-button">–</a>
					<div class="panel-resize-region">
						<div class="panel-content-data">
							{$view->element($panelInfo.elementName, $panelInfo)}
						</div>
						<div class="panel-content-data panel-history" id="{$panelUnderscore}-history">
							<!-- content here -->
						</div>
					</div>
					<div class="panel-resize-handle ui-control">====</div>
				</div>
			     {$toolbar->panelEnd()}
			</li>
		  {/foreach}
		</ul>
	{/if}
</div>