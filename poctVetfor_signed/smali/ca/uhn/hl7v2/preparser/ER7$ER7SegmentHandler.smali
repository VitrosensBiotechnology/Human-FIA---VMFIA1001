.class public Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;
.super Ljava/lang/Object;
.source "ER7.java"

# interfaces
.implements Lca/uhn/hl7v2/preparser/ER7$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/preparser/ER7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ER7SegmentHandler"
.end annotation


# instance fields
.field m_encodingChars:Lca/uhn/hl7v2/parser/EncodingCharacters;

.field m_msgMask:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/preparser/DatumPath;",
            ">;"
        }
    .end annotation
.end field

.field m_props:Ljava/util/Properties;

.field m_segmentId:Ljava/lang/String;

.field m_segmentRepIdx:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delim(I)C
    .locals 1
    .param p1, "level"    # I

    .line 190
    if-nez p1, :cond_0

    .line 191
    iget-object v0, p0, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;->m_encodingChars:Lca/uhn/hl7v2/parser/EncodingCharacters;

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getFieldSeparator()C

    move-result v0

    return v0

    .line 192
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 193
    iget-object v0, p0, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;->m_encodingChars:Lca/uhn/hl7v2/parser/EncodingCharacters;

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getRepetitionSeparator()C

    move-result v0

    return v0

    .line 194
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 195
    iget-object v0, p0, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;->m_encodingChars:Lca/uhn/hl7v2/parser/EncodingCharacters;

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getComponentSeparator()C

    move-result v0

    return v0

    .line 196
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 197
    iget-object v0, p0, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;->m_encodingChars:Lca/uhn/hl7v2/parser/EncodingCharacters;

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getSubcomponentSeparator()C

    move-result v0

    return v0

    .line 198
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 199
    iget-object v0, p0, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;->m_encodingChars:Lca/uhn/hl7v2/parser/EncodingCharacters;

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getTruncationCharacter()C

    move-result v0

    return v0

    .line 201
    :cond_4
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public putDatum(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 207
    .local p1, "valNodeKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-direct {v0}, Lca/uhn/hl7v2/preparser/DatumPath;-><init>()V

    .line 208
    .local v0, "valDatumPath":Lca/uhn/hl7v2/preparser/DatumPath;
    iget-object v1, p0, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;->m_segmentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/preparser/DatumPath;->add(Ljava/lang/String;)Lca/uhn/hl7v2/preparser/DatumPath;

    move-result-object v1

    iget v2, p0, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;->m_segmentRepIdx:I

    invoke-virtual {v1, v2}, Lca/uhn/hl7v2/preparser/DatumPath;->add(I)Lca/uhn/hl7v2/preparser/DatumPath;

    .line 209
    const/4 v1, 0x0

    .line 209
    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 216
    .end local v1    # "i":I
    const/4 v1, 0x0

    .line 217
    .local v1, "valDatumPathPassesMask":Z
    iget-object v2, p0, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;->m_msgMask:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 218
    .local v2, "maskIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    :goto_1
    if-nez v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 218
    .end local v2    # "maskIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    goto :goto_2

    .line 220
    .restart local v2    # "maskIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/preparser/DatumPath;->startsWith(Lca/uhn/hl7v2/preparser/DatumPath;)Z

    move-result v1

    goto :goto_1

    .line 223
    .end local v2    # "maskIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    .line 224
    iget-object v2, p0, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;->m_props:Ljava/util/Properties;

    invoke-virtual {v0}, Lca/uhn/hl7v2/preparser/DatumPath;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 225
    :cond_2
    return-void

    .line 211
    .local v1, "i":I
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 212
    .local v2, "itval":I
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v2, 0x1

    :goto_3
    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/preparser/DatumPath;->add(Ljava/lang/Object;)Lca/uhn/hl7v2/preparser/DatumPath;

    .line 209
    .end local v2    # "itval":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public specDepth()I
    .locals 1

    .line 186
    const/4 v0, 0x4

    return v0
.end method
