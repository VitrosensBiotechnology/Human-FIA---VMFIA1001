.class public Lca/uhn/hl7v2/preparser/XML$StopParsingException;
.super Lorg/xml/sax/SAXException;
.source "XML.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/preparser/XML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StopParsingException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    const-string v0, "ca.uhn.hl7.....StopParsingException"

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method
