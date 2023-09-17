.class Lca/uhn/hl7v2/parser/PipeParser$Holder;
.super Ljava/lang/Object;
.source "PipeParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/parser/PipeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private myObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1197
    .local p0, "this":Lca/uhn/hl7v2/parser/PipeParser$Holder;, "Lca/uhn/hl7v2/parser/PipeParser$Holder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lca/uhn/hl7v2/parser/PipeParser$Holder;)V
    .locals 0

    .line 1197
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/PipeParser$Holder;-><init>()V

    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1201
    .local p0, "this":Lca/uhn/hl7v2/parser/PipeParser$Holder;, "Lca/uhn/hl7v2/parser/PipeParser$Holder<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/parser/PipeParser$Holder;->myObject:Ljava/lang/Object;

    return-object v0
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1205
    .local p0, "this":Lca/uhn/hl7v2/parser/PipeParser$Holder;, "Lca/uhn/hl7v2/parser/PipeParser$Holder<TT;>;"
    .local p1, "theObject":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lca/uhn/hl7v2/parser/PipeParser$Holder;->myObject:Ljava/lang/Object;

    .line 1206
    return-void
.end method
