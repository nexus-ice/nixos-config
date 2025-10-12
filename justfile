[private]
default:
	@just --list

# Build System
deploy:
	sudo nixos-rebuild switch --flake .

# Debug Build System
debug:
	nixos-rebuild switch --flake . --show-trace --verbose

# Update Flake
up:
	nix flake update

# Show History
history:
	nix profile history --profile /nix/var/nix/profiles/system

# remove all generations older than 7 days
clean:
	sudo nix profile wipe-history --profile /nix/var/nix/profiles/system  --older-than 7d
  
# garbage collect all unused nix store entries
gc:
	sudo nix-collect-garbage --delete-old
