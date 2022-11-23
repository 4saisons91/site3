function calcul_moyenne()
{
    var note1= prompt("donner la premier note: ");
    var coef1= prompt("donnez le premier coeficient");
    var note2= prompt("donner la deuxième note: ");
    var coef2= prompt("donnez le deuxième coeficient");
    var note3= prompt("donner la troisième note: ");
    var coef3= prompt("donnez le troisième coeficient");

    var somme= Number(note1)+Number(note2)+Number(note3);
    var somme_coef= Number(coef1)+Number(coef2)+Number(coef3);

    

    document.write ("Voici la somme: "+ somme+ "<br>");
    var moyenne= somme/somme_coef;

    document.write("Voici la moyenne:" + moyenne+ "<br>");

    if (moyenne<10)
    document.write("Vous êtes redoublant");
    else
    document.write("Vous êtes admis");

}

function test_age()
{
    var age= prompt("donnez votre âge");
    if (age<18)
    {
    document.write("Vous êtes mineur");
    document.bgColor="red";
    }
    else
    {
    document.write("Vous êtes majeur");
    document.bgColor="green";
    }
}

function simple_affichage()
{
    var nom=prompt("donner votre nom");
    var prenom=prompt("donner votre prenom");

    document.write("<div style='color: red; background-color: skyblue; padding: 3px; border-radius: 5px; margin:auto; border: 2px solid blue; width:300px;'>");
    document.write("Bonjour"+" " + prenom+ " "+ nom);
    document.write("</div>");
}

function test_couleur()
{
    var couleur= prompt("donnez une couleur");
    if (couleur=="rouge" ||couleur=="ROUGE" ||couleur=="Rouge")
    
    document.body.style.background="red";
    
    else if (couleur=="bleu" ||couleur=="Bleu"||couleur=="Bleu")
    
    document.body.style.background="blue";

    else if (couleur=="vert" ||couleur=="VERT" ||couleur=="Vert")
    
    document.body.style.background="green";
    
    else
    document.write("couleur non comprise");


}
