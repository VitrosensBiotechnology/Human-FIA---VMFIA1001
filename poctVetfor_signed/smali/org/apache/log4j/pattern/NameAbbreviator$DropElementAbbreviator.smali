.class Lorg/apache/log4j/pattern/NameAbbreviator$DropElementAbbreviator;
.super Lorg/apache/log4j/pattern/NameAbbreviator;
.source "NameAbbreviator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/pattern/NameAbbreviator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropElementAbbreviator"
.end annotation


# instance fields
.field private final count:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "count"    # I

    .line 219
    invoke-direct {p0}, Lorg/apache/log4j/pattern/NameAbbreviator;-><init>()V

    .line 220
    iput p1, p0, Lorg/apache/log4j/pattern/NameAbbreviator$DropElementAbbreviator;->count:I

    .line 221
    return-void
.end method


# virtual methods
.method public abbreviate(ILjava/lang/StringBuffer;)V
    .locals 4
    .param p1, "nameStart"    # I
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .line 229
    iget v0, p0, Lorg/apache/log4j/pattern/NameAbbreviator$DropElementAbbreviator;->count:I

    .line 230
    .local v0, "i":I
    const-string v1, "."

    invoke-virtual {p2, v1, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 231
    .local v1, "pos":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 233
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    .line 234
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, p1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 235
    goto :goto_1

    .line 232
    :cond_0
    const-string v2, "."

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 238
    .end local v1    # "pos":I
    :cond_1
    :goto_1
    return-void
.end method
