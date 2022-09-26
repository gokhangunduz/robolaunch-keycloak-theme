<#macro kw component="button" rest...>
  <div id="cardx"></div>
  <div id="desc" class="rounded rounded-lg pt-1 pb-2 my-6 bg-layer-300 text-sm border border-layer-600 text-lowContrast" >
    <p id="min8">Minimum 8 character.</p>
    <p id="max32">Maximum 32 character.</p>
    <p id="minl">Minimum one lowercase letter.</p>
    <p id="minu">Minimum one uppercase letter.</p>
    <p id="noemail">Password cannot contain mail.</p>
  </div>
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
