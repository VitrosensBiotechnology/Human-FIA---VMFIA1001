.class public Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XML.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/preparser/XML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HL7MessageHandler"
.end annotation


# instance fields
.field m_chars:Ljava/lang/StringBuffer;

.field m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

.field m_depthWithinUsefulElement:I

.field m_depthWithinUselessElement:I

.field m_lastDumpedPath:Lca/uhn/hl7v2/preparser/DatumPath;

.field m_msgID:Ljava/lang/StringBuffer;

.field public m_msgMask:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lca/uhn/hl7v2/preparser/DatumPath;",
            ">;"
        }
    .end annotation
.end field

.field public m_props:Ljava/util/Properties;

.field m_segmentId2nextRepIdx:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected m_startedDocument:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 126
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_props:Ljava/util/Properties;

    .line 52
    iput-object v0, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_msgMask:Ljava/util/Collection;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_startedDocument:Z

    .line 80
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_msgID:Ljava/lang/StringBuffer;

    .line 81
    new-instance v0, Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-direct {v0}, Lca/uhn/hl7v2/preparser/DatumPath;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    .line 84
    new-instance v0, Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-direct {v0}, Lca/uhn/hl7v2/preparser/DatumPath;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_lastDumpedPath:Lca/uhn/hl7v2/preparser/DatumPath;

    .line 90
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_segmentId2nextRepIdx:Ljava/util/SortedMap;

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_depthWithinUsefulElement:I

    iput v0, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_depthWithinUselessElement:I

    .line 124
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_chars:Ljava/lang/StringBuffer;

    .line 128
    invoke-virtual {p0}, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->clear()V

    .line 129
    return-void
.end method

.method protected static tryToGrowDocLocationFromElementName(Ljava/lang/StringBuffer;Lca/uhn/hl7v2/preparser/DatumPath;Ljava/util/Map;Lca/uhn/hl7v2/preparser/DatumPath;Ljava/lang/String;)Z
    .locals 7
    .param p0, "msgID"    # Ljava/lang/StringBuffer;
    .param p1, "curPath"    # Lca/uhn/hl7v2/preparser/DatumPath;
    .param p3, "lastDumpedPath"    # Lca/uhn/hl7v2/preparser/DatumPath;
    .param p4, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Lca/uhn/hl7v2/preparser/DatumPath;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lca/uhn/hl7v2/preparser/DatumPath;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 266
    .local p2, "segmentId2nextRepIdx":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 268
    .local v0, "ok":Z
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 270
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1, p4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 272
    const/4 v0, 0x1

    .line 273
    goto/16 :goto_2

    .line 274
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v3, 0x2e

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 279
    invoke-virtual {p1, p4}, Lca/uhn/hl7v2/preparser/DatumPath;->add(Ljava/lang/String;)Lca/uhn/hl7v2/preparser/DatumPath;

    .line 281
    invoke-interface {p2, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lca/uhn/hl7v2/preparser/DatumPath;->add(Ljava/lang/Object;)Lca/uhn/hl7v2/preparser/DatumPath;

    goto :goto_0

    .line 284
    :cond_1
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Lca/uhn/hl7v2/preparser/DatumPath;->add(Ljava/lang/Object;)Lca/uhn/hl7v2/preparser/DatumPath;

    .line 286
    :goto_0
    invoke-virtual {p1}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lca/uhn/hl7v2/preparser/DatumPath;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_2
    const/4 v0, 0x1

    .line 289
    goto/16 :goto_2

    .line 290
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p1}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 292
    invoke-virtual {p1}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v1

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Lca/uhn/hl7v2/preparser/DatumPath;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 297
    :try_start_0
    invoke-virtual {p4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 296
    nop

    .line 299
    .local v1, "fieldIdxFromElementName":I
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v3}, Lca/uhn/hl7v2/preparser/DatumPath;->add(Ljava/lang/Object;)Lca/uhn/hl7v2/preparser/DatumPath;

    .line 302
    invoke-virtual {p3}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v3

    if-lt v3, v4, :cond_4

    .line 303
    invoke-virtual {p3, v5}, Lca/uhn/hl7v2/preparser/DatumPath;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 304
    nop

    .line 303
    if-ne v3, v1, :cond_4

    .line 307
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x3

    invoke-virtual {p3, v3}, Lca/uhn/hl7v2/preparser/DatumPath;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v2}, Lca/uhn/hl7v2/preparser/DatumPath;->add(Ljava/lang/Object;)Lca/uhn/hl7v2/preparser/DatumPath;

    .line 308
    goto :goto_1

    .line 310
    :cond_4
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v3}, Lca/uhn/hl7v2/preparser/DatumPath;->add(Ljava/lang/Object;)Lca/uhn/hl7v2/preparser/DatumPath;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_1
    const/4 v0, 0x1

    .line 313
    .end local v1    # "fieldIdxFromElementName":I
    goto :goto_2

    :catch_0
    move-exception v1

    .line 315
    goto :goto_2

    .line 316
    :cond_5
    invoke-virtual {p1}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v1

    if-eq v1, v4, :cond_6

    invoke-virtual {p1}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 320
    :cond_6
    :try_start_1
    invoke-virtual {p4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 319
    nop

    .line 321
    .local v1, "idxFromElementName":I
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v2}, Lca/uhn/hl7v2/preparser/DatumPath;->add(Ljava/lang/Object;)Lca/uhn/hl7v2/preparser/DatumPath;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 322
    const/4 v0, 0x1

    .line 323
    .end local v1    # "idxFromElementName":I
    goto :goto_2

    :catch_1
    move-exception v1

    .line 326
    :cond_7
    :goto_2
    return v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 429
    iget-object v0, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_msgID:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v0}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 430
    iget-object v0, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_chars:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 432
    :cond_0
    return-void
