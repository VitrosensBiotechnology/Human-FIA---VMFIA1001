.class public Lgiven/tronho/api/TronhoLibApi;
.super Ljava/lang/Object;
.source "TronhoLibApi.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const-string v0, "tronholib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getLibVersion()I
.end method

.method public static native startCalculate(Lgiven/tronho/api/IDChipDataLib;Lgiven/tronho/api/InputDataLib;Lgiven/tronho/api/ResultStructLib;)V
.end method
