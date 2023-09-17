.class Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;
.super Ljava/lang/Object;
.source "ConnectionHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Count"
.end annotation


# instance fields
.field private count:I

.field final synthetic this$1:Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 519
    .local p2, "value":Ljava/lang/Object;, "TD;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;-><init>(Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;Ljava/lang/Object;I)V

    .line 520
    return-void
.end method

.method private constructor <init>(Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;Ljava/lang/Object;I)V
    .locals 0
    .param p3, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;I)V"
        }
    .end annotation

    .line 522
    .local p2, "value":Ljava/lang/Object;, "TD;"
    iput-object p1, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;->this$1:Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput-object p2, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;->value:Ljava/lang/Object;

    .line 524
    iput p3, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;->count:I

    .line 525
    return-void
.end method

.method static synthetic access$0(Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;)Ljava/lang/Object;
    .locals 0

    .line 516
    iget-object p0, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;->value:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method decrease()Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lca/uhn/hl7v2/app/ConnectionHub$CountingMap<",
            "TK;TD;>.Count;"
        }
    .end annotation

    .line 528
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;->isLast()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;

    iget-object v1, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;->this$1:Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;

    iget-object v2, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;->value:Ljava/lang/Object;

    iget v3, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;->count:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;-><init>(Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;->value:Ljava/lang/Object;

    return-object v0
.end method

.method increase()Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lca/uhn/hl7v2/app/ConnectionHub$CountingMap<",
            "TK;TD;>.Count;"
        }
    .end annotation

    .line 536
    new-instance v0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;

    iget-object v1, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;->this$1:Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;

    iget-object v2, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;->value:Ljava/lang/Object;

    iget v3, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;->count:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;-><init>(Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;Ljava/lang/Object;I)V

    return-object v0
.end method

.method isLast()Z
    .locals 2

    .line 540
    iget v0, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;->count:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
