PREFIX := /usr/local
BINDIR := $(PREFIX)/bin
SYSCONFDIR := /etc
HOOKDIR := $(SYSCONFDIR)/pacman.d/hooks

INSTALL := install

PROGRAMS := kernel-install-latest
HOOKS := 99-kernel-install.hook

install:
	$(INSTALL) -d $(BINDIR)
	$(INSTALL) --mode=0755 $(PROGRAMS) $(BINDIR)/
	$(INSTALL) -d $(HOOKDIR)
	$(INSTALL) --mode=0644 $(HOOKS) $(HOOKDIR)/

uninstall:
	$(RM) $(foreach prog,$(PROGRAMS),$(BINDIR)/$(prog))
	$(RM) $(foreach hook,$(HOOKS),$(HOOKDIR)/$(hook))
