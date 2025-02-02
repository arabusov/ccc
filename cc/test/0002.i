void memcpy(d, s, sz)
        char *d, *s;
        unsigned sz;
{
        while (*d++ = *s++, --sz);
}

char src[] = { 1, 2, 3 };
main()
{
        char d[3];
        memcpy(d, src, 3);
        return(0);
}
