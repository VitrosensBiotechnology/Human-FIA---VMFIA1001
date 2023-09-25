.class Lca/uhn/hl7v2/parser/PipeParser$MessageStructure;
.super Ljava/lang/Object;
.source "PipeParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/parser/PipeParser;
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

    .line 1191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1192
    iput-object p1, p0, Lca/uhn/hl7v2/parser/PipeParser$MessageStructure;->messageStructure:Ljava/lang/String;

    .line 1193
    iput-boolean p2, p0, Lca/uhn/hl7v2/parser/PipeParser$MessageStructure;->explicitlyDefined:Z

    .line 1194
    return-void
.end method
