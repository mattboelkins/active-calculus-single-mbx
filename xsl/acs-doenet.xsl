<?xml version="1.0" encoding="UTF-8" ?>
<!-- **********************************************************************-->
<!-- Copyright 2012-2018                                                   -->
<!-- Matthew Boelkins                                                      -->
<!--                                                                       -->
<!-- This file is part of Active Calculus.                                 -->
<!--                                                                       -->
<!-- Permission is granted to copy, distribute and/or modify this document -->
<!-- under the terms of the Creative Commons BY-SA license.  The work      -->
<!-- may be used for free by any party so long as attribution is given to  -->
<!-- the author(s), the work and its derivatives are used in the spirit of -->
<!-- "share and share alike".  All trademarks are the registered marks of  -->
<!-- their respective owners.                                              -->
<!-- **********************************************************************-->

<!-- ACS customizations for HTML runs -->

<!DOCTYPE xsl:stylesheet [
    <!ENTITY % entities SYSTEM "./core/entities.ent">
    %entities;
]>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:import href="./core/pretext-html.xsl"/>
    <xsl:template match="interactive[@doenet]" >
        <div class="doenetml-applet">
            <script type="text/doenetml">
                <xsl:value-of select="text()"/>
            </script>
        </div>
        <link rel="stylesheet" href="https://dev.doenet.org/cdn/style.css"> </link>
        <script>
            <xsl:text>
                if (!window.onDoenetLoad) {
                    window.onDoenetLoad = () => {
                        document.querySelectorAll(".doenetml-applet").forEach((elm) => {
                                window.renderDoenetToContainer(elm);
                    });
                }
                window.renderDoenetToContainer || document.write('&lt;script onload="onDoenetLoad()" type="module" src="https://dev.doenet.org/cdn/doenet-standalone.js">&lt;\/script>');
            }
        </xsl:text>
        </script>
    </xsl:template>
</xsl:stylesheet>
