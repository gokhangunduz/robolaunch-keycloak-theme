<#macro kw component="button" rest...>
  <div id="cardx"></div>

  <${component}
    id="submit"
    class="text-white w-full h-10 bg-primary-200 rounded hover:bg-primary-400 disabled:bg-gray-500 disabled:cursor-not-allowed"
    <#list rest as attrName, attrValue>
      ${attrName}="${attrValue}"
    </#list>
  >
    <#nested>
  </${component}>
</#macro>
