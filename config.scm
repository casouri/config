(use-modules (nongnu packages linux)
             (nongnu system linux-initrd))
(use-modules (gnu)
             (gnu system nss)
			 (gnu services ssh))
(use-service-modules desktop xorg networking)
(use-package-modules certs gnome version-control emacs)

(operating-system
 (host-name "Blanche")
 (timezone "America/Los_Angeles")
 (locale "en_US.utf8")

 (kernel linux)
 (initrd microcode-initrd)
 (firmware (list linux-firmware))

 ;; Choose US English keyboard layout.  The "altgr-intl"
 ;; variant provides dead keys for accented characters.
 (keyboard-layout
  (keyboard-layout "us"
                   #:options '("ctrl:nocaps")
                   #:model "macbook78"))

 ;; Use the UEFI variant of GRUB with the EFI System
 ;; Partition mounted on /boot/efi.
 (bootloader (bootloader-configuration
              (bootloader grub-efi-bootloader)
              (target "/boot/efi")
              (keyboard-layout keyboard-layout)))

 (file-systems (append
                (list (file-system
                       (device "/dev/nvme0n1p2")
                       (mount-point "/")
                       (type "ext4"))
                      (file-system
                       (device "/dev/nvme0n1p1")
                       (mount-point "/boot/efi")
                       (type "vfat"))
                      ;; (file-system
                      ;;  (device "/dev/sda")
                      ;;  (mount-point "/cellar")
                      ;;  (type "ntfs"))
                      )
                %base-file-systems))

 (swap-devices (list "/swapfile"))

 ;; Create user `bob' with `alice' as its initial password.
 (users (append
         (list (user-account
                (name "yuan")
                (comment "Me")
                (group "users")
                (supplementary-groups '("wheel" "netdev"
                                        "audio" "video")))
               (user-account
                (name "xjp")
                (comment "Xi")
                (group "users")
                (supplementary-groups '("wheel" "netdev"
                                        "audio" "video")))
               (user-account
                (name "liu")
                (comment "Liu Tianyi")
                (group "users")
                (supplementary-groups '("wheel" "netdev"
                                        "audio" "video"))))
         %base-user-accounts))

 ;; This is where we specify system-wide packages.
 (packages (append (list
                    nss-certs ; for HTTPS access
                    gvfs ; for user mounts
                    git
                    emacs)
                   %base-packages))

 ;; Add Xfce. Use the "desktop" services, which include the X11 log-in
 ;; service, networking with NetworkManager, and more.
 (services
  (append
   (list (service xfce-desktop-service-type)
         (set-xorg-configuration
          (xorg-configuration
           (keyboard-layout keyboard-layout)))
		 (service openssh-service-type
				  (openssh-configuration
				   (x11-forwarding? #t)
                   (gateway-ports? #t)))
		 (service autossh-service-type
				  (autossh-configuration
				   (user "yuan")
				   (ssh-options
					(list "-T" "-N"
						  "-R" "0.0.0.0:20003:localhost:22"
                          "linode"
						  "-o" "ServerAliveInterval 30"
                          "-o" "ServerAliveCountMax 3")))))
   %desktop-services))

 ;; Allow resolution of '.local' host names with mDNS.
 (name-service-switch %mdns-host-lookup-nss))
