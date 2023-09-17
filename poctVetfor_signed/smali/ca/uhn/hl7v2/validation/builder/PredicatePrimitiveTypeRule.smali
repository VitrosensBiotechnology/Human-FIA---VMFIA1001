.class public Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;
.super Lca/uhn/hl7v2/validation/impl/AbstractPrimitiveTypeRule;
.source "PredicatePrimitiveTypeRule.java"

# interfaces
.implements Lca/uhn/hl7v2/validation/builder/PredicateRuleSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/validation/impl/AbstractPrimitiveTypeRule;",
        "Lca/uhn/hl7v2/validation/builder/PredicateRuleSupport<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final LEADING_WHITESPACE:Ljava/util/regex/Pattern;

.field private static final TRAILING_WHITESPACE:Ljava/util/regex/Pattern;


# instance fields
.field private predicate:Lca/uhn/hl7v2/validation/builder/Predicate;

.field private trimmer:Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-string v0, "^\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;->LEADING_WHITESPACE:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, "\\s+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;->TRAILING_WHITESPACE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/validation/builder/Predicate;)V
    .locals 1
    .param p1, "predicate"    # Lca/uhn/hl7v2/validation/builder/Predicate;

    .line 83
    sget-object v0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;->NONE:Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

    invoke-direct {p0, p1, v0}, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;-><init>(Lca/uhn/hl7v2/validation/builder/Predicate;Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/validation/builder/Predicate;Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;)V
    .locals 2
    .param p1, "predicate"    # Lca/uhn/hl7v2/validation/builder/Predicate;
    .param p2, "trimmer"    # Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

    .line 91
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/impl/AbstractPrimitiveTypeRule;-><init>()V

    .line 92
    iput-object p1, p0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;->predicate:Lca/uhn/hl7v2/validation/builder/Predicate;

    .line 93
    iput-object p2, p0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;->trimmer:Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Primitive value \'%s\' requires to be "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lca/uhn/hl7v2/validation/builder/Predicate;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;->setDescription(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method static synthetic access$1()Ljava/util/regex/Pattern;
    .locals 1

    .line 42
    sget-object v0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;->LEADING_WHITESPACE:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$2()Ljava/util/regex/Pattern;
    .locals 1

    .line 43
    sget-object v0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;->TRAILING_WHITESPACE:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;->apply(Ljava/lang/String;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/String;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;->getPredicate()Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v0

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;->correct(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lca/uhn/hl7v2/validation/builder/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;->result(ZLjava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v0
    :try_end_0
    .catch Lca/uhn/hl7v2/validation/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lca/uhn/hl7v2/validation/ValidationException;
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;->failed(Ljava/lang/Exception;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v1

    return-object v1
.end method

.method public correct(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;->trimmer:Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPredicate()Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 1

    .line 98
    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;->predicate:Lca/uhn/hl7v2/validation/builder/Predicate;

    return-object v0
.end method

.method public test(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;->getPredicate()Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v0

    invoke-interface {v0, p1}, Lca/uhn/hl7v2/validation/builder/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lca/uhn/hl7v2/validation/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Lca/uhn/hl7v2/validation/ValidationException;
    const/4 v1, 0x0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
