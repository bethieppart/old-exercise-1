rm -rf /data/exercise_1/w205_exercise_1
git clone https://github.com/bethieppart/w205_exercise_1.git
cd w205_exercise_1
gunzip Timely.and.Effective.Care.-.Hospital.csv.gz
tail -n +2 Hospital.General.Information.csv > hospitals.csv
tail -n +2 Timely.and.Effective.Care.-.Hospital.csv > effective.csv
tail -n +2 Readmissions.and.Deaths.-.Hospital.csv > readmissions.csv
tail -n +2 Measure.Dates.csv > measures.csv
tail -n +2 hvbp_hcahps_05_28_2015.csv > surveys.csv
hdfs dfs -rm -r -f /user/w205/hospital_compare1
hdfs dfs -mkdir /user/w205/hospital_compare1
hdfs dfs -mkdir /user/w205/hospital_compare1/hdfshospitals
hdfs dfs -mkdir /user/w205/hospital_compare1/hdfseffective
hdfs dfs -mkdir /user/w205/hospital_compare1/hdfsreadmissions
hdfs dfs -mkdir /user/w205/hospital_compare1/hdfsmeasures
hdfs dfs -mkdir /user/w205/hospital_compare1/hdfssurveys
hdfs dfs -put hospitals.csv /user/w205/hospital_compare1/hdfshospitals
hdfs dfs -put effective.csv /user/w205/hospital_compare1/hdfseffective
hdfs dfs -put readmissions.csv /user/w205/hospital_compare1/hdfsreadmissions
hdfs dfs -put measures.csv /user/w205/hospital_compare1/hdfsmeasures
hdfs dfs -put surveys.csv /user/w205/hospital_compare1/hdfssurveys
