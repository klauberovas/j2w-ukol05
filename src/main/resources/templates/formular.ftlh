[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <!-- Bootstrap CDN via jsDelivr -->
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="/css/style.css" />
</head>
<body>
<div class="container my-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <h1>Registrace na letní dětský tábor</h1>
            <form class="p-4 border rounded shadow-sm bg-light" action="" method="post">
                [#--Jméno--]
                <div class="mb-3">
                    <label for="jmeno" class="form-label">Jméno:</label>
                    [@spring.formInput path="form.jmeno" attributes='class="form-control"'/]
                    <div class="error">[@spring.showErrors "<br>"/]</div>
                </div>

                [#--Příjmení--]
                <div class="mb-3">
                    <label for="prijmeni" class="form-label">Příjmení:</label>
                    [@spring.formInput path="form.prijmeni" attributes='class="form-control"'/]
                    <div class="error">[@spring.showErrors "<br>"/]</div>
                </div>

                [#--Datum narození--]
                <div class="mb-3">
                    <label for="datumNarozeni" class="form-label">Datum narození:</label>
                    [@spring.formInput path="form.datumNarozeni" fieldType="date" attributes='class="form-control"  required="true"'/]
                    <div class="error">[@spring.showErrors "<br>"/]</div>
                </div>

                [#--Pohlaví--]
                <div class="mb-3">
                    <label class="form-label d-block">Pohlaví:</label>

                    <div class="form-check form-check-inline">
                        <input
                                class="form-check-input"
                                type="radio"
                                id="divka"
                                name="pohlavi"
                                value="DIVKA"
                                [#if form.pohlavi?? && form.pohlavi == "DIVKA"]checked[/#if]
                        />
                        <label class="form-check-label" for="divka">Dívka</label>
                    </div>

                    <div class="form-check form-check-inline">
                        <input
                                class="form-check-input"
                                type="radio"
                                id="chlapec"
                                name="pohlavi"
                                value="CHLAPEC"
                                [#if form.pohlavi?? && form.pohlavi == "CHLAPEC"]checked[/#if]
                        />
                        <label class="form-check-label" for="chlapec">Chlapec</label>
                    </div>

                    [@spring.bind "form.pohlavi"/]
                    <div class="error">[@spring.showErrors "<br>"/]</div>
                </div>

                [#-- Turnus --]
                <div class="mb-3">
                    <label for="turnus" class="form-label">Turnus:</label>
                    [@spring.formSingleSelect
                    path="form.turnus"
                    options={
                    "": "-- Vyberte termín --",
                    "TURNUS_1": "5. až 11. července",
                    "TURNUS_2": "14. až 20. července",
                    "TURNUS_3": "1. až 6. srpna",
                    "TURNUS_4": "8. až 14. srpna",
                    "TURNUS_5": "17. až 23. srpna"
                    }
                    attributes='class="form-select"'
                    /]
                    <div class="error">[@spring.showErrors "<br>"/]</div>
                </div>

                [#--E-mail--]
                <div class="mb-3">
                    <label for="email" class="form-label">Email:</label>
                    [@spring.formInput path="form.email" fieldType="email" attributes='class="form-control"'/]
                    <div class="error">[@spring.showErrors "<br>"/]</div>
                </div>

                [#--Telefon--]
                <div class="mb-3">
                    <label for="telefon" class="form-label">Telefon:</label>
                    [@spring.formInput path="form.telefon" attributes='class="form-control"'/]
                    <div class="error">[@spring.showErrors "<br>"/]</div>
                </div>

                [#--Tlačítko odeslat--]
                <button type="submit" class="btn btn-primary w-100">Odeslat</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
