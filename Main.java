public class Main {
    public static void main(String[] args) {
        MazeGenerator mazeGenerator = new MazeGenerator(Integer.parseInt(args[0]));
        mazeGenerator.generateMaze();

        System.out.println(mazeGenerator.getRawMaze());
    }
}