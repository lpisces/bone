$(document).ready(function(){
  KindEditor.ready(function(K){
    K.create('#brand_summary', {"width":500,"height":100,"class":["kindeditor","optional"],"allowFileManager":true,"uploadJson":"/kindeditor/upload","fileManagerJson":"/kindeditor/filemanager","items":["source","|","fontname","fontsize","|","forecolor","hilitecolor","bold","italic","underline","removeformat","|","justifyleft","justifycenter","justifyright","insertorderedlist","insertunorderedlist","|","emoticons","image","link"]});
    K.create('#brand_description', {"width":500,"height":200,"class":["kindeditor","optional"],"allowFileManager":true,"uploadJson":"/kindeditor/upload","fileManagerJson":"/kindeditor/filemanager","items":["source", "|", "fontname","fontsize","|","forecolor","hilitecolor","bold","italic","underline","removeformat","|","justifyleft","justifycenter","justifyright","insertorderedlist","insertunorderedlist","|","emoticons","image","link"]});
  });
});
