.class Lca/uhn/hl7v2/util/XMLUtils$ClasspathResourceResolver;
.super Ljava/lang/Object;
.source "XMLUtils.java"

# interfaces
.implements Lorg/w3c/dom/ls/LSResourceResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/util/XMLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClasspathResourceResolver"
.end annotation


# instance fields
.field private impl:Lorg/w3c/dom/ls/DOMImplementationLS;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-static {}, Lca/uhn/hl7v2/util/XMLUtils;->getDOMImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/ls/DOMImplementationLS;

    iput-object v0, p0, Lca/uhn/hl7v2/util/XMLUtils$ClasspathResourceResolver;->impl:Lorg/w3c/dom/ls/DOMImplementationLS;

    .line 141
    return-void
.end method


# virtual methods
.method public resolveResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ls/LSInput;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "publicId"    # Ljava/lang/String;
    .param p4, "systemId"    # Ljava/lang/String;
    .param p5, "baseURI"    # Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lca/uhn/hl7v2/util/XMLUtils$ClasspathResourceResolver;->impl:Lorg/w3c/dom/ls/DOMImplementationLS;

    invoke-interface {v0}, Lorg/w3c/dom/ls/DOMImplementationLS;->createLSInput()Lorg/w3c/dom/ls/LSInput;

    move-result-object v0

    .line 146
    .local v0, "lsInput":Lorg/w3c/dom/ls/LSInput;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 147
    .local v1, "is":Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 148
    const/4 v2, 0x0

    return-object v2

    .line 149
    :cond_0
    invoke-interface {v0, v1}, Lorg/w3c/dom/ls/LSInput;->setByteStream(Ljava/io/InputStream;)V

    .line 150
    return-object v0
.end method
