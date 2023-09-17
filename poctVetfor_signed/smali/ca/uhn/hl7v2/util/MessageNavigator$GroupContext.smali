.class Lca/uhn/hl7v2/util/MessageNavigator$GroupContext;
.super Ljava/lang/Object;
.source "MessageNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/util/MessageNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupContext"
.end annotation


# instance fields
.field public child:I

.field public group:Lca/uhn/hl7v2/model/Group;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Group;I)V
    .locals 0
    .param p1, "g"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "c"    # I

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object p1, p0, Lca/uhn/hl7v2/util/MessageNavigator$GroupContext;->group:Lca/uhn/hl7v2/model/Group;

    .line 289
    iput p2, p0, Lca/uhn/hl7v2/util/MessageNavigator$GroupContext;->child:I

    .line 290
    return-void
.end method
