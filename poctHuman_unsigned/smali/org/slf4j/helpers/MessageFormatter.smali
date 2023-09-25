.class public final Lorg/slf4j/helpers/MessageFormatter;
.super Ljava/lang/Object;
.source "MessageFormatter.java"


# static fields
.field static final DELIM_START:C = '{'

.field static final DELIM_STOP:C = '}'

.field static final DELIM_STR:Ljava/lang/String; = "{}"

.field private static final ESCAPE_CHAR:C = '\\'


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;
    .locals 8
    .param p0, "messagePattern"    # Ljava/lang/String;
    .param p1, "argArray"    # [Ljava/lang/Object;

    .line 182
    invoke-static {p1}, Lorg/slf4j/helpers/MessageFormatter;->getThrowableCandidate([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    .line 184
    .local v0, "throwableCandidate":Ljava/lang/Throwable;
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 185
    new-instance v2, Lorg/slf4j/helpers/FormattingTuple;

    invoke-direct {v2, v1, p1, v0}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v2

    .line 188
    :cond_0
    if-nez p1, :cond_1

    .line 189
    new-instance v1, Lorg/slf4j/helpers/FormattingTuple;

    invoke-direct {v1, p0}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 192
    :cond_1
    const/4 v2, 0x0

    .line 194
    .local v2, "i":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 197
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 197
    .local v4, "L":I
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_6

    .line 199
    const-string v5, "{}"

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 201
    .local v5, "j":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 203
    if-nez v2, :cond_2

    .line 204
    new-instance v1, Lorg/slf4j/helpers/FormattingTuple;

    invoke-direct {v1, p0, p1, v0}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v1

    .line 208
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    new-instance v1, Lorg/slf4j/helpers/FormattingTuple;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, p1, v0}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v1

    .line 213
    :cond_3
    invoke-static {p0, v5}, Lorg/slf4j/helpers/MessageFormatter;->isEscapedDelimeter(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 214
    invoke-static {p0, v5}, Lorg/slf4j/helpers/MessageFormatter;->isDoubleEscaped(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 215
    add-int/lit8 v4, v4, -0x1

    .line 216
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    const/16 v6, 0x7b

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 218
    add-int/lit8 v2, v5, 0x1

    goto :goto_1

    .line 223
    :cond_4
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    aget-object v6, p1, v4

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v6, v7}, Lorg/slf4j/helpers/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V

    .line 225
    add-int/lit8 v2, v5, 0x2

    goto :goto_1

    .line 229
    :cond_5
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    aget-object v6, p1, v4

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v6, v7}, Lorg/slf4j/helpers/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V

    .line 231
    add-int/lit8 v2, v5, 0x2

    .line 197
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 236
    .end local v5    # "j":I
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_7

    .line 238
    new-instance v1, Lorg/slf4j/helpers/FormattingTuple;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, p1, v0}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v1

    .line 240
    :cond_7
    new-instance v5, Lorg/slf4j/helpers/FormattingTuple;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, p1, v1}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v5
.end method

