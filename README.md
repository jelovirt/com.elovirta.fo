# XSL-FO output for DITA-OT

A DITA-OT plug-in to generate XSL-FO via PDF2 plug-in. The use case for the plug-in is to convert DITA to XSL-FO without
rendering it to e.g. PDF. The generated XSL-FO can then be formatted to final deliverable format in a separate process.

## Usage

Use `fo` transtype to generate XSL-FO. The `pdf.formatter` parameter can be used to define which formatter the generate
XSL-FO will be rendered with.

## Requirements

The plug-in has been developed for DITA-OT 3.3 or newer, but may work with older DITA-OT versions.

## Install

1.  Run the plug-in installation command:
    
    ```bash
    $ dita --install com.elovirta.fo
    ```

## Build

The plug-in doesn't require a separate build step.

## Donating

Support this project and others by [@jelovirt](https://github.com/jelovirt) via [Paypal](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=jarno%40elovirta%2ecom&lc=FI&item_name=Support%20Open%20Source%20work&currency_code=EUR&bn=PP%2dDonationsBF%3abtn_donate_LG%2egif%3aNonHosted).

## License

DITA-OT for XSl-FO plug-in is licensed for use under the [Apache License 2.0](http://www.apache.org/licenses/LICENSE-2.0).
