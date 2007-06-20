<#assign isImage=node.isDocument && (node.mimetype = "image/gif" || node.mimetype = "image/jpeg" || node.mimetype = "image/png")>
<table width="100%" cellpadding="2" cellspacing="0" border="0" onclick="event.cancelBubble=true;">
   <tr>
      <td>
         <div class="docPreview">
      	   <#if node.isDocument && !isImage>
      	      <#assign c=cropContent(node.properties.content, 2048)>
      	      <#if c?length != 0>
                  ${c?html?replace('$', '<br>', 'rm')}<#if (c?length >= 2048)>...</#if>
      	      </#if>
            <#elseif isImage>
	            <center><a href="${url.context}${node.url}" target="new"><img src="${url.context}${node.url}" height=140 border=0></a></center>
      	   </#if>
         </div>
      </td>
      <td width="24"></td>
      <td width="300">
         <table width="100%" cellpadding="0" cellspacing="0">
            <tr>
<#if node.isLocked >
               <td class="docAction docActionLocked">(Locked)</td>
<#elseif hasAspect(node, "cm:workingcopy") == 1>
               <td class="docAction docActionCheckin" <#if node.hasPermission("CheckIn")>onclick='event.cancelBubble=true;MyDocs.checkinItem("${node.name}", "${node.nodeRef}");'</#if>>Check In</td>
<#else>
               <td class="docAction docActionCheckout" <#if node.hasPermission("CheckOut")>onclick='event.cancelBubble=true;MyDocs.checkoutItem("${node.name}", "${node.nodeRef}");'</#if>>Check Out</td>
</#if>
               <td class="docAction docActionEditDetails">Edit Details</td>
            </tr>
            <tr>
               <td class="docAction docActionUpdate">Update</td>
               <td class="docAction docActionViewContent" onclick="window.open('${url.context}${node.downloadUrl}', '_blank');">View Content</td>
            </tr>
            <tr>
               <td class="docAction docActionDelete" <#if node.hasPermission("Delete")>onclick='event.cancelBubble=true;MyDocs.deleteItem("${node.name}", "${node.nodeRef}");'</#if>>Delete</td>
<#assign navurl='/navigate/showDocDetails/' + node.nodeRef.storeRef.protocol + '/' + node.nodeRef.storeRef.identifier + '/' + node.nodeRef.id>
               <td class="docAction docActionMoreActions" onclick="window.open('${url.context}${navurl}', '_blank');">More Actions...</td>
            </tr>
         </table>
      </td>
   </tr>
</table>
