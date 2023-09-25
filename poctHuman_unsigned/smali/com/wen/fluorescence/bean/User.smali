.class public Lcom/wen/fluorescence/bean/User;
.super Ljava/lang/Object;
.source "User.java"


# instance fields
.field private id:I

.field private mode:I

.field private name:Ljava/lang/String;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/wen/fluorescence/bean/User;->id:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/wen/fluorescence/bean/User;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/wen/fluorescence/bean/User;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPasssword()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/wen/fluorescence/bean/User;->password:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 21
    iput p1, p0, Lcom/wen/fluorescence/bean/User;->id:I

    .line 22
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 45
    iput p1, p0, Lcom/wen/fluorescence/bean/User;->mode:I

    .line 46
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/wen/fluorescence/bean/User;->name:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setPasssword(Ljava/lang/String;)V
    .locals 0
    .param p1, "passsword"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/wen/fluorescence/bean/User;->password:Ljava/lang/String;

    .line 38
    return-void
.end method
