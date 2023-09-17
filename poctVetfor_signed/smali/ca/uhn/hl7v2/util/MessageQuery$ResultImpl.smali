.class Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;
.super Ljava/lang/Object;
.source "MessageQuery.java"

# interfaces
.implements Lca/uhn/hl7v2/util/MessageQuery$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/util/MessageQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultImpl"
.end annotation


# instance fields
.field private myExactMatchFlags:[Z

.field private myFieldNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private myFieldPaths:[Ljava/lang/String;

.field private myIndices:[I

.field private myLoopPointNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private myLoopPoints:[Ljava/lang/String;

.field private myMaxNumEmpty:[I

.field private myNonLoopingQuery:Z

.field private myNumEmpty:[I

.field private myTerser:Lca/uhn/hl7v2/util/Terser;

.field private myValues:[Ljava/lang/String;

.field private myWherePaths:[Ljava/lang/String;

.field private myWherePatterns:[Ljava/lang/String;

.field private myWhereValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;[Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;[Ljava/lang/String;[Z)V
    .locals 3
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "theLoopPoints"    # [Ljava/lang/String;
    .param p4, "theFieldPaths"    # [Ljava/lang/String;
    .param p6, "theWherePaths"    # [Ljava/lang/String;
    .param p7, "theWherePatterns"    # [Ljava/lang/String;
    .param p8, "theExactMatchFlags"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Message;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[Z)V"
        }
    .end annotation

    .line 276
    .local p3, "theLoopPointNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p5, "theFieldNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myNonLoopingQuery:Z

    .line 281
    new-instance v0, Lca/uhn/hl7v2/util/Terser;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/util/Terser;-><init>(Lca/uhn/hl7v2/model/Message;)V

    iput-object v0, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myTerser:Lca/uhn/hl7v2/util/Terser;

    .line 282
    iput-object p2, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myLoopPoints:[Ljava/lang/String;

    .line 283
    const/4 v0, 0x1

    array-length v1, p2

    new-array v1, v1, [I

    iput-object v1, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myIndices:[I

    .line 284
    array-length v1, p2

    new-array v1, v1, [I

    iput-object v1, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myNumEmpty:[I

    .line 285
    invoke-direct {p0, p2}, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->getMaxNumEmpty([Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myMaxNumEmpty:[I

    .line 286
    iput-object p3, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myLoopPointNames:Ljava/util/Map;

    .line 287
    iput-object p4, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myFieldPaths:[Ljava/lang/String;

    .line 288
    array-length v1, p4

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myValues:[Ljava/lang/String;

    .line 289
    iput-object p5, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myFieldNames:Ljava/util/Map;

    .line 290
    iput-object p6, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myWherePaths:[Ljava/lang/String;

    .line 291
    iput-object p7, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myWherePatterns:[Ljava/lang/String;

    .line 292
    iput-object p8, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myExactMatchFlags:[Z

    .line 294
    array-length v1, p2

    if-nez v1, :cond_0

    .line 295
    iput-boolean v0, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myNonLoopingQuery:Z

    .line 297
    goto :goto_0

    .line 298
    :cond_0
    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myIndices:[I

    iget-object v2, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myIndices:[I

    array-length v2, v2

    sub-int/2addr v2, v0

    const/4 v0, -0x1

    aput v0, v1, v2

    .line 302
    :goto_0
    return-void
.end method

.method private composeLoopPoints()[Ljava/lang/String;
    .locals 6

    .line 410
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myLoopPoints:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 411
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 411
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myLoopPoints:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 424
    .end local v1    # "i":I
    return-object v0

    .line 412
    .restart local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myLoopPoints:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, "\\*\\d*"

    .line 413
    iget-object v4, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myIndices:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 412
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 415
    iget-object v2, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myLoopPoints:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->getLoopPointReference(Ljava/lang/String;)I

    move-result v2

    .line 416
    .local v2, "ref":I
    if-lt v2, v1, :cond_1

    .line 417
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 418
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loop point must be defined after the one it references: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    iget-object v5, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myLoopPoints:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 417
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 420
    :cond_1
    if-ltz v2, :cond_2

    .line 421
    aget-object v3, v0, v1

    aget-object v4, v0, v2

    invoke-direct {p0, v3, v4}, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->expandLoopPointReference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 411
    .end local v2    # "ref":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private composePaths([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "thePaths"    # [Ljava/lang/String;

    .line 393
    invoke-direct {p0}, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->composeLoopPoints()[Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "currentLoopPoints":[Ljava/lang/String;
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    .line 395
    .local v1, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 395
    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_0

    .line 403
    .end local v2    # "i":I
    return-object v1

    .line 396
    .restart local v2    # "i":I
    :cond_0
    aget-object v3, p1, v2

    aput-object v3, v1, v2

    .line 397
    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->getLoopPointReference(Ljava/lang/String;)I

    move-result v3

    .line 398
    .local v3, "ref":I
    if-ltz v3, :cond_1

    .line 399
    aget-object v4, v1, v2

    .line 400
    aget-object v5, v0, v3

    .line 399
    invoke-direct {p0, v4, v5}, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->expandLoopPointReference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 395
    .end local v3    # "ref":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private currentRowMatchesFilter()Z
    .locals 4

    .line 344
    const/4 v0, 0x0

    .line 344
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myWhereValues:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 355
    .end local v0    # "i":I
    const/4 v0, 0x1

    return v0

    .line 345
    .restart local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myExactMatchFlags:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 346
    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myWherePatterns:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v3, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myWhereValues:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 347
    return v2

    .line 350
    :cond_1
    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myWherePatterns:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v3, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myWhereValues:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v1, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 351
    return v2

    .line 344
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private currentRowValued(I)Z
    .locals 3
    .param p1, "theLoopPoint"    # I

    .line 331
    const/4 v0, 0x0

    .line 331
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myFieldPaths:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 339
    .end local v0    # "i":I
    const/4 v0, 0x0

    return v0

    .line 332
    .restart local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myFieldPaths:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1}, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->referencesLoop(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 334
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 335
    const/4 v2, 0x1

    return v2

    .line 331
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private expandLoopPointReference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "thePath"    # Ljava/lang/String;
    .param p2, "theLoopPoint"    # Ljava/lang/String;

    .line 441
    const-string v0, "\\{.*\\}"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentValues([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "thePaths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 378
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->composePaths([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "paths":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 380
    .local v1, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 380
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 386
    .end local v2    # "i":I
    return-object v1

    .line 381
    .restart local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myTerser:Lca/uhn/hl7v2/util/Terser;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 382
    aget-object v3, v1, v2

    if-nez v3, :cond_1

    .line 383
    const-string v3, ""

    aput-object v3, v1, v2

    .line 380
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getLoopPointReference(Ljava/lang/String;)I
    .locals 3
    .param p1, "thePath"    # Ljava/lang/String;

    .line 430
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "{}"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 431
    .local v0, "tok":Ljava/util/StringTokenizer;
    const/16 v1, 0x7b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "ref":Ljava/lang/String;
    iget-object v2, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myLoopPointNames:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 435
    .end local v1    # "ref":Ljava/lang/String;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method private getMaxNumEmpty(Ljava/lang/String;)I
    .locals 3
    .param p1, "theLoopPoint"    # Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    .line 318
    .local v0, "retVal":I
    const-string v1, "\\*(\\d+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 319
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "num":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 324
    .end local v2    # "num":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private getMaxNumEmpty([Ljava/lang/String;)[I
    .locals 3
    .param p1, "theLoopPoints"    # [Ljava/lang/String;

    .line 308
    array-length v0, p1

    new-array v0, v0, [I

    .line 309
    .local v0, "retVal":[I
    const/4 v1, 0x0

    .line 309
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 312
    .end local v1    # "i":I
    return-object v0

    .line 310
    .restart local v1    # "i":I
    :cond_0
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->getMaxNumEmpty(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private referencesLoop(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "theFieldPath"    # Ljava/lang/String;
    .param p2, "theLoopPoint"    # I

    .line 361
    move-object v0, p1

    .line 363
    .local v0, "path":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->getLoopPointReference(Ljava/lang/String;)I

    move-result v1

    move v2, v1

    .line 363
    .local v2, "lp":I
    if-gez v1, :cond_0

    .line 370
    const/4 v1, 0x0

    return v1

    .line 363
    :cond_0
    nop

    .line 364
    if-ne v2, p2, :cond_1

    .line 365
    const/4 v1, 0x1

    return v1

    .line 367
    :cond_1
    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myLoopPoints:[Ljava/lang/String;

    aget-object v0, v1, v2

    .line 367
    .end local v2    # "lp":I
    goto :goto_0
.end method


# virtual methods
.method public get(I)Ljava/lang/String;
    .locals 3
    .param p1, "theFieldNumber"    # I

    .line 448
    if-ltz p1, :cond_1

    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myValues:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 453
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myValues:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 449
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field number must be between 0 and "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 451
    iget-object v2, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myValues:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "theFieldName"    # Ljava/lang/String;

    .line 460
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myFieldNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 461
    .local v0, "fieldNum":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 462
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field name not recognized: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 462
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->get(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNamedFields()[Ljava/lang/String;
    .locals 2

    .line 526
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myFieldNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public next()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 473
    iget-boolean v0, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myNonLoopingQuery:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 474
    iput-boolean v1, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myNonLoopingQuery:Z

    .line 475
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myFieldPaths:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->getCurrentValues([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myValues:[Ljava/lang/String;

    .line 476
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myWherePaths:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->getCurrentValues([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myWhereValues:[Ljava/lang/String;

    .line 477
    invoke-direct {p0}, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->currentRowMatchesFilter()Z

    move-result v0

    return v0

    .line 480
    :cond_0
    const/4 v0, 0x0

    .line 481
    .local v0, "hasNext":Z
    iget-object v2, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myIndices:[I

    const/4 v3, 0x1

    array-length v2, v2

    sub-int/2addr v2, v3

    .line 481
    .local v2, "i":I
    :goto_0
    if-gez v2, :cond_1

    .line 481
    .end local v2    # "i":I
    goto :goto_5

    .line 482
    .restart local v2    # "i":I
    :cond_1
    const/4 v4, 0x0

    .line 483
    .local v4, "gotMatch":Z
    :cond_2
    :goto_1
    if-nez v4, :cond_5

    iget-object v5, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myNumEmpty:[I

    aget v5, v5, v2

    iget-object v6, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myMaxNumEmpty:[I

    aget v6, v6, v2

    if-le v5, v6, :cond_3

    goto :goto_3

    .line 484
    :cond_3
    iget-object v5, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myIndices:[I

    aget v6, v5, v2

    add-int/2addr v6, v3

    aput v6, v5, v2

    .line 485
    iget-object v5, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myFieldPaths:[Ljava/lang/String;

    invoke-direct {p0, v5}, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->getCurrentValues([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myValues:[Ljava/lang/String;

    .line 486
    iget-object v5, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myWherePaths:[Ljava/lang/String;

    invoke-direct {p0, v5}, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->getCurrentValues([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myWhereValues:[Ljava/lang/String;

    .line 488
    invoke-direct {p0, v2}, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->currentRowValued(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 489
    iget-object v5, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myNumEmpty:[I

    aget v6, v5, v2

    add-int/2addr v6, v3

    aput v6, v5, v2

    .line 490
    goto :goto_2

    .line 491
    :cond_4
    iget-object v5, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myNumEmpty:[I

    aput v1, v5, v2

    .line 493
    :goto_2
    invoke-direct {p0}, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->currentRowMatchesFilter()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 494
    const/4 v4, 0x1

    goto :goto_1

    .line 498
    :cond_5
    :goto_3
    iget-object v5, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myNumEmpty:[I

    aget v5, v5, v2

    iget-object v6, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myMaxNumEmpty:[I

    aget v6, v6, v2

    if-gt v5, v6, :cond_6

    move v5, v3

    goto :goto_4

    :cond_6
    move v5, v1

    :goto_4
    move v0, v5

    .line 500
    if-eqz v0, :cond_7

    .line 501
    nop

    .line 519
    .end local v2    # "i":I
    .end local v4    # "gotMatch":Z
    :goto_5
    return v0

    .line 504
    .restart local v2    # "i":I
    .restart local v4    # "gotMatch":Z
    :cond_7
    iget-object v5, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myIndices:[I

    aput v1, v5, v2

    .line 505
    iget-object v5, p0, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;->myNumEmpty:[I

    aput v1, v5, v2

    .line 481
    .end local v4    # "gotMatch":Z
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method
