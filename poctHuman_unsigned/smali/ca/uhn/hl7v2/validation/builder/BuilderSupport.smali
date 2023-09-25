.class public abstract Lca/uhn/hl7v2/validation/builder/BuilderSupport;
.super Ljava/lang/Object;
.source "BuilderSupport.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/validation/builder/BuilderSupport$AllOfPredicate;,
        Lca/uhn/hl7v2/validation/builder/BuilderSupport$AlwaysPredicate;,
        Lca/uhn/hl7v2/validation/builder/BuilderSupport$AnyOfPredicate;,
        Lca/uhn/hl7v2/validation/builder/BuilderSupport$EmptyPredicate;,
        Lca/uhn/hl7v2/validation/builder/BuilderSupport$EqualsPredicate;,
        Lca/uhn/hl7v2/validation/builder/BuilderSupport$InPredicate;,
        Lca/uhn/hl7v2/validation/builder/BuilderSupport$MatchesPredicate;,
        Lca/uhn/hl7v2/validation/builder/BuilderSupport$MaxLengthPredicate;,
        Lca/uhn/hl7v2/validation/builder/BuilderSupport$NotPredicate;,
        Lca/uhn/hl7v2/validation/builder/BuilderSupport$WithdrawnPredicate;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic access$0(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 294
    invoke-static {p0, p1}, Lca/uhn/hl7v2/validation/builder/BuilderSupport;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "conjunction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 295
    .local p0, "list":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 297
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 297
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 298
    .local v3, "item":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 299
    const/4 v1, 0x0

    goto :goto_1

    .line 301
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    .end local v3    # "item":Ljava/lang/Object;
    goto :goto_0
.end method


# virtual methods
.method public allOf(Ljava/lang/Iterable;)Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lca/uhn/hl7v2/validation/builder/Predicate;",
            ">;)",
            "Lca/uhn/hl7v2/validation/builder/Predicate;"
        }
    .end annotation

    .line 233
    .local p1, "predicates":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lca/uhn/hl7v2/validation/builder/Predicate;>;"
    new-instance v0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$AllOfPredicate;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/validation/builder/BuilderSupport$AllOfPredicate;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public varargs allOf([Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 1
    .param p1, "predicates"    # [Lca/uhn/hl7v2/validation/builder/Predicate;

    .line 251
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/BuilderSupport;->allOf(Ljava/lang/Iterable;)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public always(Z)Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 1
    .param p1, "b"    # Z

    .line 284
    new-instance v0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$AlwaysPredicate;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/validation/builder/BuilderSupport$AlwaysPredicate;-><init>(Z)V

    return-object v0
.end method

.method public alwaysFails()Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 1

    .line 291
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/BuilderSupport;->always(Z)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public anyOf(Ljava/lang/Iterable;)Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lca/uhn/hl7v2/validation/builder/Predicate;",
            ">;)",
            "Lca/uhn/hl7v2/validation/builder/Predicate;"
        }
    .end annotation

    .line 224
    .local p1, "predicates":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lca/uhn/hl7v2/validation/builder/Predicate;>;"
    new-instance v0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$AnyOfPredicate;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/validation/builder/BuilderSupport$AnyOfPredicate;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public varargs anyOf([Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 1
    .param p1, "predicates"    # [Lca/uhn/hl7v2/validation/builder/Predicate;

    .line 242
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/BuilderSupport;->anyOf(Ljava/lang/Iterable;)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public date()Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 2

    .line 131
    const-string v0, "(\\d{4}([01]\\d(\\d{2})?)?)?"

    const-string v1, "a date string (YYYY[MM[DD]])"

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/validation/builder/BuilderSupport;->matches(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public dateTime()Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 2

    .line 148
    const-string v0, "(\\d{4}([01]\\d(\\d{2}([012]\\d[0-5]\\d([0-5]\\d(\\.\\d(\\d(\\d(\\d)?)?)?)?)?)?)?)?)?([\\+\\-]\\d{4})?"

    .line 149
    const-string v1, "a HL7 datetime string"

    .line 148
    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/validation/builder/BuilderSupport;->matches(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public dateTime25()Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 2

    .line 157
    const-string v0, "(\\d{4}([01]\\d(\\d{2}([012]\\d([0-5]\\d([0-5]\\d(\\.\\d(\\d(\\d(\\d)?)?)?)?)?)?)?)?)?)?([\\+\\-]\\d{4})?"

    .line 158
    const-string v1, "a HL7 datetime string"

    .line 157
    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/validation/builder/BuilderSupport;->matches(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 1

    .line 70
    new-instance v0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$EmptyPredicate;

    invoke-direct {v0}, Lca/uhn/hl7v2/validation/builder/BuilderSupport$EmptyPredicate;-><init>()V

    return-object v0
.end method

.method public emptyOr(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 3
    .param p1, "predicate"    # Lca/uhn/hl7v2/validation/builder/Predicate;

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Lca/uhn/hl7v2/validation/builder/Predicate;

    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/BuilderSupport;->empty()Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/BuilderSupport;->anyOf([Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public in(Ljava/util/Collection;)Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Lca/uhn/hl7v2/validation/builder/Predicate;"
        }
    .end annotation

    .line 215
    .local p1, "allowed":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$InPredicate;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/validation/builder/BuilderSupport$InPredicate;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public varargs in([Ljava/lang/Object;)Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 2
    .param p1, "allowed"    # [Ljava/lang/Object;

    .line 206
    new-instance v0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$InPredicate;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/validation/builder/BuilderSupport$InPredicate;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isEqual(Ljava/lang/Object;)Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 1
    .param p1, "expected"    # Ljava/lang/Object;

    .line 53
    new-instance v0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$EqualsPredicate;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/validation/builder/BuilderSupport$EqualsPredicate;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public isEqualIgnoreCase(Ljava/lang/Object;)Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 2
    .param p1, "expected"    # Ljava/lang/Object;

    .line 62
    new-instance v0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$EqualsPredicate;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lca/uhn/hl7v2/validation/builder/BuilderSupport$EqualsPredicate;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public matches(Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;

    .line 88
    new-instance v0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$MatchesPredicate;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/validation/builder/BuilderSupport$MatchesPredicate;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public matches(Ljava/lang/String;I)Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 195
    new-instance v0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$MatchesPredicate;

    invoke-direct {v0, p1, p2}, Lca/uhn/hl7v2/validation/builder/BuilderSupport$MatchesPredicate;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public matches(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .line 98
    new-instance v0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$MatchesPredicate;

    invoke-direct {v0, p1, p2}, Lca/uhn/hl7v2/validation/builder/BuilderSupport$MatchesPredicate;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public maxLength(I)Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 1
    .param p1, "maxSize"    # I

    .line 269
    new-instance v0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$MaxLengthPredicate;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/validation/builder/BuilderSupport$MaxLengthPredicate;-><init>(I)V

    return-object v0
.end method

.method public nonNegativeInteger()Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 2

    .line 115
    const-string v0, "\\d*"

    const-string v1, "a non-negative integer (0,1,2,...)"

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/validation/builder/BuilderSupport;->matches(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public not(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 1
    .param p1, "predicate"    # Lca/uhn/hl7v2/validation/builder/Predicate;

    .line 260
    new-instance v0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$NotPredicate;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/validation/builder/BuilderSupport$NotPredicate;-><init>(Lca/uhn/hl7v2/validation/builder/Predicate;)V

    return-object v0
.end method

.method public number()Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 2

    .line 123
    const-string v0, "(\\+|\\-)?\\d*\\.?\\d*"

    const-string v1, "a number with optional decimal digits"

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/validation/builder/BuilderSupport;->matches(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public oid()Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 2

    .line 175
    const-string v0, "[0-2](\\.(0|([1-9][0-9]*)))+"

    .line 176
    const-string v1, "an Object Identifier (OID)"

    .line 175
    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/validation/builder/BuilderSupport;->matches(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public startsWith(Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "starts with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/validation/builder/BuilderSupport;->matches(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public time()Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 2

    .line 139
    const-string v0, "([012]\\d([0-5]\\d([0-5]\\d(\\.\\d(\\d(\\d(\\d)?)?)?)?)?)?)?([\\+\\-]\\d{4})?"

    .line 140
    const-string v1, "a HL7 time string"

    .line 139
    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/validation/builder/BuilderSupport;->matches(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public usPhoneNumber()Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 2

    .line 166
    const-string v0, "(\\d{1,2} )?(\\(\\d{3}\\))?\\d{3}-\\d{4}(X\\d{1,5})?(B\\d{1,5})?(C.*)?"

    .line 167
    const-string v1, "a US phone number"

    .line 166
    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/validation/builder/BuilderSupport;->matches(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public uuid()Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 2

    .line 184
    const-string v0, "\\p{XDigit}{8}-\\p{XDigit}{4}-\\p{XDigit}{4}-\\p{XDigit}{4}-\\p{XDigit}{12}"

    .line 185
    const-string v1, "a Unique Universal Identifier (UUID)"

    .line 184
    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/validation/builder/BuilderSupport;->matches(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public withdrawn()Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 1

    .line 277
    new-instance v0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$WithdrawnPredicate;

    invoke-direct {v0}, Lca/uhn/hl7v2/validation/builder/BuilderSupport$WithdrawnPredicate;-><init>()V

    return-object v0
.end method
