.class public Lorg/slf4j/helpers/FormattingTuple;
.super Ljava/lang/Object;
.source "FormattingTuple.java"


# static fields
.field public static NULL:Lorg/slf4j/helpers/FormattingTuple;


# instance fields
.field private argArray:[Ljava/lang/Object;

.field private message:Ljava/lang/String;

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lorg/slf4j/helpers/FormattingTuple;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/slf4j/helpers/FormattingTuple;->NULL:Lorg/slf4j/helpers/FormattingTuple;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/slf4j/helpers/FormattingTuple;->message:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lorg/slf4j/helpers/FormattingTuple;->throwable:Ljava/lang/Throwable;

    .line 48
    if-nez p3, :cond_0

    .line 49
    iput-object p2, p0, Lorg/slf4j/helpers/FormattingTuple;->argArray:[Ljava/lang/Object;

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {p2}, Lorg/slf4j/helpers/FormattingTuple;->trimmedCopy([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/slf4j/helpers/FormattingTuple;->argArray:[Ljava/lang/Object;

    .line 53
    :goto_0
    return-void
.end method

.method static trimmedCopy([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p0, "argArray"    # [Ljava/lang/Object;

    .line 56
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 60
    .local v1, "trimemdLen":I
    new-array v2, v1, [Ljava/lang/Object;

    .line 61
    .local v2, "trimmed":[Ljava/lang/Object;
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    return-object v2

    .line 57
    .end local v1    # "trimemdLen":I
    .end local v2    # "trimmed":[Ljava/lang/Object;
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "non-sensical empty or null argument array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getArgArray()[Ljava/lang/Object;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/slf4j/helpers/FormattingTuple;->argArray:[Ljava/lang/Object;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/slf4j/helpers/FormattingTuple;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/slf4j/helpers/FormattingTuple;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method
