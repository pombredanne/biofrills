# NB: Cython doesn't support the "yield" keyword yet, and struggles with
# generators.  This is scheduled to be fixed in Cython 0.15

from cpython cimport bool
# from libcpp cimport bool


blosum62 = {
        ('W', 'F') : 1, ('L', 'R') : -2, ('S', 'P') : -1, ('V', 'T') : 0, 
        ('Q', 'Q') : 5, ('N', 'A') : -2, ('Z', 'Y') : -2, ('W', 'R') : -3, 
        ('Q', 'A') : -1, ('S', 'D') : 0, ('H', 'H') : 8, ('S', 'H') : -1, 
        ('H', 'D') : -1, ('L', 'N') : -3, ('W', 'A') : -3, ('Y', 'M') : -1, 
        ('G', 'R') : -2, ('Y', 'I') : -1, ('Y', 'E') : -2, ('B', 'Y') : -3, 
        ('Y', 'A') : -2, ('V', 'D') : -3, ('B', 'S') : 0, ('Y', 'Y') : 7, 
        ('G', 'N') : 0, ('E', 'C') : -4, ('Y', 'Q') : -1, ('Z', 'Z') : 4, 
        ('V', 'A') : 0, ('C', 'C') : 9, ('M', 'R') : -1, ('V', 'E') : -2, 
        ('T', 'N') : 0, ('P', 'P') : 7, ('V', 'I') : 3, ('V', 'S') : -2, 
        ('Z', 'P') : -1, ('V', 'M') : 1, ('T', 'F') : -2, ('V', 'Q') : -2, 
        ('K', 'K') : 5, ('P', 'D') : -1, ('I', 'H') : -3, ('I', 'D') : -3, 
        ('T', 'R') : -1, ('P', 'L') : -3, ('K', 'G') : -2, ('M', 'N') : -2, 
        ('P', 'H') : -2, ('F', 'Q') : -3, ('Z', 'G') : -2, ('X', 'L') : -1, 
        ('T', 'M') : -1, ('Z', 'C') : -3, ('X', 'H') : -1, ('D', 'R') : -2, 
        ('B', 'W') : -4, ('X', 'D') : -1, ('Z', 'K') : 1, ('F', 'A') : -2, 
        ('Z', 'W') : -3, ('F', 'E') : -3, ('D', 'N') : 1, ('B', 'K') : 0, 
        ('X', 'X') : -1, ('F', 'I') : 0, ('B', 'G') : -1, ('X', 'T') : 0, 
        ('F', 'M') : 0, ('B', 'C') : -3, ('Z', 'I') : -3, ('Z', 'V') : -2, 
        ('S', 'S') : 4, ('L', 'Q') : -2, ('W', 'E') : -3, ('Q', 'R') : 1, 
        ('N', 'N') : 6, ('W', 'M') : -1, ('Q', 'C') : -3, ('W', 'I') : -3, 
        ('S', 'C') : -1, ('L', 'A') : -1, ('S', 'G') : 0, ('L', 'E') : -3, 
        ('W', 'Q') : -2, ('H', 'G') : -2, ('S', 'K') : 0, ('Q', 'N') : 0, 
        ('N', 'R') : 0, ('H', 'C') : -3, ('Y', 'N') : -2, ('G', 'Q') : -2, 
        ('Y', 'F') : 3, ('C', 'A') : 0, ('V', 'L') : 1, ('G', 'E') : -2, 
        ('G', 'A') : 0, ('K', 'R') : 2, ('E', 'D') : 2, ('Y', 'R') : -2, 
        ('M', 'Q') : 0, ('T', 'I') : -1, ('C', 'D') : -3, ('V', 'F') : -1, 
        ('T', 'A') : 0, ('T', 'P') : -1, ('B', 'P') : -2, ('T', 'E') : -1, 
        ('V', 'N') : -3, ('P', 'G') : -2, ('M', 'A') : -1, ('K', 'H') : -1, 
        ('V', 'R') : -3, ('P', 'C') : -3, ('M', 'E') : -2, ('K', 'L') : -2, 
        ('V', 'V') : 4, ('M', 'I') : 1, ('T', 'Q') : -1, ('I', 'G') : -4, 
        ('P', 'K') : -1, ('M', 'M') : 5, ('K', 'D') : -1, ('I', 'C') : -1, 
        ('Z', 'D') : 1, ('F', 'R') : -3, ('X', 'K') : -1, ('Q', 'D') : 0, 
        ('X', 'G') : -1, ('Z', 'L') : -3, ('X', 'C') : -2, ('Z', 'H') : 0, 
        ('B', 'L') : -4, ('B', 'H') : 0, ('F', 'F') : 6, ('X', 'W') : -2, 
        ('B', 'D') : 4, ('D', 'A') : -2, ('S', 'L') : -2, ('X', 'S') : 0, 
        ('F', 'N') : -3, ('S', 'R') : -1, ('W', 'D') : -4, ('V', 'Y') : -1, 
        ('W', 'L') : -2, ('H', 'R') : 0, ('W', 'H') : -2, ('H', 'N') : 1, 
        ('W', 'T') : -2, ('T', 'T') : 5, ('S', 'F') : -2, ('W', 'P') : -4, 
        ('L', 'D') : -4, ('B', 'I') : -3, ('L', 'H') : -3, ('S', 'N') : 1, 
        ('B', 'T') : -1, ('L', 'L') : 4, ('Y', 'K') : -2, ('E', 'Q') : 2, 
        ('Y', 'G') : -3, ('Z', 'S') : 0, ('Y', 'C') : -2, ('G', 'D') : -1, 
        ('B', 'V') : -3, ('E', 'A') : -1, ('Y', 'W') : 2, ('E', 'E') : 5, 
        ('Y', 'S') : -2, ('C', 'N') : -3, ('V', 'C') : -1, ('T', 'H') : -2, 
        ('P', 'R') : -2, ('V', 'G') : -3, ('T', 'L') : -1, ('V', 'K') : -2, 
        ('K', 'Q') : 1, ('R', 'A') : -1, ('I', 'R') : -3, ('T', 'D') : -1, 
        ('P', 'F') : -4, ('I', 'N') : -3, ('K', 'I') : -3, ('M', 'D') : -3, 
        ('V', 'W') : -3, ('W', 'W') : 11, ('M', 'H') : -2, ('P', 'N') : -2, 
        ('K', 'A') : -1, ('M', 'L') : 2, ('K', 'E') : 1, ('Z', 'E') : 4, 
        ('X', 'N') : -1, ('Z', 'A') : -1, ('Z', 'M') : -1, ('X', 'F') : -1, 
        ('K', 'C') : -3, ('B', 'Q') : 0, ('X', 'B') : -1, ('B', 'M') : -3, 
        ('F', 'C') : -2, ('Z', 'Q') : 3, ('X', 'Z') : -1, ('F', 'G') : -3, 
        ('B', 'E') : 1, ('X', 'V') : -1, ('F', 'K') : -3, ('B', 'A') : -2, 
        ('X', 'R') : -1, ('D', 'D') : 6, ('W', 'G') : -2, ('Z', 'F') : -3, 
        ('S', 'Q') : 0, ('W', 'C') : -2, ('W', 'K') : -3, ('H', 'Q') : 0, 
        ('L', 'C') : -1, ('W', 'N') : -4, ('S', 'A') : 1, ('L', 'G') : -4, 
        ('W', 'S') : -3, ('S', 'E') : 0, ('H', 'E') : 0, ('S', 'I') : -2, 
        ('H', 'A') : -2, ('S', 'M') : -1, ('Y', 'L') : -1, ('Y', 'H') : 2, 
        ('Y', 'D') : -3, ('E', 'R') : 0, ('X', 'P') : -2, ('G', 'G') : 6, 
        ('G', 'C') : -3, ('E', 'N') : 0, ('Y', 'T') : -2, ('Y', 'P') : -3, 
        ('T', 'K') : -1, ('A', 'A') : 4, ('P', 'Q') : -1, ('T', 'C') : -1, 
        ('V', 'H') : -3, ('T', 'G') : -2, ('I', 'Q') : -3, ('Z', 'T') : -1, 
        ('C', 'R') : -3, ('V', 'P') : -2, ('P', 'E') : -1, ('M', 'C') : -1, 
        ('K', 'N') : 0, ('I', 'I') : 4, ('P', 'A') : -1, ('M', 'G') : -3, 
        ('T', 'S') : 1, ('I', 'E') : -3, ('P', 'M') : -2, ('M', 'K') : -1, 
        ('I', 'A') : -1, ('P', 'I') : -3, ('R', 'R') : 5, ('X', 'M') : -1, 
        ('L', 'I') : 2, ('X', 'I') : -1, ('Z', 'B') : 1, ('X', 'E') : -1, 
        ('Z', 'N') : 0, ('X', 'A') : 0, ('B', 'R') : -1, ('B', 'N') : 3, 
        ('F', 'D') : -3, ('X', 'Y') : -1, ('Z', 'R') : 0, ('F', 'H') : -1, 
        ('B', 'F') : -3, ('F', 'L') : 0, ('X', 'Q') : -1, ('B', 'B') : 4,
}

