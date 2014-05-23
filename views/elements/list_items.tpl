{foreach from=$section.childContents item='article'}
	<article>
	    <header>
	        <h2><a href="{$html->url($article.canonicalPath)}">{$article.title}</a></h2>
	    </header>
	    <section>
	        <p>{$article.body|truncate:64|default:"<i>[no body]</i>"}</p>
	    </section>
	    <footer>
	        <h3>Author</h3>
	        <p>{$article.UserCreated.realname|default:''}</p>
	    </footer>
	</article>
{/foreach}