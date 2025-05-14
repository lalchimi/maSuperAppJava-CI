package com.maventdd.app;

public class App {

    public static void main(String[] args) {
        System.out.println("Bienvenue dans la calculatrice !");

        // Vérifier que deux arguments ont été passés
        if (args.length != 2) {
            System.out.println("Erreur : deux arguments sont requis.");
            System.out.println("Usage : java App <entier1> <entier2>");
            System.exit(1);
        }

        // Essayer de convertir les arguments en entiers
        try {
            int a = Integer.parseInt(args[0]);
            int b = Integer.parseInt(args[1]);

            // Créer une instance de la Calculatrice et effectuer l'addition
            Calculatrice calc = new Calculatrice();
            int result = calc.additionner(a, b);
            System.out.println("Le résultat est : " + result);

        } catch (NumberFormatException e) {
            System.out.println("Erreur : Les arguments doivent être des nombres entiers.");
            System.exit(1);
        }
    }
}
