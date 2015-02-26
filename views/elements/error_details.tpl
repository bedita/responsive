{if $conf->debug >= 1} 
<pre>
ErrorType:  {$error.status|default:''}
Message:    {$error.message|default:''}
Details:    {$error.details|default:''}
Result:     {$result|default:''}

Action:     {$action|default:''}
Controller: {$controller|default:''}
File:       {$file|default:''}
Title:      {$title|default:''}

</pre>
{/if}