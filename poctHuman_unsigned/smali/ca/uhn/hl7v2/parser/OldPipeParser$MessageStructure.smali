.class Lca/uhn/hl7v2/parser/OldPipeParser$MessageStructure;
.super Ljava/lang/Object;
.source "OldPipeParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/parser/OldPipeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageStructure"
.end annotation


# instance fields
.field public explicitlyDefined:Z

.field public messageStructure:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "theMessageStructure"    # Ljava/lang/String;
    .param p2, "isExplicitlyDefined"    # Z

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    iput-object p1, p0, Lca/uhn/hl7v2/parser/OldPipeParser$MessageStructure;->messageStructure:Ljava/lang/String;

    .line 791
    iput-boolean p2, p0, Lca/uhn/hl7v2/parser/OldPipeParser$MessageStructure;->explicitlyDefined:Z

    .line 792
    return-void
.end method
