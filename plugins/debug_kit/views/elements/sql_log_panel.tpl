{*
<?php
/**
 * SQL Log Panel Element
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
 */
?>
*}

{$headers = ['Query', 'Error', 'Affected', 'Num. rows', 'Took (ms)', 'Actions']}
{if isset($debugKitInHistoryMode)}
	{* $content = $toolbar->readCache('sql_log', $this->params.pass.0) *}
{/if}

<h2>Sql Logs</h2>
{if !empty($content)}
	{foreach $content.connections as $dbName => $explain}
	<div class="sql-log-panel-query-log">
		<h4>{$dbName}</h4>
		{if !isset($debugKitInHistoryMode)}
			{$queryLog = $toolbar->getQueryLogs($dbName, ['explain' => $explain, 'threshold' => $content.threshold])}
		{else}
			{$queryLog = $content[$dbName]}
		{/if}
		{$toolbar->table($queryLog, $headers, ['title' => 'SQL Log '|cat:$dbName])}
		<h4>Query Explain</h4>
		<div id="sql-log-explain-{$dbName}">
			<a id="debug-kit-explain-{$dbName}"> </a>
			<p>Click an "Explain" link above, to see the query explanation.</p>
		</div>
	</div>
	{/foreach}

{else}
	{$toolbar->message('Warning', 'No active database connections')}
{/if}

<script type="text/javascript">
//<![CDATA[
DEBUGKIT.module('sqlLog');
DEBUGKIT.sqlLog = function () {
	var Element = DEBUGKIT.Util.Element,
		Request = DEBUGKIT.Util.Request,
		Event = DEBUGKIT.Util.Event,
		Collection = DEBUGKIT.Util.Collection;

	return {
		init : function () {
			var sqlPanel = document.getElementById('sql_log-tab');
			var buttons = sqlPanel.getElementsByTagName('input');

			// Button handling code for explain links.
			// performs XHR request to get explain query.
			var handleButton = function (event) {
				event.preventDefault();
				var data = {};
				var dbName = 'default';
				var inputs = this.form.getElementsByTagName('input');
				var i = inputs.length;
				while (i--) {
					var input = inputs[i];
					if (input.name) {
						data[input.name] = input.value;
						if (input.name.indexOf('[ds]') != -1) {
							dbName = input.value;
						}
					}
				}

				var fetch = new Request({
					method: 'POST',
					onComplete : function (response) {
						var targetEl = document.getElementById('sql-log-explain-' + dbName);
						targetEl.innerHTML = response.response.text;
					},
					onFail : function () {
						alert('Could not fetch EXPLAIN for query.');
					}
				}).send(this.form.action, data);
			};
	
			Collection.apply(buttons, function (button) {
				if (Element.hasClass(button, 'sql-explain-link')) {
					Event.addEvent(button, 'click', handleButton);
				}
			});
		}
	};
}();
DEBUGKIT.loader.register(DEBUGKIT.sqlLog);
//]]>
</script>