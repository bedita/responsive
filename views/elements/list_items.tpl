{foreach $section.childContents as $article}
	<article>
	    <header>
	        <h2><a href="{$html->url($article.canonicalPath)}">{$article.title}</a></h2>
	    </header>
	    <section>
	        <p>{$article.body|strip_tags|truncate:150|default:"<i>[no body]</i>"}</p>
	    </section>
	    <footer>
	        <p>Author: <i>{$article.UserCreated.realname|default:''}</i></p>
	    </footer>
	</article>
{/foreach}