# Make the matrix complete/symmetrical by filling in missing values
# (to avoid double-checking in score_pairwise)
for key, val in blosum62.items():
    blosum62[key[::-1]] = val


cpdef float score_pairwise(aseq, bseq):
    """Compute pairwise distances between two sequences (raw strings)."""
    assert len(aseq) == len(bseq)

    # Affine gap penalties -- default values from EMBOSS needle/water
    cdef float GAP_OPEN = -10.0
    cdef float GAP_EXTEND = -0.5
    GAP_CHARS = frozenset('-.')

    cdef float score = 0.0
    cdef bool in_gap = True   # Don't apply the opening penalty to the N-terminal gap

    for ares, bres in zip(aseq.upper(), bseq.upper()):
        if ares in GAP_CHARS and bres in GAP_CHARS:
            # Both are gaps -- this happens in multiple sequence alignments
            continue
        match = blosum62.get((ares, bres), None)
        if match is None:
            assert GAP_CHARS.intersection((ares, bres)), \
                    "Expected one gap in: " + str((ares, bres))
            # Gap
            if not in_gap:
                score += GAP_OPEN
                in_gap = True
            score += GAP_EXTEND
        else:
            in_gap = False
            score += match

    if in_gap:
        # Correct for a penalty on the C-terminal gap
        score -= GAP_OPEN

    return score


def identity_abs(aseq, bseq):
    """Compute absolute identity (# matching sites) between sequence strings."""
    assert len(aseq) == len(bseq)
    GAP_CHARS = frozenset('-.')
    cdef int tot = 0
    for a, b in zip(aseq, bseq):
        if not (a in GAP_CHARS and b in GAP_CHARS) \
           and a == b:
            tot += 1

