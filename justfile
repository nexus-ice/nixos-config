[private]
default:
	@just --list

# Build System
deploy:
	sudo nixos-rebuild switch --flake .

# Debug Build System
debug:
	sudo nixos-rebuild switch --flake . --show-trace --verbose

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
	nix-collect-garbage --delete-old

# Build Host Vault
vault:
	nixos-rebuild switch --flake .#vault --target-host root@vault
	
# Build Host MediaHive
mediahive:
	nixos-rebuild switch --flake .#mediahive --target-host root@mediahive

# Build all Hosts
hosts: vault mediahive

# Build all Systems
all: deploy vault mediahive
