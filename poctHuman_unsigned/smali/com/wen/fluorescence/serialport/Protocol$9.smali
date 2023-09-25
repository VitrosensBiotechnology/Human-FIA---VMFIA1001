.class final Lcom/wen/fluorescence/serialport/Protocol$9;
.super Ljava/lang/Object;
.source "Protocol.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/serialport/Protocol;->sendUpgradingCMDInfo(Lcom/wen/fluorescence/bean/Version;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mTX:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/wen/fluorescence/serialport/Protocol$9;->val$mTX:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendCallBack()V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/wen/fluorescence/serialport/Protocol$9;->val$mTX:[B

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/CommActivity;->SendData([B)V

    .line 441
    return-void
.end method
