<%--
  User: zhoujingjie
  Date: 2017/8/30
  Time: 15:16
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="${cdn}/assets/simplemd/simplemde.min.css?v=${pluginInfo.version}"/>
<link rel="stylesheet" href="${ctx}/proxy/${pluginInfo.id}/assets/css/markdown.css?v=${v}"/>
<textarea class="hide" id="md-view">${doc.content}</textarea>
<div id="md-view-html" class="editor-preview "></div>
<script>
    (function(){
        requirejs(['${cdn}/assets/simplemd/marked.min.js?v=${pluginInfo.version}'],function(marked){
            var html = marked($('#md-view').val());
             $('#md-view-html').html(html);
        });
    })();
</script>