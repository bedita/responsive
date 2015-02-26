<div class="main-container">
    <div class="main wrapper clearfix">

        {if $BEAuthUser|default:''}Hi <b>{$BEAuthUser.realname}</b>{/if} you're not authorized to access to this item.
        {$view->element('error_details')}

    </div>
</div>
