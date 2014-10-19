---
title       : Calibrating the Philip's infiltration model
subtitle    : 
author      : Paco Alonso
job         : Coursera student
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap, quiz, shiny,mathjax,  interactive]     # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides

--- .class #id

## Disc infiltrometer

<img src="www/PondedDisc.jpg" width="250px" />


--- .class #id

## Disc infiltrometer result

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1.png) 

--- .class #id

## Philip's infiltration model

![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2.png) 
$i(t)=\frac{1}{2 \cdot S \cdot \sqrt{t}} + K$

--- .class #id

## Linearizing

$i(t)=\frac{1}{2 \cdot S \cdot \sqrt{t}} + K$

$i(t)=\frac{1}{2 \cdot S} \cdot \frac{1}{\sqrt{t}} + K$

Transformation:

* $A=\frac{1}{2 \cdot S}$     
* $B=K$  
* $X=\frac{1}{\sqrt{t}}$   
* $Y=i(t)$

Results in:

$Y=A \cdot X + B$

--- .class #id .codefont


## Solving


```r
t=1:30
i=c(6,5.5,5,4.3,3.9,3.5,3.1,3.2,3.2,3.1,2.9,3,2.9,2.7,2.7,2.6,2.5,2.5,
2.7,2.6,2.6,2.6,2.6,2.6,2.6,2.5,2.5,2.5,2.5,2.4)
model=lm(i~{1/sqrt(t)})
S=1/(2*model$coefficients[2]);K=model$coefficients[1]
plot(t,i,xlab="Time(min)",ylab="Infiltration rate (mm/min)");lines(t,1/(2*S*sqrt(t))+K,col="red")
```

![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-3.png) 


--- &radio
## Question 1


Que es que

1. 1
2. _2_
3. 3
4. 4


