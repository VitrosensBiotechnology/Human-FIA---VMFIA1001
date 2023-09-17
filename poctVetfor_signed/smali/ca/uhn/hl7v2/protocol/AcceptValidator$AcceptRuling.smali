.class public interface abstract Lca/uhn/hl7v2/protocol/AcceptValidator$AcceptRuling;
.super Ljava/lang/Object;
.source "AcceptValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/protocol/AcceptValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AcceptRuling"
.end annotation


# static fields
.field public static final ACK_AR:Ljava/lang/String; = "AR"

.field public static final ACK_CA:Ljava/lang/String; = "CA"

.field public static final ACK_CE:Ljava/lang/String; = "CE"

.field public static final ACK_CR:Ljava/lang/String; = "CR"


# virtual methods
.method public abstract getAckCode()Ljava/lang/String;
.end method

.method public abstract getErrorCode()I
.end method

.method public abstract getReasons()[Ljava/lang/String;
.end method

.method public abstract isAcceptable()Z
.end method
