.class public Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;
.super Ljava/lang/Object;
.source "FormattedTextEncoder.java"


# instance fields
.field private myBuffer:Ljava/lang/StringBuilder;

.field private myInBold:I

.field private myInCenter:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private addAmpersand()V
    .locals 2

    .line 44
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myBuffer:Ljava/lang/StringBuilder;

    const-string v1, "&amp;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    return-void
.end method

.method private addBreak()V
    .locals 2

    .line 48
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myBuffer:Ljava/lang/StringBuilder;

    const-string v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    return-void
.end method

.method private addEndNoBreak()V
    .locals 2

    .line 52
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myBuffer:Ljava/lang/StringBuilder;

    const-string v1, "</nobr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    return-void
.end method

.method private addGt()V
    .locals 2

    .line 40
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myBuffer:Ljava/lang/StringBuilder;

    const-string v1, "&gt;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    return-void
.end method

.method private addHighAscii(C)V
    .locals 2
    .param p1, "nextChar"    # C

    .line 56
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myBuffer:Ljava/lang/StringBuilder;

    const-string v1, "&#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myBuffer:Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    return-void
.end method

.method private addLt()V
    .locals 2

    .line 36
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myBuffer:Ljava/lang/StringBuilder;

    const-string v1, "&lt;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    return-void
.end method

.method private addSpace()V
    .locals 2

    .line 62
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myBuffer:Ljava/lang/StringBuilder;

    const-string v1, "&nbsp;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    return-void
.end method

.method private addStartCenter()V
    .locals 2

    .line 66
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myBuffer:Ljava/lang/StringBuilder;

    const-string v1, "<center>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    return-void
.end method

.method private addStartNoBreak()V
    .locals 2

    .line 70
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myBuffer:Ljava/lang/StringBuilder;

    const-string v1, "<nobr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    return-void
.end method

.method private closeCenterIfNeeded()V
    .locals 2

    .line 74
    iget-boolean v0, p0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myInCenter:Z

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myBuffer:Ljava/lang/StringBuilder;

    const-string v1, "</center>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_0
    return-void
.end method

.method private endBold()V
    .locals 3

    .line 296
    const/4 v0, 0x0

    .line 296
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myInBold:I

    if-lt v0, v1, :cond_0

    .line 299
    .end local v0    # "i":I
    const/4 v0, 0x0

    iput v0, p0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myInBold:I

    .line 300
    return-void

    .line 297
    .restart local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myBuffer:Ljava/lang/StringBuilder;

    const-string v2, "</b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getInstanceHtml()Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;
    .locals 1

    .line 316
    new-instance v0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;-><init>()V

    return-object v0
.end method

