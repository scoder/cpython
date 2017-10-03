cimport cython

cimport sre_parse

cpdef _compile(list code, pattern, flags)

@cython.locals(i=Py_ssize_t, k=Py_ssize_t, block=int)
cpdef _optimize_charset(charset, iscased=*, fixup=*, fixes=*)

@cython.locals(i=int)
cpdef _mk_bitmap(bytearray bits, int _CODEBITS=*, _int=*)

cpdef _simple(p)

@cython.locals(i=Py_ssize_t, idx=Py_ssize_t)
cpdef _generate_overlap_table(list prefix)

cpdef _compile_info(list code, p, flags)

@cython.locals(i=Py_ssize_t)
cpdef compile(p, flags=*)
