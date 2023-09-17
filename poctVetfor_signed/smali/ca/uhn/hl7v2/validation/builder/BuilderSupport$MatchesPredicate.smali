.class Lca/uhn/hl7v2/validation/builder/BuilderSupport$MatchesPredicate;
.super Ljava/lang/Object;
.source "BuilderSupport.java"

# interfaces
.implements Lca/uhn/hl7v2/validation/builder/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/validation/builder/BuilderSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatchesPredicate"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private p:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "matching with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lca/uhn/hl7v2/validation/builder/BuilderSupport$MatchesPredicate;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "matching with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lca/uhn/hl7v2/validation/builder/BuilderSupport$MatchesPredicate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 455
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "description"    # Ljava/lang/String;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$MatchesPredicate;->p:Ljava/util/regex/Pattern;

    .line 459
    iput-object p3, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$MatchesPredicate;->description:Ljava/lang/String;

    .line 460
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$MatchesPredicate;->p:Ljava/util/regex/Pattern;

    .line 450
    iput-object p2, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$MatchesPredicate;->description:Ljava/lang/String;

    .line 451
    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/validation/ValidationException;
        }
    .end annotation

    .line 463
    if-eqz p1, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$MatchesPredicate;->p:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 467
    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$MatchesPredicate;->description:Ljava/lang/String;

    return-object v0
.end method
