.class Lca/uhn/hl7v2/parser/DefaultEscaping$1;
.super Ljava/util/LinkedHashMap;
.source "DefaultEscaping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/parser/DefaultEscaping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Lca/uhn/hl7v2/parser/EncodingCharacters;",
        "Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final maxSize:I


# direct methods
.method constructor <init>(IFZ)V
    .locals 3
    .param p1, "$anonymous0"    # I
    .param p2, "$anonymous1"    # F
    .param p3, "$anonymous2"    # Z

    .line 50
    invoke-direct {p0, p1, p2, p3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 54
    new-instance v0, Ljava/lang/Integer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lca/uhn/hl7v2/parser/Escape;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".maxSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1000"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lca/uhn/hl7v2/parser/DefaultEscaping$1;->maxSize:I

    .line 1
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lca/uhn/hl7v2/parser/EncodingCharacters;",
            "Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;",
            ">;)Z"
        }
    .end annotation

    .line 58
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lca/uhn/hl7v2/parser/EncodingCharacters;Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/DefaultEscaping$1;->size()I

    move-result v0

    iget v1, p0, Lca/uhn/hl7v2/parser/DefaultEscaping$1;->maxSize:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
