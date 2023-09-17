.class public Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;
.super Ljava/lang/Object;
.source "Hl7InputStreamMessageStringIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator$ParseFailureError;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final ourLog:Lorg/slf4j/Logger;


# instance fields
.field private myBuffer:Ljava/lang/StringBuilder;

.field private myFoundMessageInBuffer:Z

.field private myHasNext:Ljava/lang/Boolean;

.field private myIgnoreComments:Z

.field private myNext:Ljava/lang/String;

.field private myReader:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->ourLog:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "theInputStream"    # Ljava/io/InputStream;

    .line 54
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;-><init>(Ljava/io/Reader;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "theReader"    # Ljava/io/Reader;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myBuffer:Ljava/lang/StringBuilder;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myFoundMessageInBuffer:Z

    .line 64
    new-instance v0, Ljava/io/PushbackReader;

    invoke-direct {v0, p1}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myReader:Ljava/io/Reader;

    .line 65
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 11

    .line 71
    iget-object v0, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myHasNext:Ljava/lang/Boolean;

    if-nez v0, :cond_c

    .line 74
    const/4 v0, -0x1

    .line 75
    .local v0, "prev":I
    const/4 v1, -0x1

    .line 76
    .local v1, "endOfBuffer":I
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .line 80
    .local v0, "inComment":Z
    .local v3, "prev":I
    :cond_0
    :goto_0
    :try_start_0
    iget-object v4, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myReader:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/io/Reader;->read()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .local v4, "next":I
    nop

    .line 82
    nop

    .line 85
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 86
    goto/16 :goto_2

    .line 89
    :cond_1
    int-to-char v6, v4

    .line 90
    .local v6, "nextChar":C
    const/16 v7, 0x23

    const/16 v8, 0xa

    const/16 v9, 0xd

    if-ne v6, v7, :cond_3

    iget-boolean v7, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myIgnoreComments:Z

    if-eqz v7, :cond_3

    if-eq v3, v5, :cond_2

    if-eq v3, v8, :cond_2

    if-ne v3, v9, :cond_3

    .line 91
    :cond_2
    const/4 v0, 0x1

    .line 92
    goto :goto_0

    .line 96
    :cond_3
    const/4 v7, 0x1

    if-ne v6, v8, :cond_4

    .line 97
    iget-object v8, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_7

    .line 98
    iget-object v8, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myBuffer:Ljava/lang/StringBuilder;

    iget-object v10, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-eq v8, v9, :cond_7

    .line 101
    iget-object v8, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    goto :goto_1

    :cond_4
    if-eqz v0, :cond_6

    .line 105
    if-eq v6, v8, :cond_5

    if-ne v6, v9, :cond_7

    .line 106
    :cond_5
    const/4 v0, 0x0

    .line 108
    goto :goto_1

    .line 109
    :cond_6
    iget-object v8, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    :cond_7
    :goto_1
    move v3, v4

    .line 114
    iget-object v8, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .line 115
    .local v8, "bLength":I
    const/16 v9, 0x48

    if-ne v6, v9, :cond_0

    const/4 v9, 0x3

    if-lt v8, v9, :cond_0

    .line 116
    iget-object v9, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myBuffer:Ljava/lang/StringBuilder;

    add-int/lit8 v10, v8, -0x2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    const/16 v10, 0x53

    if-ne v9, v10, :cond_0

    .line 117
    iget-object v9, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myBuffer:Ljava/lang/StringBuilder;

    add-int/lit8 v10, v8, -0x3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    const/16 v10, 0x4d

    if-ne v9, v10, :cond_0

    .line 118
    iget-boolean v9, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myFoundMessageInBuffer:Z

    if-eqz v9, :cond_b

    .line 119
    iget-object v7, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myBuffer:Ljava/lang/StringBuilder;

    add-int/lit8 v9, v8, -0x4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v9, 0x20

    if-ge v7, v9, :cond_0

    .line 120
    add-int/lit8 v1, v8, -0x3

    .line 121
    nop

    .line 78
    .end local v6    # "nextChar":C
    .end local v8    # "bLength":I
    :goto_2
    nop

    .line 135
    iget-boolean v6, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myFoundMessageInBuffer:Z

    if-nez v6, :cond_8

    .line 136
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myHasNext:Ljava/lang/Boolean;

    .line 137
    iget-object v2, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myHasNext:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 141
    :cond_8
    if-le v1, v5, :cond_9

    .line 142
    iget-object v5, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "msgString":Ljava/lang/String;
    iget-object v6, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 144
    goto :goto_3

    .line 145
    .end local v5    # "msgString":Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 146
    .restart local v5    # "msgString":Ljava/lang/String;
    iget-object v6, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 149
    :goto_3
    const-string v2, "MSH"

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 150
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myHasNext:Ljava/lang/Boolean;

    .line 151
    iget-object v2, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myHasNext:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 154
    :cond_a
    iput-object v5, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myNext:Ljava/lang/String;

    .line 155
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myHasNext:Ljava/lang/Boolean;

    .line 155
    .end local v0    # "inComment":Z
    .end local v1    # "endOfBuffer":I
    .end local v3    # "prev":I
    .end local v4    # "next":I
    .end local v5    # "msgString":Ljava/lang/String;
    goto :goto_4

    .line 126
    .restart local v0    # "inComment":Z
    .restart local v1    # "endOfBuffer":I
    .restart local v3    # "prev":I
    .restart local v4    # "next":I
    .restart local v6    # "nextChar":C
    .restart local v8    # "bLength":I
    :cond_b
    iget-object v5, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myBuffer:Ljava/lang/StringBuilder;

    add-int/lit8 v9, v8, -0x3

    invoke-virtual {v5, v2, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 127
    iput-boolean v7, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myFoundMessageInBuffer:Z

    .line 78
    .end local v4    # "next":I
    .end local v6    # "nextChar":C
    .end local v8    # "bLength":I
    goto/16 :goto_0

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator$ParseFailureError;

    const-string v5, "IOException reading from input"

    invoke-direct {v4, v5, v2}, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator$ParseFailureError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 158
    .end local v0    # "inComment":Z
    .end local v1    # "endOfBuffer":I
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "prev":I
    :cond_c
    :goto_4
    iget-object v0, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myHasNext:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    .line 165
    invoke-virtual {p0}, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 168
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myNext:Ljava/lang/String;

    .line 169
    .local v0, "retVal":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myNext:Ljava/lang/String;

    .line 170
    iput-object v1, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myHasNext:Ljava/lang/Boolean;

    .line 171
    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 181
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setIgnoreComments(Z)V
    .locals 0
    .param p1, "theIgnoreComments"    # Z

    .line 189
    iput-boolean p1, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->myIgnoreComments:Z

    .line 190
    return-void
.end method
