<div class="header-container">
    <header class="wrapper clearfix">
        <h1 class="title">{$publication.title}</h1>
        {if !empty($sectionsTree)}
        <nav>
            <ul>
            {foreach from=$sectionsTree item="object"}
            <li>
                <a href="{$html->url($object.canonicalPath)}" 
                    {if !empty($section) && ($section.nickname == $object.nickname)}class="active"{/if}>{$object.title|truncate:20|default:"<i>[no title]</i>"}
                </a>
            </li>
            {/foreach}
            </ul>
        </nav>
        {/if}
    </header>
</div>