.method private static booleanArrayAppend(Ljava/lang/StringBuffer;[Z)V
    .locals 3
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "a"    # [Z

    .line 336
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 337
    const/4 v0, 0x0

    array-length v1, p1

    .line 338
    .local v1, "len":I
    nop

    .line 338
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 339
    aget-boolean v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 340
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_0

    .line 341
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    return-void
.end method

.method private static byteArrayAppend(Ljava/lang/StringBuffer;[B)V
    .locals 3
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "a"    # [B

    .line 347
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 348
    const/4 v0, 0x0

    array-length v1, p1

    .line 349
    .local v1, "len":I
    nop

    .line 349
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 350
    aget-byte v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 351
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_0

    .line 352
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 355
    return-void
.end method

.method private static charArrayAppend(Ljava/lang/StringBuffer;[C)V
    .locals 3
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "a"    # [C

    .line 358
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 359
    const/4 v0, 0x0

    array-length v1, p1

    .line 360
    .local v1, "len":I
    nop

    .line 360
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 361
    aget-char v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 362
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_0

    .line 363
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 366
    return-void
.end method

.method private static deeplyAppendParameter(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "seenMap"    # Ljava/util/Map;

    .line 271
    if-nez p1, :cond_0

    .line 272
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    return-void

    .line 275
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    invoke-static {p0, p1}, Lorg/slf4j/helpers/MessageFormatter;->safeObjectAppend(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    goto :goto_0

    .line 280
    :cond_1
    instance-of v0, p1, [Z

    if-eqz v0, :cond_2

    .line 281
    move-object v0, p1

    check-cast v0, [Z

    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->booleanArrayAppend(Ljava/lang/StringBuffer;[Z)V

    goto :goto_0

    .line 282
    :cond_2
    instance-of v0, p1, [B

    if-eqz v0, :cond_3

    .line 283
    move-object v0, p1

    check-cast v0, [B

    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->byteArrayAppend(Ljava/lang/StringBuffer;[B)V

    goto :goto_0

    .line 284
    :cond_3
    instance-of v0, p1, [C

    if-eqz v0, :cond_4

    .line 285
    move-object v0, p1

    check-cast v0, [C

    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->charArrayAppend(Ljava/lang/StringBuffer;[C)V

    goto :goto_0

    .line 286
    :cond_4
    instance-of v0, p1, [S

    if-eqz v0, :cond_5

    .line 287
    move-object v0, p1

    check-cast v0, [S

    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->shortArrayAppend(Ljava/lang/StringBuffer;[S)V

    goto :goto_0

    .line 288
    :cond_5
    instance-of v0, p1, [I

    if-eqz v0, :cond_6

    .line 289
    move-object v0, p1

    check-cast v0, [I

    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->intArrayAppend(Ljava/lang/StringBuffer;[I)V

    goto :goto_0

    .line 290
    :cond_6
    instance-of v0, p1, [J

    if-eqz v0, :cond_7

    .line 291
    move-object v0, p1

    check-cast v0, [J

    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->longArrayAppend(Ljava/lang/StringBuffer;[J)V

    goto :goto_0

    .line 292
    :cond_7
    instance-of v0, p1, [F

    if-eqz v0, :cond_8

    .line 293
    move-object v0, p1

    check-cast v0, [F

    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->floatArrayAppend(Ljava/lang/StringBuffer;[F)V

    goto :goto_0

    .line 294
    :cond_8
    instance-of v0, p1, [D

    if-eqz v0, :cond_9

    .line 295
    move-object v0, p1

    check-cast v0, [D

    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->doubleArrayAppend(Ljava/lang/StringBuffer;[D)V

    goto :goto_0

    .line 297
    :cond_9
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p0, v0, p2}, Lorg/slf4j/helpers/MessageFormatter;->objectArrayAppend(Ljava/lang/StringBuffer;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 300
    :goto_0
    return-void
.end method

.method private static doubleArrayAppend(Ljava/lang/StringBuffer;[D)V
    .locals 4
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "a"    # [D

    .line 413
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 414
    const/4 v0, 0x0

    array-length v1, p1

    .line 415
    .local v1, "len":I
    nop

    .line 415
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 416
    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 417
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_0

    .line 418
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 421
    return-void
.end method

.method private static floatArrayAppend(Ljava/lang/StringBuffer;[F)V
    .locals 3
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "a"    # [F

    .line 402
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 403
    const/4 v0, 0x0

    array-length v1, p1

    .line 404
    .local v1, "len":I
    nop

    .line 404
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 405
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 406
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_0

    .line 407
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 410
    return-void
.end method

.method public static final format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;
    .locals 2
    .param p0, "messagePattern"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/Object;

    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    return-object v0
.end method

.method public static final format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;
    .locals 2
    .param p0, "messagePattern"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .line 152
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    return-object v0
.end method

.method static final getThrowableCandidate([Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 3
    .param p0, "argArray"    # [Ljava/lang/Object;

    .line 156
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p0, v1

    .line 161
    .local v1, "lastEntry":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 162
    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 164
    :cond_1
    return-object v0

    .line 157
    .end local v1    # "lastEntry":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static intArrayAppend(Ljava/lang/StringBuffer;[I)V
    .locals 3
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "a"    # [I

    .line 380
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 381
    const/4 v0, 0x0

    array-length v1, p1

    .line 382
    .local v1, "len":I
    nop

    .line 382
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 383
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 384
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_0

    .line 385
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 388
    return-void
.end method

.method static final isDoubleEscaped(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "messagePattern"    # Ljava/lang/String;
    .param p1, "delimeterStartIndex"    # I

    .line 260
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    .line 262
    const/4 v0, 0x1

    return v0

    .line 264
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static final isEscapedDelimeter(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "messagePattern"    # Ljava/lang/String;
    .param p1, "delimeterStartIndex"    # I

    .line 247
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 248
    return v0

    .line 250
    :cond_0
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 251
    .local v1, "potentialEscape":C
    const/16 v2, 0x5c

    if-ne v1, v2, :cond_1

    .line 252
    const/4 v0, 0x1

    return v0

    .line 254
    :cond_1
    return v0
.end method

.method private static longArrayAppend(Ljava/lang/StringBuffer;[J)V
    .locals 4
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "a"    # [J

    .line 391
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 392
    const/4 v0, 0x0

    array-length v1, p1

    .line 393
    .local v1, "len":I
    nop

    .line 393
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 394
    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 395
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_0

    .line 396
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 399
    return-void
.end method

.method private static objectArrayAppend(Ljava/lang/StringBuffer;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "seenMap"    # Ljava/util/Map;

    .line 318
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 319
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 320
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    array-length v0, p1

    .line 322
    .local v0, "len":I
    const/4 v1, 0x0

    .line 322
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 323
    aget-object v2, p1, v1

    invoke-static {p0, v2, p2}, Lorg/slf4j/helpers/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V

    .line 324
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    .line 325
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "i":I
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .end local v0    # "len":I
    goto :goto_1

    .line 330
    :cond_2
    const-string v0, "..."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    :goto_1
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 333
    return-void
.end method

.method private static safeObjectAppend(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 4
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "o"    # Ljava/lang/Object;

    .line 304
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "oAsString":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .end local v0    # "oAsString":Ljava/lang/String;
    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "SLF4J: Failed toString() invocation on an object of type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 310
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 311
    const-string v1, "[FAILED toString()]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private static shortArrayAppend(Ljava/lang/StringBuffer;[S)V
    .locals 3
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "a"    # [S

    .line 369
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 370
    const/4 v0, 0x0

    array-length v1, p1

    .line 371
    .local v1, "len":I
    nop

    .line 371
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 372
    aget-short v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 373
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_0

    .line 374
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 377
    return-void
.end method
