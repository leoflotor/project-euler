#lang racket

(require rackunit
         "problem_001.rkt")

(check-equal? (sum-of-multiples 0 10) 23 "Sum multiples from 0 up to 10")

