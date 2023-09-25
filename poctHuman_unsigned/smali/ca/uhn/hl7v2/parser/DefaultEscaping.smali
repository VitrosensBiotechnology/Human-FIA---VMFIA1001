.class public Lca/uhn/hl7v2/parser/DefaultEscaping;
.super Ljava/lang/Object;
.source "DefaultEscaping.java"

# interfaces
.implements Lca/uhn/hl7v2/parser/Escaping;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;
    }
.end annotation


# static fields
.field private static variousEncChars:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lca/uhn/hl7v2/parser/EncodingCharacters;",
            "Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 50
    new-instance v0, Lca/uhn/hl7v2/parser/DefaultEscaping$1;

    .line 51
    nop

    .line 50
    const/4 v1, 0x5

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lca/uhn/hl7v2/parser/DefaultEscaping$1;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/parser/DefaultEscaping;->variousEncChars:Ljava/util/Map;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getEscapeSequences(Lca/uhn/hl7v2/parser/EncodingCharacters;)Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;
    .locals 2
    .param p0, "encChars"    # Lca/uhn/hl7v2/parser/EncodingCharacters;

    .line 241
    sget-object v0, Lca/uhn/hl7v2/parser/DefaultEscaping;->variousEncChars:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;

    .line 242
    .local v0, "escapeSequences":Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;
    if-nez v0, :cond_0

    .line 245
    new-instance v1, Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;

    invoke-direct {v1, p0}, Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;-><init>(Lca/uhn/hl7v2/parser/EncodingCharacters;)V

    move-object v0, v1

    .line 246
    sget-object v1, Lca/uhn/hl7v2/parser/DefaultEscaping;->variousEncChars:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_0
    return-object v0
.end method


