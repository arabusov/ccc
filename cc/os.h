/* os.h - source/target operating system dependencies for bcc */

/* Copyright (C) 1992 Bruce Evans */

/*
  must have unix-near-compatible creat, open, read, write and close

  source O/S's supported:
    default:
      *IX
    special:
  target O/S's supported:
    default:
      *IX
    special:
*/

/* defaults */

#define CREATPERMS 0666		/* permissions for creat */
#define EOL 10			/* source newline */
#define EOLTO 10		/* target newline */
#define DIRCHAR '/'
#define DIRSTRING "/"
#define isabspath(fnameptr, tempcptr) \
	((*(tempcptr) = *(fnameptr)) == DIRCHAR)
