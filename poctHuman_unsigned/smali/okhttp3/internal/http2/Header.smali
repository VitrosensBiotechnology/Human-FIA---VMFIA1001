.class public final Lokhttp3/internal/http2/Header;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final PSEUDO_PREFIX:Lokio/ByteString;

.field public static final RESPONSE_STATUS:Lokio/ByteString;

.field public static final RESPONSE_STATUS_UTF8:Ljava/lang/String; = ":status"

.field public static final TARGET_AUTHORITY:Lokio/ByteString;

.field public static final TARGET_AUTHORITY_UTF8:Ljava/lang/String; = ":authority"

.field public static final TARGET_METHOD:Lokio/ByteString;

.field public static final TARGET_METHOD_UTF8:Ljava/lang/String; = ":method"

.field public static final TARGET_PATH:Lokio/ByteString;

.field public static final TARGET_PATH_UTF8:Ljava/lang/String; = ":path"

.field public static final TARGET_SCHEME:Lokio/ByteString;

.field public static final TARGET_SCHEME_UTF8:Ljava/lang/String; = ":scheme"


# instance fields
.field final hpackSize:I

.field public final name:Lokio/ByteString;

.field public final value:Lokio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-string v0, ":"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Header;->PSEUDO_PREFIX:Lokio/ByteString;

    .line 32
    const-string v0, ":status"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    .line 33
    const-string v0, ":method"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lokio/ByteString;

    .line 34
    const-string v0, ":path"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lokio/ByteString;

    .line 35
    const-string v0, ":scheme"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Header;->TARGET_SCHEME:Lokio/ByteString;

    .line 36
    const-string v0, ":authority"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-static {p2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lokio/ByteString;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Lokio/ByteString;
    .param p2, "value"    # Ljava/lang/String;

    .line 51
    invoke-static {p2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lokio/ByteString;Lokio/ByteString;)V
    .locals 2
    .param p1, "name"    # Lokio/ByteString;
    .param p2, "value"    # Lokio/ByteString;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    .line 56
    iput-object p2, p0, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    .line 57
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/16 v1, 0x20

    add-int/2addr v1, v0

    invoke-virtual {p2}, Lokio/ByteString;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lokhttp3/internal/http2/Header;->hpackSize:I

    .line 58
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 61
    instance-of v0, p1, Lokhttp3/internal/http2/Header;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 62
    move-object v0, p1

    check-cast v0, Lokhttp3/internal/http2/Header;

    .line 63
    .local v0, "that":Lokhttp3/internal/http2/Header;
    iget-object v2, p0, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    iget-object v3, v0, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    invoke-virtual {v2, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    iget-object v3, v0, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    .line 64
    invoke-virtual {v2, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    .line 63
    :cond_0
    return v1

    .line 66
    .end local v0    # "that":Lokhttp3/internal/http2/Header;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 70
    const/16 v0, 0x11

    .line 71
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 72
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/2addr v1, v2

    iget-object v0, p0, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 73
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 77
    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
