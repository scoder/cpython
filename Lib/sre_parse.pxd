cimport cython

cdef class Pattern:
    cdef public:
        object flags
        object str
        dict groupdict
        list groupwidths
        object lookbehindgroups

    cpdef opengroup(self, name=*)
    cpdef closegroup(self, Py_ssize_t gid, p)
    cpdef checkgroup(self, gid)
    cpdef checklookbehindgroup(self, gid, source)


cdef class SubPattern:
    cdef public:
        object pattern
        list data
        object width

    cpdef dump(self, Py_ssize_t level=*)
    cpdef insert(self, Py_ssize_t index, code)
    cpdef append(self, code)
    cpdef tuple getwidth(self)


cdef class Tokenizer:
    cdef public:
        bint istext
        object string
        object decoded_string
        Py_ssize_t index
        object next

    cpdef __next(self)
    cpdef bint match(self, Py_UCS4 char)
    cpdef Py_UCS4 get(self)
    cpdef getwhile(self, Py_ssize_t n, charset)
    cpdef getuntil(self, terminator)
    cpdef Py_ssize_t tell(self)
    cpdef seek(self, Py_ssize_t index)
    cpdef error(self, msg, offset=*)


cpdef _uniq(list items)

@cython.locals(this=unicode)
cpdef _parse(Tokenizer source, state, bint verbose, Py_ssize_t nested, bint first=*)

cpdef _parse_sub(Tokenizer source, state, bint verbose, Py_ssize_t nested)

cpdef parse(object str, flags=*, pattern=*)
