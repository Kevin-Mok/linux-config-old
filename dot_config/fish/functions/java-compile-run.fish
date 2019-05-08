function java-compile-run
    # javac -cp .:../algs4.jar $argv[1].java
    # and java -cp .:../algs4.jar $argv[1]
    javac $argv[1].java
    and java $argv[1]
end
