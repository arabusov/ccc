memcpy(d, s, sz)
        char *d, *s;
        unsigned sz;
{
        while (*d++ = *s++, --sz);
}

int src[] = { 1, 2, 3 };
main()
{
        int d[3];
        memcpy(d, src, 3);
        return(0);
}
