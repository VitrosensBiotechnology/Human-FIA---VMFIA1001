.class public abstract Lca/uhn/hl7v2/validation/AbstractValidator;
.super Ljava/lang/Object;
.source "AbstractValidator.java"

# interfaces
.implements Lca/uhn/hl7v2/validation/Validator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lca/uhn/hl7v2/validation/Validator<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private validatePrimitives:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lca/uhn/hl7v2/validation/AbstractValidator;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/validation/AbstractValidator;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    .local p0, "this":Lca/uhn/hl7v2/validation/AbstractValidator;, "Lca/uhn/hl7v2/validation/AbstractValidator<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private testComponent(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;Lca/uhn/hl7v2/Location;)V
    .locals 4
    .param p1, "type"    # Lca/uhn/hl7v2/model/Type;
    .param p3, "l"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Type;",
            "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<",
            "TR;>;",
            "Lca/uhn/hl7v2/Location;",
            ")V"
        }
    .end annotation

    .line 159
    .local p0, "this":Lca/uhn/hl7v2/validation/AbstractValidator;, "Lca/uhn/hl7v2/validation/AbstractValidator<TR;>;"
    .local p2, "handler":Lca/uhn/hl7v2/validation/ValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<TR;>;"
    instance-of v0, p1, Lca/uhn/hl7v2/model/Composite;

    if-eqz v0, :cond_1

    .line 160
    move-object v0, p1

    check-cast v0, Lca/uhn/hl7v2/model/Composite;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Composite;->getComponents()[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    .line 161
    .local v0, "component":[Lca/uhn/hl7v2/model/Type;
    const/4 v1, 0x0

    .line 161
    .local v1, "sub":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 165
    .end local v0    # "component":[Lca/uhn/hl7v2/model/Type;
    .end local v1    # "sub":I
    goto :goto_1

    .line 162
    .restart local v0    # "component":[Lca/uhn/hl7v2/model/Type;
    .restart local v1    # "sub":I
    :cond_0
    new-instance v2, Lca/uhn/hl7v2/Location;

    invoke-direct {v2, p3}, Lca/uhn/hl7v2/Location;-><init>(Lca/uhn/hl7v2/Location;)V

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/Location;->withSubcomponent(I)Lca/uhn/hl7v2/Location;

    move-result-object v2

    .line 163
    .local v2, "location":Lca/uhn/hl7v2/Location;
    aget-object v3, v0, v1

    invoke-direct {p0, v3, p2, v2}, Lca/uhn/hl7v2/validation/AbstractValidator;->testSubComponent(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;Lca/uhn/hl7v2/Location;)V

    .line 161
    .end local v2    # "location":Lca/uhn/hl7v2/Location;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "component":[Lca/uhn/hl7v2/model/Type;
    .end local v1    # "sub":I
    :cond_1
    instance-of v0, p1, Lca/uhn/hl7v2/model/Varies;

    if-eqz v0, :cond_2

    .line 166
    move-object v0, p1

    check-cast v0, Lca/uhn/hl7v2/model/Varies;

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lca/uhn/hl7v2/validation/AbstractValidator;->testComponent(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;Lca/uhn/hl7v2/Location;)V

    .line 167
    goto :goto_1

    .line 168
    :cond_2
    move-object v0, p1

    check-cast v0, Lca/uhn/hl7v2/model/Primitive;

    invoke-direct {p0, v0, p2, p3}, Lca/uhn/hl7v2/validation/AbstractValidator;->testPrimitive(Lca/uhn/hl7v2/model/Primitive;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;Lca/uhn/hl7v2/Location;)V

    .line 170
    :goto_1
    return-void
.end method

.method private testMessageRules(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;)V
    .locals 8
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Message;",
            "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<",
            "TR;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 107
    .local p0, "this":Lca/uhn/hl7v2/validation/AbstractValidator;, "Lca/uhn/hl7v2/validation/AbstractValidator<TR;>;"
    .local p2, "handler":Lca/uhn/hl7v2/validation/ValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<TR;>;"
    new-instance v0, Lca/uhn/hl7v2/util/Terser;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/util/Terser;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 108
    .local v0, "t":Lca/uhn/hl7v2/util/Terser;
    const-string v1, "MSH-9-1"

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "messageType":Ljava/lang/String;
    const-string v2, "MSH-9-2"

    invoke-virtual {v0, v2}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "triggerEvent":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v3, "rules":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/validation/MessageRule;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/AbstractValidator;->getValidationContext()Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 112
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/AbstractValidator;->getValidationContext()Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v4

    invoke-interface {p1}, Lca/uhn/hl7v2/model/Message;->getVersion()Ljava/lang/String;

    move-result-object v5

    .line 113
    nop

    .line 112
    invoke-interface {v4, v5, v1, v2}, Lca/uhn/hl7v2/validation/ValidationContext;->getMessageRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 115
    :cond_0
    sget-object v4, Lca/uhn/hl7v2/validation/AbstractValidator;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Validating message against {} message rules"

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 122
    return-void

    .line 116
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lca/uhn/hl7v2/validation/MessageRule;

    .line 117
    .local v5, "rule":Lca/uhn/hl7v2/validation/MessageRule;
    invoke-interface {v5, p1}, Lca/uhn/hl7v2/validation/MessageRule;->apply(Ljava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v6

    .line 118
    .local v6, "ex":[Lca/uhn/hl7v2/validation/ValidationException;
    if-eqz v6, :cond_1

    array-length v7, v6

    if-lez v7, :cond_1

    .line 119
    invoke-interface {p2, v6}, Lca/uhn/hl7v2/validation/ValidationExceptionHandler;->onExceptions([Lca/uhn/hl7v2/validation/ValidationException;)V

    .line 119
    .end local v5    # "rule":Lca/uhn/hl7v2/validation/MessageRule;
    .end local v6    # "ex":[Lca/uhn/hl7v2/validation/ValidationException;
    goto :goto_0
.end method

.method private testPrimitive(Lca/uhn/hl7v2/model/Primitive;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;Lca/uhn/hl7v2/Location;)V
    .locals 8
    .param p1, "p"    # Lca/uhn/hl7v2/model/Primitive;
    .param p3, "l"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Primitive;",
            "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<",
            "TR;>;",
            "Lca/uhn/hl7v2/Location;",
            ")V"
        }
    .end annotation

    .line 181
    .local p0, "this":Lca/uhn/hl7v2/validation/AbstractValidator;, "Lca/uhn/hl7v2/validation/AbstractValidator<TR;>;"
    .local p2, "handler":Lca/uhn/hl7v2/validation/ValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<TR;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v0, "rules":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/validation/PrimitiveTypeRule;>;"
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Primitive;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    .line 183
    .local v1, "m":Lca/uhn/hl7v2/model/Message;
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/AbstractValidator;->getValidationContext()Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 184
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/AbstractValidator;->getValidationContext()Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v2

    invoke-interface {v1}, Lca/uhn/hl7v2/model/Message;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lca/uhn/hl7v2/model/Primitive;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, p1}, Lca/uhn/hl7v2/validation/ValidationContext;->getPrimitiveRules(Ljava/lang/String;Ljava/lang/String;Lca/uhn/hl7v2/model/Primitive;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 195
    return-void

    .line 186
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lca/uhn/hl7v2/validation/PrimitiveTypeRule;

    .line 187
    .local v3, "rule":Lca/uhn/hl7v2/validation/PrimitiveTypeRule;
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Primitive;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lca/uhn/hl7v2/validation/PrimitiveTypeRule;->apply(Ljava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v4

    .line 188
    .local v4, "exceptions":[Lca/uhn/hl7v2/validation/ValidationException;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v5, :cond_3

    .line 191
    array-length v5, v4

    if-lez v5, :cond_1

    .line 192
    invoke-interface {p2, v4}, Lca/uhn/hl7v2/validation/ValidationExceptionHandler;->onExceptions([Lca/uhn/hl7v2/validation/ValidationException;)V

    .line 192
    .end local v3    # "rule":Lca/uhn/hl7v2/validation/PrimitiveTypeRule;
    .end local v4    # "exceptions":[Lca/uhn/hl7v2/validation/ValidationException;
    goto :goto_0

    .line 188
    .restart local v3    # "rule":Lca/uhn/hl7v2/validation/PrimitiveTypeRule;
    .restart local v4    # "exceptions":[Lca/uhn/hl7v2/validation/ValidationException;
    :cond_3
    aget-object v7, v4, v6

    .line 189
    .local v7, "ve":Lca/uhn/hl7v2/validation/ValidationException;
    invoke-virtual {v7, p3}, Lca/uhn/hl7v2/validation/ValidationException;->setLocation(Lca/uhn/hl7v2/Location;)V

    .line 188
    .end local v7    # "ve":Lca/uhn/hl7v2/validation/ValidationException;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method private testPrimitiveRules(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;)V
    .locals 7
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Message;",
            "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<",
            "TR;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 126
    .local p0, "this":Lca/uhn/hl7v2/validation/AbstractValidator;, "Lca/uhn/hl7v2/validation/AbstractValidator<TR;>;"
    .local p2, "handler":Lca/uhn/hl7v2/validation/ValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<TR;>;"
    sget-object v0, Lca/uhn/hl7v2/validation/AbstractValidator;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Validating message against primitive type rules"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 128
    invoke-static {p1}, Lca/uhn/hl7v2/util/ReadOnlyMessageIterator;->createPopulatedSegmentIterator(Lca/uhn/hl7v2/model/Group;)Ljava/util/Iterator;

    move-result-object v0

    .line 127
    nop

    .line 128
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/model/Structure;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/model/Structure;>;"
    return-void

    .line 129
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/model/Structure;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/model/Segment;

    .line 130
    .local v1, "s":Lca/uhn/hl7v2/model/Segment;
    const/4 v2, 0x1

    .line 130
    .local v2, "field":I
    :goto_1
    invoke-interface {v1}, Lca/uhn/hl7v2/model/Segment;->numFields()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 130
    .end local v1    # "s":Lca/uhn/hl7v2/model/Segment;
    .end local v2    # "field":I
    goto :goto_0

    .line 131
    .restart local v1    # "s":Lca/uhn/hl7v2/model/Segment;
    .restart local v2    # "field":I
    :cond_1
    invoke-interface {v1, v2}, Lca/uhn/hl7v2/model/Segment;->getField(I)[Lca/uhn/hl7v2/model/Type;

    move-result-object v3

    .line 132
    .local v3, "t":[Lca/uhn/hl7v2/model/Type;
    const/4 v4, 0x0

    .line 132
    .local v4, "rep":I
    :goto_2
    array-length v5, v3

    if-lt v4, v5, :cond_2

    .line 130
    .end local v3    # "t":[Lca/uhn/hl7v2/model/Type;
    .end local v4    # "rep":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    .restart local v3    # "t":[Lca/uhn/hl7v2/model/Type;
    .restart local v4    # "rep":I
    :cond_2
    new-instance v5, Lca/uhn/hl7v2/Location;

    invoke-direct {v5}, Lca/uhn/hl7v2/Location;-><init>()V

    .line 134
    .local v5, "location":Lca/uhn/hl7v2/Location;
    nop

    .line 135
    invoke-interface {v1}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/Location;->withSegmentName(Ljava/lang/String;)Lca/uhn/hl7v2/Location;

    move-result-object v6

    .line 136
    invoke-virtual {v6, v2}, Lca/uhn/hl7v2/Location;->withField(I)Lca/uhn/hl7v2/Location;

    move-result-object v6

    .line 137
    invoke-virtual {v6, v4}, Lca/uhn/hl7v2/Location;->withFieldRepetition(I)Lca/uhn/hl7v2/Location;

    .line 138
    aget-object v6, v3, v4

    invoke-direct {p0, v6, p2, v5}, Lca/uhn/hl7v2/validation/AbstractValidator;->testType(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;Lca/uhn/hl7v2/Location;)V

    .line 132
    .end local v5    # "location":Lca/uhn/hl7v2/Location;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private testSubComponent(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;Lca/uhn/hl7v2/Location;)V
    .locals 1
    .param p1, "type"    # Lca/uhn/hl7v2/model/Type;
    .param p3, "l"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Type;",
            "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<",
            "TR;>;",
            "Lca/uhn/hl7v2/Location;",
            ")V"
        }
    .end annotation

    .line 173
    .local p0, "this":Lca/uhn/hl7v2/validation/AbstractValidator;, "Lca/uhn/hl7v2/validation/AbstractValidator<TR;>;"
    .local p2, "handler":Lca/uhn/hl7v2/validation/ValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<TR;>;"
    instance-of v0, p1, Lca/uhn/hl7v2/model/Primitive;

    if-eqz v0, :cond_0

    .line 174
    move-object v0, p1

    check-cast v0, Lca/uhn/hl7v2/model/Primitive;

    invoke-direct {p0, v0, p2, p3}, Lca/uhn/hl7v2/validation/AbstractValidator;->testPrimitive(Lca/uhn/hl7v2/model/Primitive;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;Lca/uhn/hl7v2/Location;)V

    .line 175
    goto :goto_0

    :cond_0
    instance-of v0, p1, Lca/uhn/hl7v2/model/Varies;

    if-eqz v0, :cond_1

    .line 176
    move-object v0, p1

    check-cast v0, Lca/uhn/hl7v2/model/Varies;

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lca/uhn/hl7v2/validation/AbstractValidator;->testSubComponent(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;Lca/uhn/hl7v2/Location;)V

    .line 178
    :cond_1
    :goto_0
    return-void
.end method

.method private testType(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;Lca/uhn/hl7v2/Location;)V
    .locals 4
    .param p1, "type"    # Lca/uhn/hl7v2/model/Type;
    .param p3, "l"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Type;",
            "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<",
            "TR;>;",
            "Lca/uhn/hl7v2/Location;",
            ")V"
        }
    .end annotation

    .line 145
    .local p0, "this":Lca/uhn/hl7v2/validation/AbstractValidator;, "Lca/uhn/hl7v2/validation/AbstractValidator<TR;>;"
    .local p2, "handler":Lca/uhn/hl7v2/validation/ValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<TR;>;"
    instance-of v0, p1, Lca/uhn/hl7v2/model/Composite;

    if-eqz v0, :cond_1

    .line 146
    move-object v0, p1

    check-cast v0, Lca/uhn/hl7v2/model/Composite;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Composite;->getComponents()[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    .line 147
    .local v0, "components":[Lca/uhn/hl7v2/model/Type;
    const/4 v1, 0x0

    .line 147
    .local v1, "comp":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 151
    .end local v0    # "components":[Lca/uhn/hl7v2/model/Type;
    .end local v1    # "comp":I
    goto :goto_1

    .line 148
    .restart local v0    # "components":[Lca/uhn/hl7v2/model/Type;
    .restart local v1    # "comp":I
    :cond_0
    new-instance v2, Lca/uhn/hl7v2/Location;

    invoke-direct {v2, p3}, Lca/uhn/hl7v2/Location;-><init>(Lca/uhn/hl7v2/Location;)V

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/Location;->withComponent(I)Lca/uhn/hl7v2/Location;

    move-result-object v2

    .line 149
    .local v2, "location":Lca/uhn/hl7v2/Location;
    aget-object v3, v0, v1

    invoke-direct {p0, v3, p2, v2}, Lca/uhn/hl7v2/validation/AbstractValidator;->testComponent(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;Lca/uhn/hl7v2/Location;)V

    .line 147
    .end local v2    # "location":Lca/uhn/hl7v2/Location;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "components":[Lca/uhn/hl7v2/model/Type;
    .end local v1    # "comp":I
    :cond_1
    instance-of v0, p1, Lca/uhn/hl7v2/model/Varies;

    if-eqz v0, :cond_2

    .line 152
    move-object v0, p1

    check-cast v0, Lca/uhn/hl7v2/model/Varies;

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lca/uhn/hl7v2/validation/AbstractValidator;->testType(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;Lca/uhn/hl7v2/Location;)V

    .line 153
    goto :goto_1

    .line 154
    :cond_2
    move-object v0, p1

    check-cast v0, Lca/uhn/hl7v2/model/Primitive;

    invoke-direct {p0, v0, p2, p3}, Lca/uhn/hl7v2/validation/AbstractValidator;->testPrimitive(Lca/uhn/hl7v2/model/Primitive;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;Lca/uhn/hl7v2/Location;)V

    .line 156
    :goto_1
    return-void
.end method


# virtual methods
.method protected abstract getValidationContext()Lca/uhn/hl7v2/validation/ValidationContext;
.end method

.method protected abstract initializeHandler()Lca/uhn/hl7v2/validation/ValidationExceptionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<",
            "TR;>;"
        }
    .end annotation
.end method

.method public isValidatePrimitives()Z
    .locals 1

    .line 75
    .local p0, "this":Lca/uhn/hl7v2/validation/AbstractValidator;, "Lca/uhn/hl7v2/validation/AbstractValidator<TR;>;"
    iget-boolean v0, p0, Lca/uhn/hl7v2/validation/AbstractValidator;->validatePrimitives:Z

    return v0
.end method

.method public setValidatePrimitives(Z)V
    .locals 0
    .param p1, "validatePrimitives"    # Z

    .line 68
    .local p0, "this":Lca/uhn/hl7v2/validation/AbstractValidator;, "Lca/uhn/hl7v2/validation/AbstractValidator<TR;>;"
    iput-boolean p1, p0, Lca/uhn/hl7v2/validation/AbstractValidator;->validatePrimitives:Z

    .line 69
    return-void
.end method

.method public validate(Lca/uhn/hl7v2/model/Message;)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Message;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 85
    .local p0, "this":Lca/uhn/hl7v2/validation/AbstractValidator;, "Lca/uhn/hl7v2/validation/AbstractValidator<TR;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/AbstractValidator;->initializeHandler()Lca/uhn/hl7v2/validation/ValidationExceptionHandler;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lca/uhn/hl7v2/validation/AbstractValidator;->validate(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;)Ljava/lang/Object;
    .locals 2
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Message;",
            "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 93
    .local p0, "this":Lca/uhn/hl7v2/validation/AbstractValidator;, "Lca/uhn/hl7v2/validation/AbstractValidator<TR;>;"
    .local p2, "handler":Lca/uhn/hl7v2/validation/ValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<TR;>;"
    if-nez p1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Message may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    if-nez p2, :cond_1

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ValidationExceptionHandler may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    invoke-interface {p2, p1}, Lca/uhn/hl7v2/validation/ValidationExceptionHandler;->setValidationSubject(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/AbstractValidator;->isValidatePrimitives()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/validation/AbstractValidator;->testPrimitiveRules(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;)V

    .line 101
    :cond_2
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/validation/AbstractValidator;->testMessageRules(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;)V

    .line 102
    invoke-interface {p2}, Lca/uhn/hl7v2/validation/ValidationExceptionHandler;->result()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public validate(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "isXML"    # Z
    .param p3, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 205
    .local p0, "this":Lca/uhn/hl7v2/validation/AbstractValidator;, "Lca/uhn/hl7v2/validation/AbstractValidator<TR;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/AbstractValidator;->initializeHandler()Lca/uhn/hl7v2/validation/ValidationExceptionHandler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lca/uhn/hl7v2/validation/AbstractValidator;->validate(Ljava/lang/String;ZLjava/lang/String;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public validate(Ljava/lang/String;ZLjava/lang/String;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;)Ljava/lang/Object;
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "isXML"    # Z
    .param p3, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 215
    .local p0, "this":Lca/uhn/hl7v2/validation/AbstractValidator;, "Lca/uhn/hl7v2/validation/AbstractValidator<TR;>;"
    .local p4, "handler":Lca/uhn/hl7v2/validation/ValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<TR;>;"
    if-nez p1, :cond_0

    .line 216
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Message may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    if-nez p4, :cond_1

    .line 219
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ValidationExceptionHandler may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1
    invoke-interface {p4, p1}, Lca/uhn/hl7v2/validation/ValidationExceptionHandler;->setValidationSubject(Ljava/lang/Object;)V

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v0, "rules":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/validation/EncodingRule;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/AbstractValidator;->getValidationContext()Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 224
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/AbstractValidator;->getValidationContext()Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v1

    if-eqz p2, :cond_2

    const-string v2, "XML"

    goto :goto_0

    :cond_2
    const-string v2, "ER7"

    :goto_0
    invoke-interface {v1, p3, v2}, Lca/uhn/hl7v2/validation/ValidationContext;->getEncodingRules(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 226
    :cond_3
    sget-object v1, Lca/uhn/hl7v2/validation/AbstractValidator;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Validating message against {} encoding rules"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 233
    invoke-interface {p4}, Lca/uhn/hl7v2/validation/ValidationExceptionHandler;->result()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 227
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/validation/EncodingRule;

    .line 228
    .local v2, "rule":Lca/uhn/hl7v2/validation/EncodingRule;
    invoke-interface {v2, p1}, Lca/uhn/hl7v2/validation/EncodingRule;->apply(Ljava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v3

    .line 229
    .local v3, "ex":[Lca/uhn/hl7v2/validation/ValidationException;
    if-eqz v3, :cond_4

    array-length v4, v3

    if-lez v4, :cond_4

    .line 230
    invoke-interface {p4, v3}, Lca/uhn/hl7v2/validation/ValidationExceptionHandler;->onExceptions([Lca/uhn/hl7v2/validation/ValidationException;)V

    .line 230
    .end local v2    # "rule":Lca/uhn/hl7v2/validation/EncodingRule;
    .end local v3    # "ex":[Lca/uhn/hl7v2/validation/ValidationException;
    goto :goto_1
.end method
