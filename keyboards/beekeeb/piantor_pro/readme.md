# piantor_pro

![piantor_pro](imgur.com image replace me!)

*A short description of the keyboard/project*

* Keyboard Maintainer: [beekeeb](https://github.com/beekeeb)
* Hardware Supported: *The PCBs, controllers supported*
* Hardware Availability: *Links to where you can find this hardware*

Make example for this keyboard (after setting up your build environment):

    make piantor_pro:default

Flashing example for this keyboard:

    make piantor_pro:default:flash

See the [build environment setup](https://docs.qmk.fm/#/getting_started_build_tools) and the [make instructions](https://docs.qmk.fm/#/getting_started_make_guide) for more information. Brand new to QMK? Start with our [Complete Newbs Guide](https://docs.qmk.fm/#/newbs).

## Bootloader

Enter the bootloader in 3 ways:

* **Bootmagic reset**: Hold down the key at (0,0) in the matrix (usually the top left key or Escape) and plug in the keyboard
* **Physical reset button**: Briefly press the button on the back of the PCB - some may have pads you must short instead
* **Keycode in layout**: Press the key mapped to `QK_BOOT` if it is available

qmk compile -kb beekeeb/piantor_pro -km vial
cd \\wsl.localhost\Ubuntu-24.04\home\hentzd\repos\vial-qmk-piantor-pro\.build

## Building (macOS)

This is a 36-key (`LAYOUT_split_3x5_3`) board; the customized keymap lives in the
`vial` keymap. Build command:

```sh
qmk compile -kb beekeeb/piantor_pro -km vial
```

The keg-only ARM toolchain must be on `PATH` (already added to `~/.zshrc`):

```sh
export PATH="/opt/homebrew/opt/arm-none-eabi-gcc@8/bin:/opt/homebrew/opt/arm-none-eabi-binutils/bin:$PATH"
```

Or run the helper script from the repo root, which compiles and drops the
firmware into `builds/`:

```sh
./build-piantor.sh
```

The resulting firmware is `builds/beekeeb_piantor_pro_vial.uf2`.