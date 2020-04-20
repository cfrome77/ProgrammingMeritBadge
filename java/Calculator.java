import java.util.Scanner;

public class Calculator {
    public static void main(String[] args)
    {
        int num1;
        int num2;
        String operation;

        Scanner input = new Scanner(System.in);

        System.out.println("please enter the first number");
        num1 = input.nextInt();

        System.out.println("please enter the second number");
        num2 = input.nextInt();

        Scanner op = new Scanner(System.in);

        System.out.println("Please enter an operation");
        operation = op.next();
        
        switch (operation) {
            case "+":
                System.out.println(add(num1,num2));
                break;
            case "-":
                System.out.println(sub(num1,num2));
                break;      
            default:
                System.out.println("Illigal Operation");
        }

        // Close the input scanners
        input.close();
        op.close();
    }
    
    public static int add(int x, int y)
    {
        int result = x + y;
        return result;
    }
    
    public static int sub(int x, int y)
    {
        int result = x - y;
        return result;
    }
}