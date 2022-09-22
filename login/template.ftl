<#import "components/document.ftl" as document>
<#import "components/layout/alerts.ftl" as alerts>
<#import "components/layout/another-way.ftl" as anotherWay>
<#import "components/layout/card.ftl" as card>
<#import "components/layout/card-footer.ftl" as cardFooter>
<#import "components/layout/card-header.ftl" as cardHeader>
<#import "components/layout/card-main.ftl" as cardMain>
<#import "components/layout/container.ftl" as container>
<#import "components/layout/locales.ftl" as locales>
<#import "components/layout/nav.ftl" as nav>
<#import "components/layout/required-fields.ftl" as requiredFields>
<#import "components/layout/title.ftl" as title>
<#import "components/layout/subtitle.ftl" as subtitle>
<#import "components/layout/username.ftl" as username>

<#macro
  registrationLayout
  displayInfo=false
  displayMessage=true
  displayRequiredFields=false
  showAnotherWayIfPresent=true
>
  <html>
    <head>
      <@document.kw />
    </head>
    <body class="bg-layer-200">
      <div id="loader" class="flex justify-center items-center fixed h-screen w-screen top-0 left-0 z-50 bg-layer-200 touch-none  animate__animated">
        <img class="absolute w-16" src="https://raw.githubusercontent.com/robolaunch/trademark/main/logos/svg/rocket.svg" alt="Robolaunch" />
      <img class="animate-spin w-36" src="https://raw.githubusercontent.com/robolaunch/trademark/main/logos/svg/ring.svg" alt="Robolaunch" />
      </div>
      <@container.kw>
        <@card.kw>
          <@cardHeader.kw>
            <@title.kw />
            <#if !(auth?has_content && auth.showUsername() && !auth.showResetCredentials())>
              <@subtitle.kw>
                <#nested "header">
              </@subtitle.kw>
            <#else>
              <@username.kw />
            </#if>
          </@cardHeader.kw>
          <@cardMain.kw>
            <#if displayMessage && message?has_content && (message.type != "warning" || !isAppInitiatedAction??)>
              <@alerts.kw />
            </#if>
            <#nested "form">
            <#if displayRequiredFields>
              <@requiredFields.kw />
            </#if>
            <#if auth?has_content && auth.showTryAnotherWayLink() && showAnotherWayIfPresent>
              <@anotherWay.kw />
            </#if>
          </@cardMain.kw>
          <#if displayInfo>
            <@cardFooter.kw>
              <#nested "info">
            </@cardFooter.kw>
          </#if>
        </@card.kw>
        <@nav.kw>
          <#nested "nav">
          <#if realm.internationalizationEnabled && locale.supported?size gt 1>
            <@locales.kw />
          </#if>
        </@nav.kw>
      </@container.kw>
    </body>
    <script>
      window.location.href = document.evaluate('//*[@id="kc-info-message"]/p[2]/a', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.href
    </script>
    <script>
      setTimeout(function(){
  document.getElementById('loader').classList.add("animate__fadeOut")
}, 3000);
    </script>
  </html>
</#macro>