.method private startBold()V
    .locals 2

    .line 303
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myBuffer:Ljava/lang/StringBuilder;

    const-string v1, "<b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget v0, p0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myInBold:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myInBold:I

    .line 305
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p1, "theInput"    # Ljava/lang/String;

    move-object/from16 v0, p0

    .line 88
    move-object/from16 v1, p1

    if-nez v1, :cond_0

    .line 89
    const/4 v2, 0x0

    return-object v2

    .line 92
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, v0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myBuffer:Ljava/lang/StringBuilder;

    .line 93
    const/4 v2, 0x1

    .line 94
    .local v2, "myAtStartOfLine":Z
    const/4 v3, 0x0

    iput-boolean v3, v0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myInCenter:Z

    .line 95
    const/4 v4, 0x1

    .line 96
    .local v4, "myWordWrap":Z
    const/4 v5, 0x0

    .line 97
    .local v5, "myCurrentLineOffset":I
    const/4 v6, 0x0

    .line 98
    .local v6, "myTemporaryIndent":I
    const/4 v7, 0x0

    .line 99
    .local v7, "myIndent":I
    const/4 v8, 0x0

    .line 100
    .local v8, "myNeedBreakBeforeNextText":Z
    const/4 v9, 0x0

    .line 101
    .local v9, "myInDiv":Z
    iput v3, v0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myInBold:I

    .line 103
    const/4 v10, 0x0

    .line 103
    .local v10, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v10, v11, :cond_3

    .line 281
    .end local v10    # "i":I
    invoke-direct/range {p0 .. p0}, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->endBold()V

    .line 283
    if-nez v4, :cond_1

    .line 284
    invoke-direct/range {p0 .. p0}, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->addEndNoBreak()V

    .line 286
    :cond_1
    invoke-direct/range {p0 .. p0}, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->closeCenterIfNeeded()V

    .line 288
    if-eqz v9, :cond_2

    .line 289
    iget-object v3, v0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myBuffer:Ljava/lang/StringBuilder;

    const-string v10, "</div>"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_2
    iget-object v3, v0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 105
    .restart local v10    # "i":I
    :cond_3
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 106
    .local v11, "nextChar":C
    const/4 v12, 0x1

    .line 108
    .local v12, "handled":Z
    const/16 v13, 0x5c

    if-eq v11, v13, :cond_4

    .line 229
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 111
    :cond_4
    add-int/lit8 v13, v10, 0x1

    .line 112
    .local v13, "theStart":I
    const/high16 v15, -0x80000000

    .line 113
    .local v15, "numericArgument":I
    const/16 v16, 0x0

    .line 114
    .local v16, "offsetIncludingNumericArgument":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v14, v13, 0x4

    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "nextFourChars":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    move/from16 v17, v6

    add-int/lit8 v6, v13, 0x5

    .line 115
    .end local v6    # "myTemporaryIndent":I
    .local v17, "myTemporaryIndent":I
    if-lt v14, v6, :cond_6

    .line 116
    add-int/lit8 v6, v10, 0x4

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 117
    .local v6, "sep":C
    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v18, v7

    const/16 v7, 0x2e

    .line 117
    .end local v7    # "myIndent":I
    .local v18, "myIndent":I
    if-ne v14, v7, :cond_7

    const/16 v7, 0x2b

    const/16 v14, 0x20

    if-eq v6, v14, :cond_5

    const/16 v14, 0x2d

    if-eq v6, v14, :cond_5

    if-ne v6, v7, :cond_7

    .line 118
    :cond_5
    add-int/lit8 v14, v13, 0x3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    move/from16 v19, v6

    add-int/lit8 v6, v13, 0x1e

    .line 118
    .end local v6    # "sep":C
    .local v19, "sep":C
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v1, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "nextThirtyChars":Ljava/lang/String;
    const-string v7, "^([ +-]?[0-9]+)\\\\"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 120
    .local v7, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 121
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "group":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v16, v14, 0x4

    .line 123
    move-object/from16 v20, v6

    const/16 v6, 0x2b

    const/16 v14, 0x20

    invoke-virtual {v1, v6, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 123
    .end local v6    # "nextThirtyChars":Ljava/lang/String;
    .local v20, "nextThirtyChars":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 124
    .end local v1    # "group":Ljava/lang/String;
    .end local v7    # "m":Ljava/util/regex/Matcher;
    .end local v19    # "sep":C
    .end local v20    # "nextThirtyChars":Ljava/lang/String;
    goto :goto_1

    .line 129
    .end local v18    # "myIndent":I
    .local v7, "myIndent":I
    :cond_6
    move/from16 v18, v7

    .line 129
    .end local v7    # "myIndent":I
    .restart local v18    # "myIndent":I
    :cond_7
    :goto_1
    const-string v1, ".br\\"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 131
    invoke-direct/range {p0 .. p0}, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->closeCenterIfNeeded()V

    .line 132
    if-eqz v8, :cond_8

    .line 133
    invoke-direct/range {p0 .. p0}, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->addBreak()V

    .line 135
    :cond_8
    const/4 v8, 0x1

    .line 136
    add-int/lit8 v10, v10, 0x4

    .line 137
    const/4 v2, 0x1

    .line 138
    const/4 v1, 0x0

    iput-boolean v1, v0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myInCenter:Z

    .line 139
    const/4 v5, 0x0

    .line 141
    nop

    .line 233
    .end local v3    # "nextFourChars":Ljava/lang/String;
    .end local v13    # "theStart":I
    .end local v15    # "numericArgument":I
    .end local v16    # "offsetIncludingNumericArgument":I
    .end local v17    # "myTemporaryIndent":I
    .end local v18    # "myIndent":I
    .local v6, "myTemporaryIndent":I
    .restart local v7    # "myIndent":I
    :cond_9
    :goto_2
    move/from16 v6, v17

    :goto_3
    move/from16 v7, v18

    goto/16 :goto_8

    .line 141
    .end local v6    # "myTemporaryIndent":I
    .end local v7    # "myIndent":I
    .restart local v3    # "nextFourChars":Ljava/lang/String;
    .restart local v13    # "theStart":I
    .restart local v15    # "numericArgument":I
    .restart local v16    # "offsetIncludingNumericArgument":I
    .restart local v17    # "myTemporaryIndent":I
    .restart local v18    # "myIndent":I
    :cond_a
    const-string v1, "h\\"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 143
    invoke-direct/range {p0 .. p0}, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->startBold()V

    .line 144
    add-int/lit8 v10, v10, 0x2

    .line 146
    goto :goto_2

    :cond_b
    const-string v1, "n\\"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 148
    invoke-direct/range {p0 .. p0}, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->endBold()V

    .line 149
    add-int/lit8 v10, v10, 0x2

    .line 151
    goto :goto_2

    :cond_c
    const-string v1, ".in"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/high16 v6, -0x80000000

    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    if-eq v15, v6, :cond_d

    .line 153
    move v1, v15

    .line 154
    .end local v18    # "myIndent":I
    .local v1, "myIndent":I
    const/4 v6, 0x0

    .line 155
    .end local v17    # "myTemporaryIndent":I
    .restart local v6    # "myTemporaryIndent":I
    add-int v10, v10, v16

    .line 157
    nop

    .line 233
    move v7, v1

    goto/16 :goto_8

    .line 157
    .end local v1    # "myIndent":I
    .end local v6    # "myTemporaryIndent":I
    .restart local v17    # "myTemporaryIndent":I
    .restart local v18    # "myIndent":I
    :cond_d
    const-string v1, ".ti"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz v2, :cond_e

    if-eq v15, v6, :cond_e

    .line 159
    move v1, v15

    .line 160
    .end local v17    # "myTemporaryIndent":I
    .local v1, "myTemporaryIndent":I
    add-int v10, v10, v16

    .line 162
    nop

    .line 233
    move v6, v1

    goto :goto_3

    .line 162
    .end local v1    # "myTemporaryIndent":I
    .restart local v17    # "myTemporaryIndent":I
    :cond_e
    const-string v1, ".ce\\"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 164
    invoke-direct/range {p0 .. p0}, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->closeCenterIfNeeded()V

    .line 165
    if-nez v2, :cond_f

    .line 166
    invoke-direct/range {p0 .. p0}, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->addBreak()V

    .line 168
    :cond_f
    invoke-direct/range {p0 .. p0}, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->addStartCenter()V

    .line 169
    add-int/lit8 v10, v10, 0x4

    .line 170
    const/4 v2, 0x0

    .line 171
    const/4 v1, 0x1

    iput-boolean v1, v0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myInCenter:Z

    .line 173
    goto :goto_2

    :cond_10
    const-string v1, ".fi\\"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 175
    if-nez v4, :cond_11

    .line 176
    invoke-direct/range {p0 .. p0}, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->addEndNoBreak()V

    .line 177
    const/4 v4, 0x1

    .line 179
    :cond_11
    add-int/lit8 v10, v10, 0x4

    .line 181
    goto :goto_2

    :cond_12
    const-string v1, ".nf\\"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 183
    if-eqz v4, :cond_13

    .line 184
    invoke-direct/range {p0 .. p0}, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->addStartNoBreak()V

    .line 185
    const/4 v4, 0x0

    .line 187
    :cond_13
    add-int/lit8 v10, v10, 0x4

    .line 189
    goto/16 :goto_2

    :cond_14
    const-string v1, ".sp"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 191
    const-string v1, ".sp\\"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 192
    const/4 v15, 0x1

    .line 193
    add-int/lit8 v10, v10, 0x4

    .line 194
    goto :goto_4

    :cond_15
    const/4 v1, -0x1

    if-eq v15, v1, :cond_16

    .line 195
    add-int v10, v10, v16

    .line 198
    :cond_16
    :goto_4
    if-lez v15, :cond_19

    .line 200
    const/4 v1, 0x0

    .line 200
    .local v1, "j":I
    :goto_5
    if-lt v1, v15, :cond_18

    .line 203
    .end local v1    # "j":I
    const/4 v1, 0x0

    .line 203
    .restart local v1    # "j":I
    :goto_6
    if-lt v1, v5, :cond_17

    .line 207
    .end local v1    # "j":I
    goto/16 :goto_2

    .line 204
    .restart local v1    # "j":I
    :cond_17
    invoke-direct/range {p0 .. p0}, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->addSpace()V

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 201
    :cond_18
    invoke-direct/range {p0 .. p0}, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->addBreak()V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 207
    .end local v1    # "j":I
    :cond_19
    if-ne v15, v6, :cond_9

    .line 209
    const/4 v12, 0x0

    .line 213
    goto/16 :goto_2

    :cond_1a
    const-string v1, ".sk "

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    if-ltz v15, :cond_1c

    .line 215
    const/4 v1, 0x0

    .line 215
    .restart local v1    # "j":I
    :goto_7
    if-lt v1, v15, :cond_1b

    .line 218
    .end local v1    # "j":I
    add-int v10, v10, v16

    .line 220
    goto/16 :goto_2

    .line 216
    .restart local v1    # "j":I
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->addSpace()V

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 222
    .end local v1    # "j":I
    :cond_1c
    const/4 v12, 0x0

    .line 226
    goto/16 :goto_2

    .line 233
    .end local v3    # "nextFourChars":Ljava/lang/String;
    .end local v13    # "theStart":I
    .end local v15    # "numericArgument":I
    .end local v16    # "offsetIncludingNumericArgument":I
    .end local v17    # "myTemporaryIndent":I
    .end local v18    # "myIndent":I
    .restart local v6    # "myTemporaryIndent":I
    .restart local v7    # "myIndent":I
    :goto_8
    if-nez v12, :cond_25

    .line 235
    if-eqz v2, :cond_1f

    .line 237
    add-int v1, v7, v6

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 238
    .local v1, "thisLineIndent":I
    if-eqz v8, :cond_1e

    .line 240
    if-eqz v9, :cond_1d

    .line 241
    iget-object v13, v0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myBuffer:Ljava/lang/StringBuilder;

    const-string v14, "</div>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    goto :goto_9

    :cond_1d
    if-nez v1, :cond_1e

    .line 243
    invoke-direct/range {p0 .. p0}, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->addBreak()V

    .line 247
    :cond_1e
    :goto_9
    if-lez v1, :cond_20

    .line 248
    iget-object v13, v0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myBuffer:Ljava/lang/StringBuilder;

    const-string v14, "<div style=\"margin-left: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-object v13, v0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    iget-object v13, v0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myBuffer:Ljava/lang/StringBuilder;

    const-string v14, "em;\">"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const/4 v9, 0x1

    .line 251
    .end local v1    # "thisLineIndent":I
    goto :goto_a

    .line 255
    :cond_1f
    const/4 v3, 0x0

    :cond_20
    :goto_a
    const/16 v1, 0x26

    if-eq v11, v1, :cond_24

    const/16 v1, 0x3c

    if-eq v11, v1, :cond_23

    const/16 v1, 0x3e

    if-eq v11, v1, :cond_22

    .line 266
    const/16 v1, 0xa0

    if-lt v11, v1, :cond_21

    .line 267
    invoke-direct {v0, v11}, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->addHighAscii(C)V

    .line 268
    goto :goto_b

    .line 269
    :cond_21
    iget-object v1, v0, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->myBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 263
    :cond_22
    invoke-direct/range {p0 .. p0}, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->addGt()V

    .line 264
    goto :goto_b

    .line 260
    :cond_23
    invoke-direct/range {p0 .. p0}, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->addLt()V

    .line 261
    goto :goto_b

    .line 257
    :cond_24
    invoke-direct/range {p0 .. p0}, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->addAmpersand()V

    .line 258
    nop

    .line 273
    :goto_b
    const/4 v1, 0x0

    .line 274
    .end local v2    # "myAtStartOfLine":Z
    .local v1, "myAtStartOfLine":Z
    const/4 v2, 0x0

    .line 275
    .end local v8    # "myNeedBreakBeforeNextText":Z
    .local v2, "myNeedBreakBeforeNextText":Z
    add-int/lit8 v5, v5, 0x1

    .line 103
    .end local v11    # "nextChar":C
    .end local v12    # "handled":Z
    move v8, v2

    move v2, v1

    goto :goto_c

    .line 103
    .end local v1    # "myAtStartOfLine":Z
    .local v2, "myAtStartOfLine":Z
    .restart local v8    # "myNeedBreakBeforeNextText":Z
    :cond_25
    const/4 v3, 0x0

    :goto_c
    const/4 v1, 0x1

    add-int/2addr v10, v1

    move-object/from16 v1, p1

    goto/16 :goto_0
.end method
