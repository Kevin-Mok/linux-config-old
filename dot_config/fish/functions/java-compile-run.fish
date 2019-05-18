function java-compile-run
    # javac -d out $argv[1].java
    javac -d out *.java
    and java -cp "$CLASSPATH:out" $argv[1]
end
