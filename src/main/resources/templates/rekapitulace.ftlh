[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Rekapitulace uskutečněné registrace</title>
    <link rel="stylesheet" href="/style.css"/>
</head>
<body>
<div class="container">
    <div class="">
        <h1>Rekapitulace</h1>
        [#if form.jmeno?? && form.prijmeni]
             ${form.jmeno} ${form.prijmeni}
        [/#if]
    </div>
</div>
</body>
</html>
