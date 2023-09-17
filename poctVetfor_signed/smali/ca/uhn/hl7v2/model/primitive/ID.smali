.class public abstract Lca/uhn/hl7v2/model/primitive/ID;
.super Lca/uhn/hl7v2/model/primitive/AbstractTextPrimitive;
.source "ID.java"


# instance fields
.field private myTable:I


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 1
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;

    .line 59
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/primitive/AbstractTextPrimitive;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lca/uhn/hl7v2/model/primitive/ID;->myTable:I

    .line 60
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/model/Message;I)V
    .locals 1
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "theTable"    # I

    .line 67
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/primitive/AbstractTextPrimitive;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lca/uhn/hl7v2/model/primitive/ID;->myTable:I

    .line 68
    iput p2, p0, Lca/uhn/hl7v2/model/primitive/ID;->myTable:I

    .line 69
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "theTable"    # Ljava/lang/Integer;

    .line 76
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/primitive/AbstractTextPrimitive;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lca/uhn/hl7v2/model/primitive/ID;->myTable:I

    .line 77
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lca/uhn/hl7v2/model/primitive/ID;->myTable:I

    .line 78
    return-void
.end method


# virtual methods
.method public getTable()I
    .locals 1

    .line 84
    iget v0, p0, Lca/uhn/hl7v2/model/primitive/ID;->myTable:I

    return v0
.end method

.method public setTable(I)V
    .locals 0
    .param p1, "theTable"    # I

    .line 91
    iput p1, p0, Lca/uhn/hl7v2/model/primitive/ID;->myTable:I

    .line 92
    return-void
.end method
