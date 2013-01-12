(defn read-info [s]
  [s (class (read-string s)) (read-string s)])
