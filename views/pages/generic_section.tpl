
<div class="main-container">
    <div class="main wrapper clearfix">

		{if (!empty($section.contentRequested))}
			{if (!empty($section.currentContent))}
				{$view->element('article')}
			{/if}
		{else}
			{if !empty($section.childContents)}
				{$view->element('list_items')}
			{else}
				{t}Section is empty{/t}
			{/if}
		{/if}

        <aside>
            <h3>HTML5 Responsive template</h3>
            <p>Hi, this is a working BEdita frontend.</p>
        </aside>

    </div> <!-- #main -->
</div> <!-- #main-container -->