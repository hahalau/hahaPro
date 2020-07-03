FROM java:8
VOLUME /tmp
#编译后的jar包copy到容器中创建到目录内
COPY target/spring-boot-demo-0.0.1-SNAPSHOT.jar demo.jar
RUN bash -c "touch /demo.jar"
EXPOSE 8080
#指定容器启动时要执行的命令1111
ENTRYPOINT ["java","-jar","demo.jar"]
