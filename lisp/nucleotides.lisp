(defvar *nucleotides* "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")

;; problem - https://rosalind.info/problems/dna/
(defun count-nucleotide (nucleotide-list nucleotide)
  (let ((count 0))
    (dotimes (i (length nucleotide-list) count)
      (when (char= nucleotide (aref nucleotide-list i))
	(incf count)))))
