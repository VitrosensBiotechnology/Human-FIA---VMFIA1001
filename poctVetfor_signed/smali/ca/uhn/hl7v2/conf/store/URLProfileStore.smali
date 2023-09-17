.class public abstract Lca/uhn/hl7v2/conf/store/URLProfileStore;
.super Lca/uhn/hl7v2/conf/store/ReadOnlyProfileStore;
.source "URLProfileStore.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lca/uhn/hl7v2/conf/store/ReadOnlyProfileStore;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public getProfile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "ID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/conf/store/URLProfileStore;->getURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 50
    .local v0, "in":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    .local v1, "buf":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    move v3, v2

    .line 52
    .local v3, "c":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 55
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    .end local v0    # "in":Ljava/io/BufferedReader;
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v3    # "c":I
    move-object v0, v2

    .line 57
    .local v0, "profile":Ljava/lang/String;
    nop

    .line 58
    nop

    .line 60
    return-object v0

    .line 52
    .local v0, "in":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    .restart local v3    # "c":I
    :cond_0
    nop

    .line 53
    int-to-char v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v3    # "c":I
    goto :goto_0

    .line 57
    .end local v0    # "in":Ljava/io/BufferedReader;
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MalformedURLException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract getURL(Ljava/lang/String;)Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation
.end method
