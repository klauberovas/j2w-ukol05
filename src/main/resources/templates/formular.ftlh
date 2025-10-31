[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="/css/style.css" />
</head>
<body>
    <main>
        <h1>Registrace na letní dětský tábor</h1>
        <form class="" action="" method="post">
            <label for="jmeno" class="radek">Jméno:</label>
            [@spring.formInput path="form.jmeno" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <label for="prijmeni" class="radek">Příjmení:</label>
            [@spring.formInput path="form.prijmeni" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <label for="datum" class="radek">Datum narození:</label>
            [@spring.formInput path="form.datum" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <div class="radek">Pohlaví:</div>
            <div class="skupina">
                <div>
                    <input id="divka" type="radio" name="pohlavi" value="DIVKA" [#if form.DIVKA! == "DIVKA"]checked[/#if]/>
                    <label for="divka">Dívka</label>
                </div>
                <div>
                    <input id="chlapec" type="radio" name="pohlavi" value="CHLAPEC" [#if form.CHLAPEC! == "CHLAPEC"]checked[/#if]/>
                    <label for="chlapec">chlapec</label>
                </div>
            </div>
            [@spring.bind "form.pohlavi"/]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <label for="datum" class="radek">Zboží:</label>
            [@spring.formSingleSelect path="form.turnus" options={
            "": "",
            "TURNUS_1": "5. až 11. července",
            "TURNUS_2": "14. až 20. července",
            "TURNUS_3": "1. až 6. srpna",
            "TURNUS_4": "8. až 14. srpna",
            "TURNUS_5": "17. až 23. srpna"
            } /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <label for="email" class="radek">E-mail:</label>
            [@spring.formInput path="form.email" fieldType="email" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <label for="telefon" class="radek">Telefon:</label>
            [@spring.formInput path="form.telefon" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <div class="radek controls">
                <button type="submit">Registrovat</button>
            </div>
        </form>
    </main>
</body>
</html>
