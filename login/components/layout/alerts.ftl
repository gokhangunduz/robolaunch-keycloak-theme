<#macro kw>
  <#switch message.type>
    <#case "error">
      <#assign color="bg-red-100 text-red-600">
      <#break>
    <#case "info">
      <#assign color="bg-blue-100 text-blue-600">
      <#break>
    <#case "success">
      <#assign color="bg-green-100 text-green-600">
      <#break>
    <#case "warning">
      <#assign color="hidden bg-orange-100 text-light-100 bg-layer-100 border border-layer-600 ">
      <#break>
    <#default>
      <#assign color="bg-blue-100 text-blue-600">
  </#switch>

  <div class="${color} my-4 p-4 rounded-lg text-sm" role="alert">
    <span>${kcSanitize(message.summary)?no_esc}</span>
  </div>
</#macro>
