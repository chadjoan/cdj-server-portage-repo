# cdj-server

### A Portage repository.

Many of these packages/ebuilds will have patches to make things work on a hardened-musl system.  Such packages are likely temporary in nature and will become obsolete (and probably get removed) when the official hardened musl adopts the patches or upstream fixes their code.  There is a small chance that some of these might be poor quality patches that are good enough for my purposes, but would not be acceptable in the hardened musl repository.

Other packages/ebuilds might be used to track specific git commits in an upstream project.  The `sys-fs/zfs` and `sys-fs/zfs-kmod` packages are examples of such things.  This allows me to get versions that are more recent than the project's releases, yet maintain the ability to re-merge the exact same version at a later date (not possible with 9999 versions).  This also gives me a way to screen commits so that I only select ones that pass all of upstream's CI tests, which is also not possible with the 9999 version.
