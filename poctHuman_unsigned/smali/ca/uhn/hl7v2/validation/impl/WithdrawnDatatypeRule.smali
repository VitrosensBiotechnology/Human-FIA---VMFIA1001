.class public Lca/uhn/hl7v2/validation/impl/WithdrawnDatatypeRule;
.super Lca/uhn/hl7v2/validation/impl/SizeRule;
.source "WithdrawnDatatypeRule.java"


# static fields
.field public static final PROP_DISABLE_RULE:Ljava/lang/String; = "ca.uhn.hl7v2.validation.impl.WithdrawnDatatypeRule"

.field private static final RULE_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-string v0, "ca.uhn.hl7v2.validation.impl.WithdrawnDatatypeRule"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const v0, 0x7fffffff

    sput v0, Lca/uhn/hl7v2/validation/impl/WithdrawnDatatypeRule;->RULE_SIZE:I

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    sput v0, Lca/uhn/hl7v2/validation/impl/WithdrawnDatatypeRule;->RULE_SIZE:I

    .line 38
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    sget v0, Lca/uhn/hl7v2/validation/impl/WithdrawnDatatypeRule;->RULE_SIZE:I

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/validation/impl/SizeRule;-><init>(I)V

    .line 45
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "The field/component is withdrawn from the current HL7 version and should not be used. See the JavaDoc for WithdrawnDatatypeRule for information on disabling this rule."

    return-object v0
.end method
