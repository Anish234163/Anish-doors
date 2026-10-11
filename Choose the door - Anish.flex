import java.util.Scanner;
import java.util.Random;


public class Main {
    public static void main(String[] args) {


        Scanner scanner = new Scanner(System.in);
        Random random = new Random();


        int secretNumber = random.nextInt(100) + 1;
        int attempts = 0;


        System.out.println("🎮 NUMBER GUESSING GAME");
        System.out.println("I have chosen a number between 1 and 100.");
        System.out.println("Try to guess it!");


        while (true) {
            System.out.print("\nEnter your guess: ");
            int guess = scanner.nextInt();
            attempts++;


            if (guess < secretNumber) {
                System.out.println("📈 Too low!");
            }
            else if (guess > secretNumber) {
                System.out.println("📉 Too high!");
            }
            else {
                System.out.println("\n🎉 YOU WIN!");
                System.out.println("The number was: " + secretNumber);
                System.out.println("Attempts: " + attempts);
                break;
            }
        }


        scanner.close();
    }
}