<article>
{if !empty($section.childContents)}
    {foreach $section.childContents as $article}
	    <header>
	        <h2><a href="{$html->url($article.canonicalPath)}">{$article.title}</a></h2>
	    </header>
	    <section>
	        <p>{$article.body|strip_tags|truncate:150|default:"<i>[no body]</i>"}</p>
	    </section>
	    <footer>
	        <p>Author: <i>{$article.UserCreated.realname|default:''}</i></p>
	    </footer>
    {/foreach}
{else}
        <section>
            <p>{t}Section is empty{/t}</p>
        </section>
{/if}
</article>