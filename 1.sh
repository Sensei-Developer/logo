# Sync ROM source
repo init --depth=1 --no-repo-verify -u https://github.com/ExodusOS/android.git -b lineage-19.1 -g default,-mips,-darwin,-notdefault
git clone https://github.com/Sensei-Developer/local_manifest --depth 1 -b lineage-19.1_lavender .repo/local_manifests
repo sync --detach --current-branch --no-tags --force-remove-dirty --force-sync -j8

# Build ROM
make installclean
. build/envsetup.sh
breakfast lineage_lavender-userdebug
brunch lavender