.end method

.method clear()V
    .locals 3

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_startedDocument:Z

    .line 135
    iget-object v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_msgID:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_msgID:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 136
    iget-object v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v1}, Lca/uhn/hl7v2/preparser/DatumPath;->clear()Lca/uhn/hl7v2/preparser/DatumPath;

    .line 139
    iget-object v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_lastDumpedPath:Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v1}, Lca/uhn/hl7v2/preparser/DatumPath;->clear()Lca/uhn/hl7v2/preparser/DatumPath;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    invoke-virtual {v1, v2}, Lca/uhn/hl7v2/preparser/DatumPath;->add(Ljava/lang/String;)Lca/uhn/hl7v2/preparser/DatumPath;

    move-result-object v1

    const/16 v2, -0x2a

    invoke-virtual {v1, v2}, Lca/uhn/hl7v2/preparser/DatumPath;->add(I)Lca/uhn/hl7v2/preparser/DatumPath;

    move-result-object v1

    invoke-virtual {v1, v2}, Lca/uhn/hl7v2/preparser/DatumPath;->add(I)Lca/uhn/hl7v2/preparser/DatumPath;

    move-result-object v1

    invoke-virtual {v1, v2}, Lca/uhn/hl7v2/preparser/DatumPath;->add(I)Lca/uhn/hl7v2/preparser/DatumPath;

    move-result-object v1

    invoke-virtual {v1, v2}, Lca/uhn/hl7v2/preparser/DatumPath;->add(I)Lca/uhn/hl7v2/preparser/DatumPath;

    move-result-object v1

    invoke-virtual {v1, v2}, Lca/uhn/hl7v2/preparser/DatumPath;->add(I)Lca/uhn/hl7v2/preparser/DatumPath;

    .line 140
    iget-object v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_segmentId2nextRepIdx:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->clear()V

    .line 141
    const/4 v1, -0x1

    iput v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_depthWithinUsefulElement:I

    .line 142
    iput v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_depthWithinUselessElement:I

    .line 143
    iget-object v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_chars:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_chars:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 144
    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "ok":Z
    iget-boolean v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_startedDocument:Z

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->clear()V

    .line 165
    const/4 v0, 0x1

    .line 168
    :cond_0
    if-nez v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->clear()V

    .line 170
    new-instance v1, Lca/uhn/hl7v2/preparser/XML$StopParsingException;

    invoke-direct {v1}, Lca/uhn/hl7v2/preparser/XML$StopParsingException;-><init>()V

    throw v1

    .line 172
    :cond_1
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "ok":Z
    iget-boolean v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_startedDocument:Z

    if-eqz v1, :cond_7

    .line 335
    iget v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_depthWithinUselessElement:I

    if-ltz v1, :cond_0

    .line 336
    iget v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_depthWithinUselessElement:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_depthWithinUselessElement:I

    .line 337
    const/4 v0, 0x1

    .line 338
    goto/16 :goto_1

    .line 340
    :cond_0
    iget-object v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_msgID:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    iget-object v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v1}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_msgID:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 344
    iget-object v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_msgID:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_msgID:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 347
    :cond_1
    const/4 v0, 0x1

    .line 348
    goto :goto_0

    .line 349
    :cond_2
    iget-object v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_msgID:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v1}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 350
    invoke-virtual {p0}, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->tryToDumpDataToProps()V

    .line 352
    iget-object v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v1}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 354
    iget-object v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v1, v2}, Lca/uhn/hl7v2/preparser/DatumPath;->setSize(I)Lca/uhn/hl7v2/preparser/DatumPath;

    .line 355
    const/4 v0, 0x1

    .line 356
    goto :goto_0

    .line 357
    :cond_3
    iget-object v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v1}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 359
    iget-object v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v1, v3}, Lca/uhn/hl7v2/preparser/DatumPath;->setSize(I)Lca/uhn/hl7v2/preparser/DatumPath;

    .line 360
    const/4 v0, 0x1

    .line 361
    goto :goto_0

    .line 362
    :cond_4
    iget-object v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v1}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v1}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 364
    :cond_5
    iget-object v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    iget-object v2, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v2}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lca/uhn/hl7v2/preparser/DatumPath;->setSize(I)Lca/uhn/hl7v2/preparser/DatumPath;

    .line 365
    const/4 v0, 0x1

    .line 369
    :cond_6
    :goto_0
    iget v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_depthWithinUsefulElement:I

    if-ltz v1, :cond_7

    .line 370
    iget v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_depthWithinUsefulElement:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_depthWithinUsefulElement:I

    .line 374
    :cond_7
    :goto_1
    if-nez v0, :cond_8

    .line 375
    invoke-virtual {p0}, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->clear()V

    .line 376
    new-instance v1, Lca/uhn/hl7v2/preparser/XML$StopParsingException;

    invoke-direct {v1}, Lca/uhn/hl7v2/preparser/XML$StopParsingException;-><init>()V

    throw v1

    .line 378
    :cond_8
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;

    .line 444
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 449
    throw p1
