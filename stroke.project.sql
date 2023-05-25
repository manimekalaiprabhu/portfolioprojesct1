select * from [dbo].[healthcare-dataset-stroke-data]

---finding older than 60 years stroke
select gender, count(age)
from [dbo].[healthcare-dataset-stroke-data]
where age > 60 and stroke =1
group by gender

--finding younger than 60 yo
select gender, count(age)
from [dbo].[healthcare-dataset-stroke-data]
where age < 60  and stroke =1
group by gender

--finding anyone olderthan 70yo
select gender, count(age)
from [dbo].[healthcare-dataset-stroke-data]
where age >70
group by gender

--finding count of female and male 
select gender, count(gender) as toal
from [dbo].[healthcare-dataset-stroke-data]
group by gender

--finding how many stroke per person
select distinct id, count(stroke)
from [dbo].[healthcare-dataset-stroke-data]
group by id
having count(stroke) > 1

--- finding   male who have stoke with avg sugarlevel
select gender, count([avg_glucose_level]) as no_males
from [dbo].[healthcare-dataset-stroke-data]
where [avg_glucose_level] between 99 and 110
and  gender = 'male'
and stroke = 1
group by gender 

--- finding   female who have stoke with avg sugarlevel 
select gender, count([avg_glucose_level]) as no_females
from [dbo].[healthcare-dataset-stroke-data]
where [avg_glucose_level]  between 99 and 110
and  gender = 'female'
and stroke = 1
group by gender


----finding female avg sugarlavel with heart disease and stroke
select gender, count([heart_disease]) as no_females
from [dbo].[healthcare-dataset-stroke-data]
where [avg_glucose_level]  between 99 and 110
and stroke = 1
and [heart_disease] = 1
group by gender
----finding male avg sugarlavel with heart disease
select gender, count([heart_disease]) as no_females
from [dbo].[healthcare-dataset-stroke-data]
where [avg_glucose_level]  between 99 and 110
and [heart_disease] = 1
group by gender
----finding smoking status 
select [smoking_status], count(stroke), gender 
from [dbo].[healthcare-dataset-stroke-data]
where stroke = 1
group by [smoking_status], gender
----finding hypertension
select [hypertension], count(stroke), gender 
from [dbo].[healthcare-dataset-stroke-data]
where stroke = 1
group by[hypertension], gender
----finding worktype
select[work_type], count(stroke), gender 
from [dbo].[healthcare-dataset-stroke-data]
where stroke = 1
group by[work_type], gender

---[Residence_type]
select[Residence_type], count(stroke), gender 
from [dbo].[healthcare-dataset-stroke-data]
where stroke = 1
group by Residence_type, gender

---checking BMI
select count(stroke), gender 
from [dbo].[healthcare-dataset-stroke-data]
where stroke = 1
and bmi between 18.5 and 24.9
group by  gender

---checking stroke counts
select count(stroke),stroke,gender
from [dbo].[healthcare-dataset-stroke-data]
group by stroke,gender








