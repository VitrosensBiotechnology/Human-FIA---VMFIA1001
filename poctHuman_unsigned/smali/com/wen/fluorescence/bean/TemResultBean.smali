.class public Lcom/wen/fluorescence/bean/TemResultBean;
.super Ljava/lang/Object;
.source "TemResultBean.java"


# instance fields
.field private code:I

.field private itemName:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private verdict:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/wen/fluorescence/bean/TemResultBean;->code:I

    return v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/wen/fluorescence/bean/TemResultBean;->itemName:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/wen/fluorescence/bean/TemResultBean;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getVerdict()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/wen/fluorescence/bean/TemResultBean;->verdict:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .line 22
    iput p1, p0, Lcom/wen/fluorescence/bean/TemResultBean;->code:I

    .line 23
    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemName"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/wen/fluorescence/bean/TemResultBean;->itemName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/wen/fluorescence/bean/TemResultBean;->result:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setVerdict(Ljava/lang/String;)V
    .locals 0
    .param p1, "verdict"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/wen/fluorescence/bean/TemResultBean;->verdict:Ljava/lang/String;

    .line 39
    return-void
.end method
