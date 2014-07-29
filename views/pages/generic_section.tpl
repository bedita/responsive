
<div class="main-container">
    <div class="main wrapper clearfix">

        {if !empty($section.contentRequested)}
            {$view->element('article')}
        {else}
            {$view->element('list_items')}
        {/if}

        <aside>
            <h3>HTML5 Responsive template</h3>
            <p>Hi, this is a working BEdita frontend.</p>
        </aside>

    </div> <!-- #main -->
</div> <!-- #main-container -->