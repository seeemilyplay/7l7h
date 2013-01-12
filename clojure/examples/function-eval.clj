(def DEBUG false)

(defn if-debug [in]
  (if DEBUG
    in
    (println "do nothing")))

(if-debug (println "do this"))
