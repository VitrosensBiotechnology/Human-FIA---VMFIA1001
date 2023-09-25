.class Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;
.super Ljava/lang/Object;
.source "DefaultEscaping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/parser/DefaultEscaping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncLookup"
.end annotation


# instance fields
.field characters:[C

.field encodings:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lca/uhn/hl7v2/parser/EncodingCharacters;)V
    .locals 7
    .param p1, "ec"    # Lca/uhn/hl7v2/parser/EncodingCharacters;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const/4 v0, 0x7

    new-array v1, v0, [C

    iput-object v1, p0, Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;->characters:[C

    .line 264
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;->encodings:[Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;->characters:[C

    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getFieldSeparator()C

    move-result v1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    .line 268
    iget-object v0, p0, Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;->characters:[C

    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getComponentSeparator()C

    move-result v1

    const/4 v2, 0x1

    aput-char v1, v0, v2

    .line 269
    iget-object v0, p0, Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;->characters:[C

    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getSubcomponentSeparator()C

    move-result v1

    const/4 v2, 0x2

    aput-char v1, v0, v2

    .line 270
    iget-object v0, p0, Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;->characters:[C

    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getRepetitionSeparator()C

    move-result v1

    const/4 v2, 0x3

    aput-char v1, v0, v2

    .line 271
    iget-object v0, p0, Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;->characters:[C

    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getEscapeCharacter()C

    move-result v1

    const/4 v2, 0x4

    aput-char v1, v0, v2

    .line 273
    iget-object v0, p0, Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;->characters:[C

    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getTruncationCharacter()C

    move-result v1

    const/4 v2, 0x5

    aput-char v1, v0, v2

    .line 274
    iget-object v0, p0, Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;->characters:[C

    const/4 v1, 0x6

    const/16 v3, 0xd

    aput-char v3, v0, v1

    .line 275
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    .line 276
    .local v0, "codes":[C
    const/4 v3, 0x0

    .line 276
    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_0

    .line 286
    .end local v3    # "i":I
    iget-object v3, p0, Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;->encodings:[Ljava/lang/String;

    const-string v4, "#"

    aput-object v4, v3, v2

    .line 287
    iget-object v2, p0, Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;->encodings:[Ljava/lang/String;

    const-string v3, "\\X000d\\"

    aput-object v3, v2, v1

    .line 288
    return-void

    .line 277
    .restart local v3    # "i":I
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .local v4, "seq":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getEscapeCharacter()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    aget-char v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getEscapeCharacter()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    iget-object v5, p0, Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;->encodings:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 276
    .end local v4    # "seq":Ljava/lang/StringBuilder;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :array_0
    .array-data 2
        0x46s
        0x53s
        0x54s
        0x52s
        0x45s
        0x4cs
    .end array-data
.end method
