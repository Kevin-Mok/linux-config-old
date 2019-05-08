function java-compile-test
    javac -d out *.java
    and java -jar /home/kevin/java/junit-platform-console-standalone-1.5.0-M1.jar --class-path "$CLASSPATH:out" --scan-class-path
end
