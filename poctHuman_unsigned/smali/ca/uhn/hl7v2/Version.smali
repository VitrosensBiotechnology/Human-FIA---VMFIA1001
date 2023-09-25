.class public final enum Lca/uhn/hl7v2/Version;
.super Ljava/lang/Enum;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lca/uhn/hl7v2/Version;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$ca$uhn$hl7v2$Version:[I

.field private static final synthetic ENUM$VALUES:[Lca/uhn/hl7v2/Version;

.field public static final enum V21:Lca/uhn/hl7v2/Version;

.field public static final enum V22:Lca/uhn/hl7v2/Version;

.field public static final enum V23:Lca/uhn/hl7v2/Version;

.field public static final enum V231:Lca/uhn/hl7v2/Version;

.field public static final enum V24:Lca/uhn/hl7v2/Version;

.field public static final enum V25:Lca/uhn/hl7v2/Version;

.field public static final enum V251:Lca/uhn/hl7v2/Version;

.field public static final enum V26:Lca/uhn/hl7v2/Version;

.field public static final enum V27:Lca/uhn/hl7v2/Version;

.field public static final enum V271:Lca/uhn/hl7v2/Version;

.field public static final enum V28:Lca/uhn/hl7v2/Version;

.field public static final enum V281:Lca/uhn/hl7v2/Version;

.field private static final ourIsOnClasspath:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lca/uhn/hl7v2/Version;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static ourVersionsOnClasspath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lca/uhn/hl7v2/Version;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private version:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$ca$uhn$hl7v2$Version()[I
    .locals 3

    .line 35
    sget-object v0, Lca/uhn/hl7v2/Version;->$SWITCH_TABLE$ca$uhn$hl7v2$Version:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lca/uhn/hl7v2/Version;->values()[Lca/uhn/hl7v2/Version;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lca/uhn/hl7v2/Version;->V21:Lca/uhn/hl7v2/Version;

    invoke-virtual {v1}, Lca/uhn/hl7v2/Version;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_1
    sget-object v1, Lca/uhn/hl7v2/Version;->V22:Lca/uhn/hl7v2/Version;

    invoke-virtual {v1}, Lca/uhn/hl7v2/Version;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    :try_start_2
    sget-object v1, Lca/uhn/hl7v2/Version;->V23:Lca/uhn/hl7v2/Version;

    invoke-virtual {v1}, Lca/uhn/hl7v2/Version;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_2
    :try_start_3
    sget-object v1, Lca/uhn/hl7v2/Version;->V231:Lca/uhn/hl7v2/Version;

    invoke-virtual {v1}, Lca/uhn/hl7v2/Version;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    :goto_3
    :try_start_4
    sget-object v1, Lca/uhn/hl7v2/Version;->V24:Lca/uhn/hl7v2/Version;

    invoke-virtual {v1}, Lca/uhn/hl7v2/Version;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    :goto_4
    :try_start_5
    sget-object v1, Lca/uhn/hl7v2/Version;->V25:Lca/uhn/hl7v2/Version;

    invoke-virtual {v1}, Lca/uhn/hl7v2/Version;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    :goto_5
    :try_start_6
    sget-object v1, Lca/uhn/hl7v2/Version;->V251:Lca/uhn/hl7v2/Version;

    invoke-virtual {v1}, Lca/uhn/hl7v2/Version;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    :goto_6
    :try_start_7
    sget-object v1, Lca/uhn/hl7v2/Version;->V26:Lca/uhn/hl7v2/Version;

    invoke-virtual {v1}, Lca/uhn/hl7v2/Version;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v1

    :goto_7
    :try_start_8
    sget-object v1, Lca/uhn/hl7v2/Version;->V27:Lca/uhn/hl7v2/Version;

    invoke-virtual {v1}, Lca/uhn/hl7v2/Version;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v1

    :goto_8
    :try_start_9
    sget-object v1, Lca/uhn/hl7v2/Version;->V271:Lca/uhn/hl7v2/Version;

    invoke-virtual {v1}, Lca/uhn/hl7v2/Version;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v1

    :goto_9
    :try_start_a
    sget-object v1, Lca/uhn/hl7v2/Version;->V28:Lca/uhn/hl7v2/Version;

    invoke-virtual {v1}, Lca/uhn/hl7v2/Version;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v1

    :goto_a
    :try_start_b
    sget-object v1, Lca/uhn/hl7v2/Version;->V281:Lca/uhn/hl7v2/Version;

    invoke-virtual {v1}, Lca/uhn/hl7v2/Version;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v1

    :goto_b
    sput-object v0, Lca/uhn/hl7v2/Version;->$SWITCH_TABLE$ca$uhn$hl7v2$Version:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 37
    new-instance v0, Lca/uhn/hl7v2/Version;

    const-string v1, "V21"

    const-string v2, "2.1"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lca/uhn/hl7v2/Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/Version;->V21:Lca/uhn/hl7v2/Version;

    .line 38
    new-instance v0, Lca/uhn/hl7v2/Version;

    const-string v1, "V22"

    const-string v2, "2.2"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lca/uhn/hl7v2/Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/Version;->V22:Lca/uhn/hl7v2/Version;

    .line 39
    new-instance v0, Lca/uhn/hl7v2/Version;

    const-string v1, "V23"

    const-string v2, "2.3"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lca/uhn/hl7v2/Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/Version;->V23:Lca/uhn/hl7v2/Version;

    .line 40
    new-instance v0, Lca/uhn/hl7v2/Version;

    const-string v1, "V231"

    const-string v2, "2.3.1"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lca/uhn/hl7v2/Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/Version;->V231:Lca/uhn/hl7v2/Version;

    .line 41
    new-instance v0, Lca/uhn/hl7v2/Version;

    const-string v1, "V24"

    const-string v2, "2.4"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lca/uhn/hl7v2/Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/Version;->V24:Lca/uhn/hl7v2/Version;

    .line 42
    new-instance v0, Lca/uhn/hl7v2/Version;

    const-string v1, "V25"

    const-string v2, "2.5"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lca/uhn/hl7v2/Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/Version;->V25:Lca/uhn/hl7v2/Version;

    .line 43
    new-instance v0, Lca/uhn/hl7v2/Version;

    const-string v1, "V251"

    const-string v2, "2.5.1"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lca/uhn/hl7v2/Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/Version;->V251:Lca/uhn/hl7v2/Version;

    .line 44
    new-instance v0, Lca/uhn/hl7v2/Version;

    const-string v1, "V26"

    const-string v2, "2.6"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lca/uhn/hl7v2/Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/Version;->V26:Lca/uhn/hl7v2/Version;

    .line 45
    new-instance v0, Lca/uhn/hl7v2/Version;

    const-string v1, "V27"

    const-string v2, "2.7"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lca/uhn/hl7v2/Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/Version;->V27:Lca/uhn/hl7v2/Version;

    .line 46
    new-instance v0, Lca/uhn/hl7v2/Version;

    const-string v1, "V271"

    const-string v2, "2.7.1"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lca/uhn/hl7v2/Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/Version;->V271:Lca/uhn/hl7v2/Version;

    .line 47
    new-instance v0, Lca/uhn/hl7v2/Version;

    const-string v1, "V28"

    const-string v2, "2.8"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lca/uhn/hl7v2/Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/Version;->V28:Lca/uhn/hl7v2/Version;

    .line 48
    new-instance v0, Lca/uhn/hl7v2/Version;

    const-string v1, "V281"

    const-string v2, "2.8.1"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2}, Lca/uhn/hl7v2/Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/Version;->V281:Lca/uhn/hl7v2/Version;

    const/16 v0, 0xc

    new-array v0, v0, [Lca/uhn/hl7v2/Version;

    sget-object v1, Lca/uhn/hl7v2/Version;->V21:Lca/uhn/hl7v2/Version;

    aput-object v1, v0, v3

    sget-object v1, Lca/uhn/hl7v2/Version;->V22:Lca/uhn/hl7v2/Version;

    aput-object v1, v0, v4

    sget-object v1, Lca/uhn/hl7v2/Version;->V23:Lca/uhn/hl7v2/Version;

    aput-object v1, v0, v5

    sget-object v1, Lca/uhn/hl7v2/Version;->V231:Lca/uhn/hl7v2/Version;

    aput-object v1, v0, v6

    sget-object v1, Lca/uhn/hl7v2/Version;->V24:Lca/uhn/hl7v2/Version;

    aput-object v1, v0, v7

    sget-object v1, Lca/uhn/hl7v2/Version;->V25:Lca/uhn/hl7v2/Version;

    aput-object v1, v0, v8

    sget-object v1, Lca/uhn/hl7v2/Version;->V251:Lca/uhn/hl7v2/Version;

    aput-object v1, v0, v9

    sget-object v1, Lca/uhn/hl7v2/Version;->V26:Lca/uhn/hl7v2/Version;

    aput-object v1, v0, v10

    sget-object v1, Lca/uhn/hl7v2/Version;->V27:Lca/uhn/hl7v2/Version;

    aput-object v1, v0, v11

    sget-object v1, Lca/uhn/hl7v2/Version;->V271:Lca/uhn/hl7v2/Version;

    aput-object v1, v0, v12

    sget-object v1, Lca/uhn/hl7v2/Version;->V28:Lca/uhn/hl7v2/Version;

    aput-object v1, v0, v13

    sget-object v1, Lca/uhn/hl7v2/Version;->V281:Lca/uhn/hl7v2/Version;

    aput-object v1, v0, v14

    sput-object v0, Lca/uhn/hl7v2/Version;->ENUM$VALUES:[Lca/uhn/hl7v2/Version;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lca/uhn/hl7v2/Version;->ourIsOnClasspath:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "version"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput-object p3, p0, Lca/uhn/hl7v2/Version;->version:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static allVersions(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lca/uhn/hl7v2/Version;",
            ">;)Z"
        }
    .end annotation

    .line 95
    .local p0, "someVersions":Ljava/util/Set;, "Ljava/util/Set<Lca/uhn/hl7v2/Version;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {}, Lca/uhn/hl7v2/Version;->values()[Lca/uhn/hl7v2/Version;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static asOf(Lca/uhn/hl7v2/Version;)[Lca/uhn/hl7v2/Version;
    .locals 6
    .param p0, "v"    # Lca/uhn/hl7v2/Version;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, "versions":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/Version;>;"
    invoke-static {}, Lca/uhn/hl7v2/Version;->values()[Lca/uhn/hl7v2/Version;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lca/uhn/hl7v2/Version;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lca/uhn/hl7v2/Version;

    return-object v1

    .line 120
    :cond_0
    aget-object v4, v1, v2

    .line 121
    .local v4, "version":Lca/uhn/hl7v2/Version;
    invoke-virtual {v4, p0}, Lca/uhn/hl7v2/Version;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 122
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v4    # "version":Lca/uhn/hl7v2/Version;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized availableVersions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/Version;",
            ">;"
        }
    .end annotation

    const-class v0, Lca/uhn/hl7v2/Version;

    monitor-enter v0

    .line 182
    :try_start_0
    sget-object v1, Lca/uhn/hl7v2/Version;->ourVersionsOnClasspath:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lca/uhn/hl7v2/Version;->ourVersionsOnClasspath:Ljava/util/ArrayList;

    .line 184
    invoke-static {}, Lca/uhn/hl7v2/Version;->values()[Lca/uhn/hl7v2/Version;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, v1, v3

    .line 185
    .local v4, "next":Lca/uhn/hl7v2/Version;
    invoke-virtual {v4}, Lca/uhn/hl7v2/Version;->available()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 186
    sget-object v5, Lca/uhn/hl7v2/Version;->ourVersionsOnClasspath:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v4    # "next":Lca/uhn/hl7v2/Version;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 190
    :cond_2
    :goto_1
    sget-object v1, Lca/uhn/hl7v2/Version;->ourVersionsOnClasspath:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static before(Lca/uhn/hl7v2/Version;)[Lca/uhn/hl7v2/Version;
    .locals 6
    .param p0, "v"    # Lca/uhn/hl7v2/Version;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "versions":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/Version;>;"
    invoke-static {}, Lca/uhn/hl7v2/Version;->values()[Lca/uhn/hl7v2/Version;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 141
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lca/uhn/hl7v2/Version;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lca/uhn/hl7v2/Version;

    return-object v1

    .line 137
    :cond_0
    aget-object v4, v1, v2

    .line 138
    .local v4, "version":Lca/uhn/hl7v2/Version;
    invoke-virtual {v4, p0}, Lca/uhn/hl7v2/Version;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-gez v5, :cond_1

    .line 139
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v4    # "version":Lca/uhn/hl7v2/Version;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static varargs except([Lca/uhn/hl7v2/Version;)[Lca/uhn/hl7v2/Version;
    .locals 4
    .param p0, "v"    # [Lca/uhn/hl7v2/Version;

    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lca/uhn/hl7v2/Version;->values()[Lca/uhn/hl7v2/Version;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 129
    .local v0, "versions":Ljava/util/Set;, "Ljava/util/Set<Lca/uhn/hl7v2/Version;>;"
    const/4 v1, 0x0

    array-length v2, p0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 132
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lca/uhn/hl7v2/Version;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lca/uhn/hl7v2/Version;

    return-object v1

    .line 129
    :cond_0
    aget-object v3, p0, v1

    .line 130
    .local v3, "version":Lca/uhn/hl7v2/Version;
    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 129
    .end local v3    # "version":Lca/uhn/hl7v2/Version;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static highestAvailableVersionOrDefault()Lca/uhn/hl7v2/Version;
    .locals 2

    .line 226
    invoke-static {}, Lca/uhn/hl7v2/Version;->availableVersions()Ljava/util/List;

    move-result-object v0

    .line 227
    .local v0, "availableVersions":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/Version;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 228
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/Version;

    return-object v1

    .line 230
    :cond_0
    sget-object v1, Lca/uhn/hl7v2/Version;->V25:Lca/uhn/hl7v2/Version;

    return-object v1
.end method

.method public static latestVersion()Lca/uhn/hl7v2/Version;
    .locals 2

    .line 110
    invoke-static {}, Lca/uhn/hl7v2/Version;->values()[Lca/uhn/hl7v2/Version;

    move-result-object v0

    .line 111
    .local v0, "versions":[Lca/uhn/hl7v2/Version;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 112
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1

    .line 114
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static lowestAvailableVersion()Lca/uhn/hl7v2/Version;
    .locals 2

    .line 205
    invoke-static {}, Lca/uhn/hl7v2/Version;->availableVersions()Ljava/util/List;

    move-result-object v0

    .line 206
    .local v0, "availableVersions":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/Version;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 207
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/Version;

    return-object v1

    .line 209
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static supportsVersion(Ljava/lang/String;)Z
    .locals 1
    .param p0, "theVersion"    # Ljava/lang/String;

    .line 75
    invoke-static {p0}, Lca/uhn/hl7v2/Version;->versionOf(Ljava/lang/String;)Lca/uhn/hl7v2/Version;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lca/uhn/hl7v2/Version;
    .locals 1

    .line 1
    const-class v0, Lca/uhn/hl7v2/Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lca/uhn/hl7v2/Version;

    return-object p0
.end method

.method public static values()[Lca/uhn/hl7v2/Version;
    .locals 4

    .line 1
    sget-object v0, Lca/uhn/hl7v2/Version;->ENUM$VALUES:[Lca/uhn/hl7v2/Version;

    const/4 v1, 0x0

    array-length v2, v0

    new-array v3, v2, [Lca/uhn/hl7v2/Version;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method

.method public static versionOf(Ljava/lang/String;)Lca/uhn/hl7v2/Version;
    .locals 5
    .param p0, "version"    # Ljava/lang/String;

    .line 82
    invoke-static {}, Lca/uhn/hl7v2/Version;->values()[Lca/uhn/hl7v2/Version;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_0
    aget-object v3, v0, v1

    .line 83
    .local v3, "v":Lca/uhn/hl7v2/Version;
    invoke-virtual {v3}, Lca/uhn/hl7v2/Version;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 84
    return-object v3

    .line 82
    .end local v3    # "v":Lca/uhn/hl7v2/Version;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized available()Z
    .locals 5

    monitor-enter p0

    .line 157
    :try_start_0
    sget-object v0, Lca/uhn/hl7v2/Version;->ourIsOnClasspath:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 158
    .local v0, "retVal":Ljava/lang/Boolean;
    if-nez v0, :cond_2

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ca/uhn/hl7v2/parser/eventmap/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lca/uhn/hl7v2/Version;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "resource":Ljava/lang/String;
    const-class v2, Lca/uhn/hl7v2/parser/Parser;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    .local v2, "in":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    :try_start_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    .line 163
    sget-object v3, Lca/uhn/hl7v2/Version;->ourIsOnClasspath:Ljava/util/Map;

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    nop

    .line 165
    if-eqz v2, :cond_2

    .line 167
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 168
    goto :goto_2

    :catch_0
    move-exception v3

    .line 168
    .end local v1    # "resource":Ljava/lang/String;
    .end local v2    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 164
    .restart local v1    # "resource":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    .line 165
    if-eqz v2, :cond_1

    .line 167
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 168
    goto :goto_1

    :catch_1
    move-exception v4

    .line 172
    :cond_1
    :goto_1
    :try_start_4
    throw v3

    .line 174
    .end local v1    # "resource":Ljava/lang/String;
    .end local v2    # "in":Ljava/io/InputStream;
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v1

    .line 156
    .end local v0    # "retVal":Ljava/lang/Boolean;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPackageVersion()Ljava/lang/String;
    .locals 4

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lca/uhn/hl7v2/Version;->version:Ljava/lang/String;

    const-string v2, "."

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lca/uhn/hl7v2/Version;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isGreaterThan(Lca/uhn/hl7v2/Version;)Z
    .locals 1
    .param p1, "theVersion"    # Lca/uhn/hl7v2/Version;

    .line 102
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/Version;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public modelPackageName()Ljava/lang/String;
    .locals 6

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "classname":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "p":Ljava/lang/String;
    const-string v3, "%s.model.%s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    invoke-virtual {p0}, Lca/uhn/hl7v2/Version;->getPackageVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 147
    return-object v2
.end method

.method public newGenericMessage(Lca/uhn/hl7v2/parser/ModelClassFactory;)Lca/uhn/hl7v2/model/GenericMessage;
    .locals 3
    .param p1, "mcf"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 238
    invoke-static {}, Lca/uhn/hl7v2/Version;->$SWITCH_TABLE$ca$uhn$hl7v2$Version()[I

    move-result-object v0

    invoke-virtual {p0}, Lca/uhn/hl7v2/Version;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 256
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown version (this is a HAPI bug): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lca/uhn/hl7v2/Version;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :pswitch_0
    new-instance v0, Lca/uhn/hl7v2/model/GenericMessage$V26;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/model/GenericMessage$V26;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    return-object v0

    .line 252
    :pswitch_1
    new-instance v0, Lca/uhn/hl7v2/model/GenericMessage$V251;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/model/GenericMessage$V251;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    return-object v0

    .line 250
    :pswitch_2
    new-instance v0, Lca/uhn/hl7v2/model/GenericMessage$V25;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/model/GenericMessage$V25;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    return-object v0

    .line 248
    :pswitch_3
    new-instance v0, Lca/uhn/hl7v2/model/GenericMessage$V24;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/model/GenericMessage$V24;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    return-object v0

    .line 246
    :pswitch_4
    new-instance v0, Lca/uhn/hl7v2/model/GenericMessage$V231;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/model/GenericMessage$V231;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    return-object v0

    .line 244
    :pswitch_5
    new-instance v0, Lca/uhn/hl7v2/model/GenericMessage$V23;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/model/GenericMessage$V23;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    return-object v0

    .line 242
    :pswitch_6
    new-instance v0, Lca/uhn/hl7v2/model/GenericMessage$V22;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/model/GenericMessage$V22;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    return-object v0

    .line 240
    :pswitch_7
    new-instance v0, Lca/uhn/hl7v2/model/GenericMessage$V21;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/model/GenericMessage$V21;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
