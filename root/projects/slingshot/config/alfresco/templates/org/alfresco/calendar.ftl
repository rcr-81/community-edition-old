<#import "import/alfresco-template.ftl" as template />
<@template.header>
<link rel="stylesheet" type="text/css" href="${url.context}/templates/calendar/calendar.css" />
<script type="text/javascript" src="${url.context}/templates/calendar/calendar.js"></script>
</@>

<@template.body>
   <div id="hd">
      <@region id="header" scope="global" protected=true />
      <@region id="title" scope="template" protected=true />
      <@region id="navigation" scope="template" protected=true />
   </div>
   <div id="bd">
        <div class="yui-t1" id="divCalendarWrapper">
           <div id="yui-main">
              <div class="yui-b" id="divCalendarEvents">
               <@region id="toolbar" scope="template" protected=true />
                <@region id="view" scope="template" protected=true />
              </div>
           </div>
           <div class="yui-b" id="divCalendarFilters">
               <@region id="calendar" scope="template" protected=true />
               <@region id="tags" scope="template" protected=true />
           </div>
        </div>
   </div>
</@>

<@template.footer>
   <div id="ft">
      <@region id="footer" scope="global" protected=true />
   </div>
</@>