.end method

.method public ignoreableWhitespace([CII)V
    .locals 0
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 438
    invoke-virtual {p0, p1, p2, p3}, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->characters([CII)V

    .line 439
    return-void
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "ok":Z
    iget-boolean v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_startedDocument:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_props:Ljava/util/Properties;

    if-eqz v1, :cond_0

    .line 150
    const/4 v1, 0x1

    iput-boolean v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_startedDocument:Z

    .line 151
    const/4 v0, 0x1

    .line 154
    :cond_0
    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->clear()V

    .line 156
    new-instance v1, Lca/uhn/hl7v2/preparser/XML$StopParsingException;

    invoke-direct {v1}, Lca/uhn/hl7v2/preparser/XML$StopParsingException;-><init>()V

    throw v1

    .line 158
    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "ok":Z
    iget-boolean v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_startedDocument:Z

    if-eqz v1, :cond_8

    .line 188
    iget-object v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_chars:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_chars:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 190
    iget v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_depthWithinUselessElement:I

    if-ltz v1, :cond_0

    .line 191
    iget v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_depthWithinUselessElement:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_depthWithinUselessElement:I

    .line 192
    goto/16 :goto_4

    .line 194
    :cond_0
    iget-object v1, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v1}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v1

    .line 195
    .local v1, "oldCurPathSize":I
    iget-object v2, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_msgID:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    .line 196
    iget-object v5, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_segmentId2nextRepIdx:Ljava/util/SortedMap;

    iget-object v6, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_lastDumpedPath:Lca/uhn/hl7v2/preparser/DatumPath;

    .line 195
    invoke-static {v2, v4, v5, v6, p3}, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->tryToGrowDocLocationFromElementName(Ljava/lang/StringBuffer;Lca/uhn/hl7v2/preparser/DatumPath;Ljava/util/Map;Lca/uhn/hl7v2/preparser/DatumPath;Ljava/lang/String;)Z

    move-result v2

    .line 196
    if-eqz v2, :cond_6

    .line 198
    iget-object v2, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v2}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v2

    if-le v2, v1, :cond_7

    .line 201
    iget v2, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_depthWithinUsefulElement:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_7

    .line 206
    const/4 v2, 0x0

    .line 207
    .local v2, "curPathStartsWithAMaskElem":Z
    iget-object v4, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_msgMask:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 208
    .local v4, "maskIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    :goto_0
    if-nez v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 208
    .end local v4    # "maskIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    goto :goto_1

    .line 211
    .restart local v4    # "maskIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    :cond_1
    iget-object v5, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/preparser/DatumPath;->startsWith(Lca/uhn/hl7v2/preparser/DatumPath;)Z

    move-result v5

    .line 210
    move v2, v5

    goto :goto_0

    .line 214
    .end local v4    # "maskIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 215
    iput v3, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_depthWithinUsefulElement:I

    goto :goto_4

    .line 220
    :cond_3
    const/4 v4, 0x0

    .line 221
    .local v4, "aMaskElemStartsWithCurPath":Z
    iget-object v5, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_msgMask:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 222
    .local v5, "maskIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    :goto_2
    if-nez v4, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 222
    .end local v5    # "maskIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    goto :goto_3

    .line 225
    .restart local v5    # "maskIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lca/uhn/hl7v2/preparser/DatumPath;

    iget-object v7, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/preparser/DatumPath;->startsWith(Lca/uhn/hl7v2/preparser/DatumPath;)Z

    move-result v6

    .line 224
    move v4, v6

    goto :goto_2

    .line 228
    .end local v5    # "maskIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    :cond_5
    :goto_3
    if-nez v4, :cond_7

    .line 230
    iput v3, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_depthWithinUselessElement:I

    .line 231
    iget-object v3, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v3, v1}, Lca/uhn/hl7v2/preparser/DatumPath;->setSize(I)Lca/uhn/hl7v2/preparser/DatumPath;

    .line 239
    .end local v2    # "curPathStartsWithAMaskElem":Z
    .end local v4    # "aMaskElemStartsWithCurPath":Z
    goto :goto_4

    .line 241
    :cond_6
    iput v3, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_depthWithinUselessElement:I

    .line 243
    .end local v1    # "oldCurPathSize":I
    :cond_7
    :goto_4
    const/4 v0, 0x1

    .line 246
    :cond_8
    if-nez v0, :cond_9

    .line 247
    invoke-virtual {p0}, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->clear()V

    .line 248
    new-instance v1, Lca/uhn/hl7v2/preparser/XML$StopParsingException;

    invoke-direct {v1}, Lca/uhn/hl7v2/preparser/XML$StopParsingException;-><init>()V

    throw v1

    .line 250
    :cond_9
    return-void
