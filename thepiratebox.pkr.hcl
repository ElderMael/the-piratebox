source "arm-image" "raspios" {
  iso_checksum = "sha256:35f1d2f4105e01f4ca888ab4ced6912411e82a2539c53c9e4e6b795f25275a1f"
  iso_url      = "https://downloads.raspberrypi.org/raspios_lite_arm64/images/raspios_lite_arm64-2022-04-07/2022-04-04-raspios-bullseye-arm64-lite.img.xz"
}

build {
  sources = [
    "source.arm-image.raspios",
  ]

  provisioner "shell" {
    inline = [
      "apt-get update",
      "curl -sfL https://get.k3s.io | sh -",
    ]
  }
}
