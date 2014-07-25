{$article = $section.currentContent}
<article>
    <header>
        <h1>{$article.title|default:'[no title]'}</h1>
        <p>{$article.abstract|default:''}</p>
    </header>
    {if !empty($article.relations.attach)}
    <section>
        {assign_associative var="options" mode="crop" width=250 height=250 modeparam="000000" upscale=true}
        {assign_associative var="htmlAttr" style="float: left; width: 250px; margin: 10px 10px 10px 0"}
        {assign_associative var="optionsBig" mode="fill" longside=600 URLonly=true}
        {foreach from=$article.relations.attach item='i' name='g'}
        {if $smarty.foreach.g.first && $i.object_type_id == $conf->objectTypes.image.id}
        <h2>{$i.title}</h2>
        <p>
            <div class="img" {if $smarty.foreach.g.iteration-1 is div by 4}style="margin-right:0px;"{/if}>
                <a rel="gallery" title="{$i.title}" href="{$beEmbedMedia->object($i, $optionsBig)}">{$beEmbedMedia->object($i, $options, $htmlAttr)}</a>
            </div>
            {if $smarty.foreach.g.iteration-1 is div by 4}
            <br style="clear:both;" />
            {/if}
        </p>
        {/if}
        {/foreach}
    </section>
    {/if}
    <section>
        <p>{$article.body|default:''}</p>
    </section>
    <footer>
        <h3>Author</h3>
        <p>{$article.UserCreated.realname|default:''}</p>
    </footer>
</article>