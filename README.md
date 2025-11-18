# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
The modulo counter divides by 2 * Count because the output only toggles on rollover, and it takes two full toggles to complete one full output period

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
The ring counter outputs all 1s on the first cycle because it must initialize itself with a valid pattern before shifting, and also then the design forces this known state on startup

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
With a 50 MHz clock, we think you would need a ring counter about 50,000 bits wide to bring the output down to around 1 kHz

