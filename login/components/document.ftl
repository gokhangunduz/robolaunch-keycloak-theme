<#macro kw>
  <title>${msg("loginTitle", (realm.displayName!""))}</title>

  <meta charset="utf-8" />
  <meta name="robots" content="noindex, nofollow" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
  <script src="https://cdn.tailwindcss.com"></script>
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script>
    tailwind.config = {
      theme: {
        extend: {
          colors: {
            white: '#eeeeee',
      dark: '#171717',
      light: {
        100: '#FAFAFA',
        200: '#F6F8FA',
        300: '#E4E4E4',
        400: '#C9C9C9'
      },
      lowContrast: '#A3A2A6',
      layer: {
        100: '#17141C',
        200: '#201D25',
        300: '#252229',
        400: '#2C2930',
        500: '#38353C',
        600: '#413E45'
      },
      primary: {
        100: '#6D0DAA',
        200: '#8510D0',
        300: '#9C1BEE',
        400: '#AC41F0'
      },
      secondary: {
        100: '#276BD1',
        200: '#598FE0',
        300: '#75A2E5',
        400: '#91B5EA'
      },
      green: {
        100: '#116639',
        200: '#1F9254',
        300: '#4BD089',
        400: '#83EFB6'
      },
      yellow: {
        100: '#B18E0F',
        200: '#DBB428',
        300: '#FAD44D',
        400: '#F3D362'
      },
      red: {
        100: '#900509',
        200: '#B72A2E',
        300: '#E34A4E',
        400: '#EF7477'
      }
          }
        }
      }
    }
  </script>
    <style type="text/tailwindcss">
    @layer utilities {
    html , body {
      font-family: "Poppins", sans-serif;
        }
    .robolaunch-bg {
      background: linear-gradient(72.25deg, #35b8fa 0%, #ac2dfe 100%);
        }
        }
  </style>

  <#if properties.meta?has_content>
    <#list properties.meta?split(" ") as meta>
      <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
    </#list>
  </#if>

  <#if properties.favicons?has_content>
    <#list properties.favicons?split(" ") as favicon>
      <link href="${url.resourcesPath}/${favicon?split('==')[0]}" rel="${meta?split('==')[1]}">
    </#list>
  </#if>

  <#if properties.styles?has_content>
    <#list properties.styles?split(" ") as style>
      <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
    </#list>
  </#if>

  <#if properties.scripts?has_content>
    <#list properties.scripts?split(" ") as script>
      <script defer src="${url.resourcesPath}/${script}" type="text/javascript"></script>
    </#list>
  </#if>
</#macro>
