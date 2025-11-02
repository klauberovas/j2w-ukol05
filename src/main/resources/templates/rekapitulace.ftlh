[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Rekapitulace registrace</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="/css/style.css" />
</head>

<body class="bg-light">

[#assign pohlavi = {
"DIVKA": "dívka",
"CHLAPEC": "chlapec"
}]

[#assign turnusy = {
"TURNUS_1": "5. až 11. července",
"TURNUS_2": "14. až 20. července",
"TURNUS_3": "1. až 6. srpna",
"TURNUS_4": "8. až 14. srpna",
"TURNUS_5": "17. až 23. srpna"
}]


<div class="container py-5">
    <div class="card shadow-lg border-0 mx-auto" style="max-width: 600px;">
        <div class="card-body">
            <h1 class="card-title text-center mb-4">Rekapitulace registrace</h1>

            <dl class="row">
                <dt class="col-sm-4">Jméno</dt>
                <dd class="col-sm-8">${form.jmeno}</dd>

                <dt class="col-sm-4">Příjmení</dt>
                <dd class="col-sm-8">${form.prijmeni}</dd>

                <dt class="col-sm-4">Pohlaví</dt>
                <dd class="col-sm-8">${pohlavi[form.pohlavi]}</dd>

                <dt class="col-sm-4">Datum narození</dt>
                <dd class="col-sm-8">${form.datumNarozeni?date?string("dd.MM.yyyy")}</dd>

                <dt class="col-sm-4">Termín tábora</dt>
                <dd class="col-sm-8">${turnusy[form.turnus]}</dd>

                <dt class="col-sm-4">E-mail</dt>
                <dd class="col-sm-8">${form.email?has_content?then(form.email, '-')}</dd>

                <dt class="col-sm-4">Telefon</dt>
                <dd class="col-sm-8">${form.email?has_content?then(form.email, '-')}</dd>
            </dl>

            <div class="text-center mt-4">
                <a href="/" class="btn btn-outline-primary">
                    ◂ Zpět na nový formulář
                </a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
