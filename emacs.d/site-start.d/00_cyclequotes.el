(require 'cycle-quotes)

(defhydra hydra-cycle-quotes (global-map "C-x C-'")
  "Cycle Quotes"
  ("'" cycle-quotes))
