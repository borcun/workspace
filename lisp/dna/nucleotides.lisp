(declaim (optimize (debug 3) (safety 3) (speed 0)))

;; problem - https://rosalind.info/problems/dna/
(defun count-nucleotide (nucleotides nucleotide)
  (let ((count 0))
    (dotimes (i (length nucleotides) count)
      (when (char= nucleotide (aref nucleotides i))
	(incf count)))))

(defun run-analysis (filepath) 
  (let ((nucleotides "ACGT"))
    (break "here")
    (with-open-file (stream filepath
                            :direction :input
                            :if-does-not-exist nil)
      (when stream
	(let ((content (make-string (file-length stream))))
          (read-sequence content stream)
	  (dotimes (i (length nucleotides))
	    (format t "~A " (count-nucleotide content (aref nucleotides i)))))))))