.end method

.method protected tryToDumpDataToProps()V
    .locals 4

    .line 385
    iget-object v0, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v0}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget v0, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_depthWithinUselessElement:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 408
    iget-object v0, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_lastDumpedPath:Lca/uhn/hl7v2/preparser/DatumPath;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/preparser/DatumPath;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v2, v1}, Lca/uhn/hl7v2/preparser/DatumPath;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_lastDumpedPath:Lca/uhn/hl7v2/preparser/DatumPath;

    iget-object v2, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v0, v2}, Lca/uhn/hl7v2/preparser/DatumPath;->numbersLessThan(Lca/uhn/hl7v2/preparser/DatumPath;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    :cond_0
    iget v0, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_depthWithinUsefulElement:I

    if-ltz v0, :cond_1

    .line 413
    iget-object v0, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_props:Ljava/util/Properties;

    iget-object v2, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v2}, Lca/uhn/hl7v2/preparser/DatumPath;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_chars:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 414
    iget-object v0, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_lastDumpedPath:Lca/uhn/hl7v2/preparser/DatumPath;

    iget-object v2, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_curPath:Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v0, v2}, Lca/uhn/hl7v2/preparser/DatumPath;->copy(Lca/uhn/hl7v2/preparser/DatumPath;)V

    .line 415
    iget-object v0, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_chars:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_chars:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 419
    :cond_1
    return-void
.end method
