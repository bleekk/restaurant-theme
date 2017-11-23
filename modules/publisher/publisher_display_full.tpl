<script type="text/javascript">
    $(document).ready(function() {
        $('#pinBoot').pinterest_grid({
            no_columns: 3,
            padding_x: 10,
            padding_y: 10,
            margin_bottom: 50,
            double_column_breakpoint: 970,
            single_column_breakpoint: 300
        });
    });    
</script>
<style type="text/css">
#pinBoot {
  position: relative;
  max-width: 100%;
  width: 100%;
}
.article_img img{
    width: 100%;
    height: 100%;
    height: auto;
}
.white-panel {
  position: absolute;
  background: #F5F5F5;
  border-top: 1px solid #E5E5E5;
  box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.3);
  padding: 10px;
}

.white-panel h3 {
  margin-bottom: 15px;
}
.article_img{
    margin-bottom: 15px;
}

.white-panel:hover {
  box-shadow: 1px 1px 10px rgba(0, 0, 0, 0.5);
  margin-top: -5px;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}
</style>
<{include file='db:publisher_header.tpl'}>

<!-- if we are on the index page OR inside a category that has subcats OR (inside a category with no subcats
    AND $display_category_summary is set to TRUE), let's display the summary table ! //-->

<{if $indexpage || $category.subcats || ($category && $display_category_summary)}>

    <{if $display_category_summary && $category}>
        <div class="well well-sm">
            <{$lang_category_summary}>
        </div>
    <{/if}>


    <{include file='db:publisher_categories_table.tpl'}>
    <!-- End of if !$category || $category.subcats || ($category && $display_category_summary) //-->
<{/if}>

<{if $items}>
    <h4 class="pub_last_articles_full"><{$lang_items_title}></h4>
    <!-- Start item loop -->
    
    <div class="row">
     <section id="pinBoot">
     <{foreach item=item from=$items}>
        <article class="white-panel">
            <h3><{$item.titlelink}></h3>
            <{if $item.image_path}>
                <div class="article_img">
                    <a href="<{$item.itemurl}>" title="<{$item.title}>">
                        <img src="<{$item.image_path}>" alt="<{$item.title}>"/>
                    </a>
                </div>
                <{$item.summary}>
            <{/if}>            
        </article>
        <!--
        <div class="col-md-4">
        <div class="article_full">
            <div class="article_full_category">
                <{$item.category}>
            </div>

            <{if $item.image_path}>
                <div class="article_full_img_div">
                    <a href="<{$item.itemurl}>" title="<{$item.title}>">
                        <img src="<{$item.image_path}>" alt="<{$item.title}>"/>
                    </a>
                </div>
            <{/if}>
            <div style="padding: 10px;">
                <h4><{$item.titlelink}></h4>
                <{if $display_whowhen_link}>
                    <small><{$item.who_when}> (<{$item.counter}> <{$lang_reads}>)</small>
                <{/if}>
                <div style="margin-top:10px;">
                    <{$item.summary}>
                </div>
                <div class="pull-left" style="margin-top: 15px;">
                    <{if $op != 'preview'}>
                        <span style="float: right; text-align: right;"><{$item.adminlink}></span>
                    <{else}>
                        <span style="float: right;">&nbsp;</span>
                    <{/if}>
                </div>
                <div class="pull-right" style="margin-top: 15px;">
                    <a href="<{$item.itemurl}>" class="btn btn-primary btn-xs"> <{$smarty.const._MD_PUBLISHER_VIEW_MORE}></a>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        </div>
        -->
    <{/foreach}>
    </section>
   </div>
    <!-- End item loop -->

    <!-- end of if $items -->

<{/if}>

<{include file='db:publisher_footer.tpl'}>
