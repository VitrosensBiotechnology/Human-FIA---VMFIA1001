.class public Lcom/example/libdecodewlt/RAW2BMP;
.super Ljava/lang/Object;
.source "RAW2BMP.java"


# static fields
.field static bmpHeader:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 14
    const/16 v0, 0x36

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x42

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x4d

    aput-byte v3, v1, v2

    const/4 v3, 0x2

    const/16 v4, -0x32

    aput-byte v4, v1, v3

    const/4 v3, 0x3

    const/16 v4, -0x69

    aput-byte v4, v1, v3

    const/16 v3, 0xa

    aput-byte v0, v1, v3

    const/16 v0, 0xe

    const/16 v3, 0x28

    aput-byte v3, v1, v0

    .line 15
    const/16 v0, 0x12

    const/16 v3, 0x66

    aput-byte v3, v1, v0

    const/16 v0, 0x16

    const/16 v3, 0x7e

    aput-byte v3, v1, v0

    const/16 v0, 0x1a

    aput-byte v2, v1, v0

    const/16 v0, 0x1c

    const/16 v2, 0x18

    aput-byte v2, v1, v0

    .line 14
    sput-object v1, Lcom/example/libdecodewlt/RAW2BMP;->bmpHeader:[B

    .line 64
    const-string v0, "HSRAW2BMP"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 66
    const-string v0, "wlt2bmp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BGR2BMP([B[BLjava/lang/String;)V
    .locals 6
    .param p0, "BGRbuf"    # [B
    .param p1, "bmpBuf"    # [B
    .param p2, "filepath"    # Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    .line 23
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x36

    if-lt v0, v1, :cond_3

    .line 28
    .end local v0    # "i":I
    const v2, 0x969c

    new-array v3, v2, [B

    .line 29
    .local v3, "bmpRgb":[B
    const/4 v0, 0x0

    .line 29
    .restart local v0    # "i":I
    :goto_1
    if-lt v0, v2, :cond_2

    .line 36
    .end local v0    # "i":I
    const/4 v0, 0x0

    .line 36
    .local v0, "j":I
    :goto_2
    const/16 v2, 0x7e

    if-lt v0, v2, :cond_1

    .line 40
    .end local v0    # "j":I
    const-string v0, ""

    if-ne p2, v0, :cond_0

    .line 42
    return-void

    .line 46
    :cond_0
    invoke-static {p1, p2}, Lcom/example/libdecodewlt/RAW2BMP;->bytesToImageFile([BLjava/lang/String;)V

    .line 48
    return-void

    .line 38
    .restart local v0    # "j":I
    :cond_1
    mul-int/lit16 v2, v0, 0x132

    mul-int/lit16 v4, v0, 0x134

    add-int/2addr v4, v1

    const/16 v5, 0x132

    invoke-static {v3, v2, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 31
    .local v0, "i":I
    :cond_2
    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p0, v4

    aput-byte v4, v3, v0

    .line 32
    add-int/lit8 v4, v0, 0x2

    aget-byte v5, p0, v0

    aput-byte v5, v3, v4

    .line 33
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v3, v4

    .line 29
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 25
    .end local v3    # "bmpRgb":[B
    :cond_3
    sget-object v1, Lcom/example/libdecodewlt/RAW2BMP;->bmpHeader:[B

    aget-byte v1, v1, v0

    aput-byte v1, p1, v0

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static native HS_RAW2BMP([B[BI)I
.end method

.method private static bytesToImageFile([BLjava/lang/String;)V
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "filepath"    # Ljava/lang/String;

    .line 53
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 55
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    array-length v3, p0

    invoke-virtual {v1, p0, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 56
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 57
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
