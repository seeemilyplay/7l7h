(defmacro bench [expr]
  `(let [start# (System/currentTimeMillis)
         ret# ~expr]
     (println (str "Duration: " (- (System/currentTimeMillis) start#)) "ms")
     ret#))

(bench (map (fn [x] (mod x 3)) (range 1 1000)))