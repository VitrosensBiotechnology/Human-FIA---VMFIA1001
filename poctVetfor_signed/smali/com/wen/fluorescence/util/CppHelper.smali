.class public Lcom/wen/fluorescence/util/CppHelper;
.super Ljava/lang/Object;
.source "CppHelper.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    const-string v0, "lib"

    const-string v1, " System.loadLibrary\u2014\u2014\u2014\u2014\u2014\u2014native-lib"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    const-string v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native IapSend(Ljava/lang/String;)I
.end method

.method public static native OpenSerial(Ljava/lang/String;)I
.end method

.method public static native ReadByte()I
.end method

.method public static native WriteByte(C)I
.end method

.method public static native closeDev()V
.end method

.method public static native closeSerial()V
.end method

.method public static init()V
    .locals 0

    .line 16
    return-void
.end method

.method public static native initDev(Ljava/lang/String;)I
.end method

.method public static reLoad()V
    .locals 1

    .line 19
    const-string v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static native writeData(I)I
.end method
