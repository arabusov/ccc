# Cat's C Compiler repository
Cat's C Compiler is intended to be a slow rewrite of the Bruce's C compiler.
First steps are:
  - Make it compilable with gcc 14.2,
  - Use absolute path to executables in the driver,
  - Remove i386 and 6809 CPU support, target 16-bit x86 only,
  - Remove at least for now MS-DOS support besides baremetal `.com` files,
  - Target MINIX 1.7.5 and baremetal.

Later, it would be nice to add:
  - Various memory models,
  - Proper C90 and maybe even C99 support,

but keep it simple and small simultaneously.

