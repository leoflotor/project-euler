#lang racket/base

(define (is-multiple? x y)
  (=
   (modulo x y)
   0))

(define (sum-of-multiples stop [start 0] [acc 0])
  (if (= start stop)
      acc
      (if (not (or (is-multiple? start 3) (is-multiple? start 5)))
          (sum-of-multiples stop (add1 start) acc)
          (sum-of-multiples stop (add1 start) (+ acc start)))))

(provide sum-of-multiples)


