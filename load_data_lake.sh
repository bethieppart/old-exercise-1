git clone https://github.com/bethieppart/w205_exercise_1.git
cd w205_exercise_1
gunzip Timely.and.Effective.Care.-.Hospital.csv.gz
tail -n +2 Hospital.General.Information.csv > hospitals.csv
tail -n +2 Timely.and.Effective.Care.-.Hospital.csv > effective.csv
tail -n +2 Readmissions.and.Deaths.-.Hospital.csv > readmissions.csv
tail -n +2 Measure.Dates.csv > measures.csv
tail -n +2 hvbp_hcahps_05_28_2015.csv > surveys.csv
hdfs dfs -put hospitals.csv /user/w205/hospital_compare
hdfs dfs -put effective.csv /user/w205/hospital_compare
hdfs dfs -put readmissions.csv /user/w205/hospital_compare
hdfs dfs -put measures.csv /user/w205/hospital_compare
hdfs dfs -put surveys.csv /user/w205/hospital_compare
