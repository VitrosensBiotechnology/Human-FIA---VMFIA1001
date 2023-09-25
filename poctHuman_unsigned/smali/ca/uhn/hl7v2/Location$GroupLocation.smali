.class Lca/uhn/hl7v2/Location$GroupLocation;
.super Ljava/lang/Object;
.source "Location.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupLocation"
.end annotation


# instance fields
.field groupName:Ljava/lang/String;

.field repetition:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "repetition"    # I

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lca/uhn/hl7v2/Location$GroupLocation;->groupName:Ljava/lang/String;

    .line 250
    iput p2, p0, Lca/uhn/hl7v2/Location$GroupLocation;->repetition:I

    .line 251
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILca/uhn/hl7v2/Location$GroupLocation;)V
    .locals 0

    .line 248
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/Location$GroupLocation;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lca/uhn/hl7v2/Location$GroupLocation;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getRepetition()I
    .locals 1

    .line 258
    iget v0, p0, Lca/uhn/hl7v2/Location$GroupLocation;->repetition:I

    return v0
.end method
