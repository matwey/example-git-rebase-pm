Reproduce as the following
==========================

```
git checkout v0.2
git branch abc-0.2
git checkout v0.1 
git branch abc-0.1
git checkout abc-0.1
vim LICENSE
git add LICENSE 
git commit -a 
git rebase --preserve-merges --onto abc-0.1 v0.1 abc-0.2
```

Actual result
=============
`git diff abc-0.2 v0.2` gives us the following and building is failing:

```
diff --git a/LICENSE b/LICENSE
deleted file mode 100644
index 297edb3..0000000
--- a/LICENSE
+++ /dev/null
@@ -1,2 +0,0 @@
-Hello, world!
-
diff --git a/mod.c b/mod.c
index e6fa107..e339597 100644
--- a/mod.c
+++ b/mod.c
@@ -2,5 +2,5 @@
 #include "mod.h"
 
 int mod_fun(char* buf, int len) {
-       return -calc_fun(buf, len);
+       return -calc_fun(buf, len, 0);
 }
```

Expected result
===============
```
diff --git a/LICENSE b/LICENSE
deleted file mode 100644
index 297edb3..0000000
--- a/LICENSE
+++ /dev/null
@@ -1,2 +0,0 @@
-Hello, world!
-
```