# virtual methods
.method public escape(Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "encChars"    # Lca/uhn/hl7v2/parser/EncodingCharacters;

    .line 69
    invoke-static {p2}, Lca/uhn/hl7v2/parser/DefaultEscaping;->getEscapeSequences(Lca/uhn/hl7v2/parser/EncodingCharacters;)Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;

    move-result-object v0

    .line 70
    .local v0, "esc":Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 72
    .local v1, "textLength":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 73
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 73
    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 133
    .end local v3    # "i":I
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 74
    .restart local v3    # "i":I
    :cond_0
    const/4 v4, 0x0

    .line 75
    .local v4, "charReplaced":Z
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 78
    .local v5, "c":C
    const/4 v6, 0x0

    .line 78
    .local v6, "j":I
    :goto_1
    const/4 v7, 0x6

    if-lt v6, v7, :cond_1

    .line 78
    .end local v6    # "j":I
    goto/16 :goto_3

    .line 79
    .restart local v6    # "j":I
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iget-object v8, v0, Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;->characters:[C

    aget-char v8, v8, v6

    if-ne v7, v8, :cond_6

    .line 82
    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    .line 84
    add-int/lit8 v7, v3, 0x1

    if-ge v7, v1, :cond_4

    .line 87
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 88
    .local v7, "nextChar":C
    const/16 v8, 0x2e

    if-eq v7, v8, :cond_3

    const/16 v8, 0x43

    if-eq v7, v8, :cond_3

    const/16 v8, 0x48

    if-eq v7, v8, :cond_2

    const/16 v8, 0x58

    if-eq v7, v8, :cond_3

    const/16 v8, 0x5a

    if-eq v7, v8, :cond_3

    packed-switch v7, :pswitch_data_0

    .line 88
    .end local v7    # "nextChar":C
    goto :goto_2

    .line 107
    .restart local v7    # "nextChar":C
    :cond_2
    :pswitch_0
    add-int/lit8 v8, v3, 0x2

    if-ge v8, v1, :cond_4

    add-int/lit8 v8, v3, 0x2

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_4

    .line 108
    add-int/lit8 v8, v3, 0x2

    .line 109
    .local v8, "nextEscapeIndex":I
    if-lez v8, :cond_4

    .line 110
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p1, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const/4 v4, 0x1

    .line 112
    move v3, v8

    .line 113
    goto :goto_3

    .line 95
    .end local v8    # "nextEscapeIndex":I
    :cond_3
    :pswitch_1
    iget-object v8, v0, Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;->characters:[C

    aget-char v8, v8, v6

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 96
    .restart local v8    # "nextEscapeIndex":I
    if-lez v8, :cond_4

    .line 97
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p1, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const/4 v4, 0x1

    .line 99
    move v3, v8

    .line 100
    goto :goto_3

    .line 124
    .end local v7    # "nextChar":C
    .end local v8    # "nextEscapeIndex":I
    :cond_4
    :goto_2
    iget-object v7, v0, Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;->encodings:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const/4 v4, 0x1

    .line 126
    nop

    .line 129
    .end local v6    # "j":I
    :goto_3
    if-nez v4, :cond_5

    .line 130
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .end local v4    # "charReplaced":Z
    .end local v5    # "c":C
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 78
    .restart local v4    # "charReplaced":Z
    .restart local v5    # "c":C
    .restart local v6    # "j":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unescape(Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;
    .locals 15
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "encChars"    # Lca/uhn/hl7v2/parser/EncodingCharacters;

    move-object/from16 v0, p1

    .line 144
    invoke-virtual/range {p2 .. p2}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getEscapeCharacter()C

    move-result v1

    .line 145
    .local v1, "escapeChar":C
    const/4 v2, 0x0

    .line 146
    .local v2, "foundEscapeChar":Z
    const/4 v3, 0x0

    .line 146
    .local v3, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 152
    .end local v2    # "foundEscapeChar":Z
    .end local v3    # "i":I
    .local v4, "foundEscapeChar":Z
    :goto_1
    move v4, v2

    goto :goto_2

    .line 147
    .end local v4    # "foundEscapeChar":Z
    .restart local v2    # "foundEscapeChar":Z
    .restart local v3    # "i":I
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v1, :cond_c

    .line 148
    const/4 v2, 0x1

    .line 149
    goto :goto_1

    .line 152
    .end local v2    # "foundEscapeChar":Z
    .end local v3    # "i":I
    .restart local v4    # "foundEscapeChar":Z
    :goto_2
    if-nez v4, :cond_1

    .line 153
    return-object v0

    .line 156
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 157
    .local v5, "textLength":I
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v5, 0x14

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v2

    .line 158
    .local v6, "result":Ljava/lang/StringBuilder;
    invoke-static/range {p2 .. p2}, Lca/uhn/hl7v2/parser/DefaultEscaping;->getEscapeSequences(Lca/uhn/hl7v2/parser/EncodingCharacters;)Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;

    move-result-object v7

    .line 159
    .local v7, "esc":Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;
    iget-object v2, v7, Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;->characters:[C

    const/4 v3, 0x4

    aget-char v8, v2, v3

    .line 160
    .local v8, "escape":C
    iget-object v2, v7, Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;->characters:[C

    array-length v9, v2

    .line 161
    .local v9, "encodingsCount":I
    const/4 v2, 0x0

    .line 162
    .local v2, "i":I
    move v10, v2

    .line 162
    .end local v2    # "i":I
    .local v10, "i":I
    :cond_2
    :goto_3
    if-lt v10, v5, :cond_3

    .line 233
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 163
    :cond_3
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 164
    .local v11, "c":C
    if-eq v11, v8, :cond_4

    .line 165
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    add-int/lit8 v10, v10, 0x1

    .line 167
    goto :goto_3

    .line 168
    :cond_4
    const/4 v12, 0x0

    .line 171
    .local v12, "foundEncoding":Z
    const/4 v2, 0x0

    .line 171
    .local v2, "j":I
    :goto_4
    if-lt v2, v9, :cond_5

    .line 171
    .end local v2    # "j":I
    goto :goto_5

    .line 172
    .restart local v2    # "j":I
    :cond_5
    iget-object v3, v7, Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;->encodings:[Ljava/lang/String;

    aget-object v3, v3, v2

    .line 173
    .local v3, "encoding":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    .line 174
    .local v13, "encodingLength":I
    add-int v14, v10, v13

    if-gt v14, v5, :cond_b

    add-int v14, v10, v13

    invoke-virtual {v0, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 175
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 176
    iget-object v14, v7, Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;->characters:[C

    aget-char v14, v14, v2

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    add-int/2addr v10, v13

    .line 178
    const/4 v12, 0x1

    .line 179
    nop

    .line 183
    .end local v2    # "j":I
    .end local v3    # "encoding":Ljava/lang/String;
    .end local v13    # "encodingLength":I
    :goto_5
    if-nez v12, :cond_2

    .line 187
    add-int/lit8 v2, v10, 0x1

    if-ge v2, v5, :cond_a

    .line 188
    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 189
    .local v2, "nextChar":C
    const/16 v3, 0x2e

    if-eq v2, v3, :cond_8

    const/16 v3, 0x43

    if-eq v2, v3, :cond_8

    const/16 v3, 0x48

    if-eq v2, v3, :cond_6

    const/16 v3, 0x58

    if-eq v2, v3, :cond_8

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_8

    packed-switch v2, :pswitch_data_0

    .line 221
    add-int/lit8 v10, v10, 0x1

    .line 225
    .end local v2    # "nextChar":C
    goto :goto_3

    .line 209
    .restart local v2    # "nextChar":C
    :cond_6
    :pswitch_0
    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 210
    .local v3, "closingEscape":I
    add-int/lit8 v13, v10, 0x2

    if-ne v3, v13, :cond_7

    .line 211
    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v0, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 212
    .local v13, "substring":Ljava/lang/String;
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v10, v14

    .line 214
    .end local v13    # "substring":Ljava/lang/String;
    goto :goto_3

    .line 215
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 217
    goto :goto_3

    .line 196
    .end local v3    # "closingEscape":I
    :cond_8
    :pswitch_1
    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 197
    .restart local v3    # "closingEscape":I
    if-lez v3, :cond_9

    .line 198
    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v0, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 199
    .restart local v13    # "substring":Ljava/lang/String;
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v10, v14

    .line 201
    .end local v13    # "substring":Ljava/lang/String;
    goto/16 :goto_3

    .line 202
    :cond_9
    add-int/lit8 v10, v10, 0x1

    .line 204
    goto/16 :goto_3

    .line 226
    .end local v2    # "nextChar":C
    .end local v3    # "closingEscape":I
    :cond_a
    add-int/lit8 v10, v10, 0x1

    .line 226
    .end local v11    # "c":C
    .end local v12    # "foundEncoding":Z
    goto/16 :goto_3

    .line 171
    .local v2, "j":I
    .restart local v11    # "c":C
    .restart local v12    # "foundEncoding":Z
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 146
    .end local v4    # "foundEscapeChar":Z
    .end local v5    # "textLength":I
    .end local v6    # "result":Ljava/lang/StringBuilder;
    .end local v7    # "esc":Lca/uhn/hl7v2/parser/DefaultEscaping$EncLookup;
    .end local v8    # "escape":C
    .end local v9    # "encodingsCount":I
    .end local v10    # "i":I
    .end local v11    # "c":C
    .end local v12    # "foundEncoding":Z
    .local v2, "foundEscapeChar":Z
    .local v3, "i":I
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
