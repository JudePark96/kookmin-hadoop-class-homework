javac -classpath /usr/local/hadoop/share/hadoop/common/hadoop-common-2.8.0.jar:/usr/local/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-client-core-2.8.0.jar:gson-2.8.0.jar -d wordcount_classes *.java

jar -cvf WordCount.jar -C wordcount_classes/ . 

hdfs dfs -rm -R /home/15/output

hadoop jar WordCount.jar kr.ac.kookmin.cs.bigdata.WordCount /shared-data/reviews_Books_5.json /home/15/output

hdfs dfs -ls /home/15/output

hdfs dfs -cat /home/15/output/part-r-00000

