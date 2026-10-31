💃 Dance & Well-Being | Statistical Analysis in R

Does dancing make a difference in students’ well-being?

Dance combines physical activity, music, creativity, and social interaction, but does it actually make a measurable difference in how students feel and function in everyday life?

This was the question we wanted to explore in our university statistics project.

Together with my colleague Jelena Ijačić, I conducted a statistical study investigating the relationship between dance participation and students’ psychological, social, and cognitive functioning.

We designed our own survey, collected responses from 137 students, and used statistical methods to investigate whether students who dance tend to report better outcomes than those who don’t.

This project was completed as part of the Introduction to Statistics course at the Faculty of Mathematics, University of Belgrade, in June 2026.

⸻

 Research Question

Our main goal was to investigate whether students who regularly participate in dance activities differ from non-dancers in six areas:

* Mood — emotional well-being and general mood
* Stress — perceived stress and ability to cope with it
* Self-confidence — confidence and self-perception
* Social connectedness — relationships and sense of belonging
* Memory & concentration — perceived cognitive functioning
* Sleep & energy — sleep quality and energy levels

We wanted to understand whether these differences could be supported by statistical evidence rather than relying only on our initial expectations.

⸻

 Data Collection

We created an anonymous online questionnaire using Google Forms and collected responses from students attending different faculties.

Our final sample included 137 participants:

Group	Participants	Percentage
Students who currently dance	59	43.1%
Students who don’t currently dance	78	56.9%


The questionnaire included questions about dance participation, previous dance experience, training frequency, and students’ self-reported psychological, social, and cognitive characteristics.

We used the responses to explore patterns within the sample and compare the two groups.

⸻

🔬 Statistical Methodology

The project involved several stages of statistical analysis.

1. Descriptive Statistics & Data Visualization

We started by exploring the structure of our sample.

Using R, we created visualizations showing dance participation, previous dance experience, different dance styles, years of experience, and weekly training frequency.

We also compared the average scores of dancers and non-dancers across the six areas included in our research.

2. Constructing Composite Indices

Since characteristics such as self-confidence or social connectedness cannot be measured directly with a single question, we combined related questionnaire items into separate indices.

We then constructed an overall index by assigning equal weight to each of the six components.

This allowed us to summarize the observed characteristics and compare the two groups using a single measure.

3. Checking Internal Consistency

Before interpreting the indices, we evaluated how consistently the questions within each component measured the same characteristic.

For this, we calculated Cronbach’s alpha.

Some components showed satisfactory internal consistency, particularly self-confidence and social connectedness, while others showed weaker results.

We discussed these limitations in our research paper rather than ignoring them.

4. Hypothesis Testing

Our main hypothesis was that students who dance have a higher average overall index than students who don’t.

To investigate this, we:

* Examined the normality assumption.
* Compared group variances using Fisher’s F-test.
* Applied Welch’s two-sample t-test.
* Constructed a 95% confidence interval for the difference between group means.
* Calculated and interpreted the p-value.

These steps allowed us to evaluate whether the observed difference was statistically significant.

⸻

 Results & Findings

Our analysis showed that students who danced had a slightly higher average overall index than students who did not.

Group	Average Overall Index
Dancers	3.383
Non-dancers	3.239
Difference	0.144

However, the hypothesis test produced a p-value of approximately 0.0668.

Since this value was greater than our chosen significance level of 0.05, we did not reject the null hypothesis.

The 95% confidence interval also included zero, supporting the same conclusion.

What does this mean?

Although dancers reported slightly better outcomes on average, the difference was not statistically significant at the 5% level.

This doesn’t necessarily mean that dance has no relationship with well-being. It means that our data did not provide sufficient statistical evidence to confirm the difference.

One interesting observation was that dancers had higher average self-confidence scores, although this descriptive difference was not separately established as statistically significant.

Our findings also need to be interpreted with the limitations of a self-reported survey and the reliability of some questionnaire components in mind.

⸻

 What I Learned

This project gave me the opportunity to experience the statistical research process, from developing an idea and collecting data to choosing appropriate methods and interpreting the results.

One of the most valuable lessons was learning that a meaningful statistical analysis doesn’t always lead to a statistically significant result.

Understanding why a hypothesis cannot be supported by the available evidence is just as important as finding a significant difference.

I also gained practical experience with R, statistical testing, working with survey data, and presenting research findings in a structured academic report written in LaTeX.

⸻

🛠️ Tools & Technologies

* R — statistical analysis, hypothesis testing, and data visualization
* Google Forms — questionnaire design and data collection
* Google Sheets — data organization and preparation
* LaTeX — writing and formatting the research paper

⸻

📄 Research Paper & Presentation

For a more detailed explanation of our methodology, calculations, visualizations, and conclusions, you can explore the complete research paper and presentation.

📕 Research Paper — Full academic report, including the statistical methodology, hypothesis testing, and interpretation of results.

📊 Presentation — A visual summary of our research question, analysis, and main findings.

💻 R Script — Code used for visualizations and statistical calculations.

The research paper and presentation are written in Serbian.

⸻

Authors: Ana Ranković & Jelena Ijačić
Course: Introduction to Statistics
Faculty: Faculty of Mathematics, University of Belgrade
Date: June 2026
