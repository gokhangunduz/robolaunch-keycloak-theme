<#macro kw component="button" rest...>
  <${component}
    class="text-white w-full  h-10 bg-primary-200 rounded hover:bg-primary-400"
    <#list rest as attrName, attrValue>
      ${attrName}="${attrValue}"
    </#list>
  >
    <#nested>
  </${component}>
</#macro>