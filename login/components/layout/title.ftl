<#macro kw>
  <div class="hidden font-bold text-center text-2xl">
    ${kcSanitize(msg("loginTitleHtml", (realm.displayNameHtml!"")))?no_esc}
  </div>
</#macro>
