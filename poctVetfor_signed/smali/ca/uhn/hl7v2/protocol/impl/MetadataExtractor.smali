.class public Lca/uhn/hl7v2/protocol/impl/MetadataExtractor;
.super Ljava/lang/Object;
.source "MetadataExtractor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFields(Lca/uhn/hl7v2/model/Message;Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .param p0, "theMessage"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Message;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 30
    .local p1, "theTerserPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    .local v0, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lca/uhn/hl7v2/util/Terser;

    invoke-direct {v1, p0}, Lca/uhn/hl7v2/util/Terser;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 32
    .local v1, "terser":Lca/uhn/hl7v2/util/Terser;
    const/4 v2, 0x0

    .line 32
    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 37
    .end local v2    # "i":I
    return-object v0

    .line 33
    .restart local v2    # "i":I
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 34
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, "fieldValue":Ljava/lang/String;
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "fieldValue":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
