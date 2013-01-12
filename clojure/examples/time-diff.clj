(defn time-diff-f [t]
   (let [now (System/currentTimeMillis)
         res (- now t)]
     (println (str "time now: " now " diff is " res))
     res))

(defmacro time-diff-m [t]
  `(let [now# (System/currentTimeMillis)
         res# (- now# ~t)]
     (println (str "time now: " now# " diff is " res#))
     res#))

(time-diff-f (- (System/currentTimeMillis) 132))
(time-diff-m (- (System/currentTimeMillis) 132))