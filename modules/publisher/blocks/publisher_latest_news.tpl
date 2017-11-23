<{if $block.template == 'normal'}>
    <{if $block.latestnews_scroll }>
        <marquee behavior='scroll' align='center' direction='<{$block.scrolldir}>' height='<{$block.scrollheight}>' scrollamount='3' scrolldelay='<{$block.scrollspeed}>' onmouseover='this.stop()' onmouseout='this.start()'>
    <{/if}>
    <{section name=i loop=$block.columns}>
        <ul>
            <{foreach item=item from=$block.columns[i]}>
                <li><{if $item.posttime }>[ <{$item.posttime}> ]:<{/if}> <{$item.topic_title}> <{$item.title}></li>
            <{/foreach}>
        </ul>
    <{/section}>
    <{if $block.latestnews_scroll }>
        </marquee>
    <{/if}>
<{/if}>

<{if $block.template == 'extended'}>

    <{php}>
        $GLOBALS['xoTheme']->addStylesheet(PUBLISHER_URL . '/assets/css/jquery.popeye.css');
        $GLOBALS['xoTheme']->addStylesheet(PUBLISHER_URL . '/assets/css/jquery.popeye.style.css');
        $GLOBALS['xoTheme']->addStylesheet(PUBLISHER_URL . '/assets/css/publisher.css');
    <{/php}>

    <{if $block.latestnews_scroll }>
        <marquee behavior='scroll' align='center' direction='<{$block.scrolldir}>' height='<{$block.scrollheight}>' scrollamount='3' scrolldelay='<{$block.scrollspeed}>' onmouseover='this.stop()' onmouseout='this.start()'>
    <{/if}>
    <table width='100%' border='0'>
        <tr>
            <{section name=i loop=$block.columns}>
                <td width="<{$block.spec.columnwidth}>%">
                    <{foreach item=item from=$block.columns[i]}>
                        <div class="itemHead"><{$item.admin}>
                            <span class="itemTitle"><{$item.topic_title}><{$item.title}></span>
                        </div>
                        <{if $block.poster || $item.posttime || $item.read }>
                            <div class="itemInfo">
                                <span class="itemPoster"><{$item.poster}></span>
                                <span class="itemPostDate"><{$item.posttime}><{$item.read}></span>
                            </div>
                        <{/if}>
                        <{$item.image}>
                        <{if $block.letters != 0}>
                            <div style="text-align:justify; padding:5px;">
                                <{$item.text}>
                                <div style="clear:both;"></div>
                            </div>
                        <{/if}>
                        <div class="itemFoot">
                            <span class="itemPermaLink"><{$item.more}><{$item.comment}><{$item.print}><{$item.pdf}><{$item.email}></span>
                        </div>
                    <{/foreach}>
                </td>
            <{/section}>
        </tr>
    </table>
    <{if $block.latestnews_scroll }>
        </marquee><{/if}>

    <div><{$block.morelink}><{$block.topiclink}><{$block.archivelink}><{$block.submitlink}></div><{/if}>

<{if $block.template == 'ticker'}>
    <marquee behavior='scroll' align='middle' direction='<{$block.scrolldir}>' height='<{$block.scrollheight}>' scrollamount='3' scrolldelay='<{$block.scrollspeed}>' onmouseover='this.stop()'
             onmouseout='this.start()'>
        <{section name=i loop=$block.columns}>
            <div style="padding:10px;">
                <{foreach item=item from=$block.columns[i]}> &nbsp;<{$item.title}>&nbsp; <{/foreach}>
            </div>
        <{/section}>
    </marquee>
<{/if}>

<!-- blog style -->
<{if $block.template == 'slider1'}>
    <{assign var=count value=0}>
    <ul>
    <{section name=i}>
        <{foreach item=item from=$block.columns[i]}>
        <{assign var=count value=$count+1}>
            <li class="wow fadeInLeft" data-wow-duration="300ms" data-wow-delay="300ms">
                <{if ($count mod 3 == 0) || ($count mod 4 == 0)}>
                <div class="blog-img">
                    <a href="<{$item.itemurl}>">
                    <img src="<{$item.item_image}>" width="293px" height="220px" title="<{$item.alt}>" alt="<{$item.text}>"/>
                    </a>
                </div>
                <div class="content-right">
                    <h3><{$item.alt}></h3>
                    <p><{$item.text}></p>
                 </div>
                 <{else}>
                 <div class="content-left">
                    <h3><{$item.alt}></h3>
                    <p><{$item.text}></p>
                 </div>
                 <div class="blog-img">
                    <a href="<{$item.itemurl}>">
                    <img src="<{$item.item_image}>" width="293px" height="220px" title="<{$item.alt}>" alt="<{$item.text}>"/>
                    </a>
                </div>
                
                 <{/if}>
            </li>
        <{/foreach}>
    <{/section}>
    </ul>
<{/if}>

<!-- horizontal slider -->
<{if $block.template == 'slider2'}>
    <div class="block wow fadeInUp" data-wow-duration="500ms" data-wow-delay="300ms">
        <div id="owl-example" class="owl-carousel">
            <{section name=i}>
                <{foreach item=item from=$block.columns[i]}>
                    <a href="<{$item.itemurl}>">
                    <img class="img-responsive" src="<{$item.item_image}>" alt="<{$item.alt}>" width="<{$block.imgwidth}>" height="<{$block.imgheight}>"/>
                    </a>
                <{/foreach}>
            <{/section}>
        </div>
    </div>

<{/if}>
