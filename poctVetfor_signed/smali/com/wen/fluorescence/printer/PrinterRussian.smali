.class public Lcom/wen/fluorescence/printer/PrinterRussian;
.super Lcom/wen/fluorescence/printer/Printer;
.source "PrinterRussian.java"


# instance fields
.field private Feces:[B

.field private Nasopharyngeal:[B

.field private Plasma:[B

.field private Secretions:[B

.field private Serum:[B

.field private Serum_Plasma:[B

.field private Sputum:[B

.field private Urine:[B

.field private Whole_Blood:[B

.field private abNormal:[B

.field private age:[B

.field private armpitHair:[B

.field private codeSystem:[B

.field private decared:[B

.field private detectDotor:[B

.field private detectorPerson:[B

.field private detectorResult:[B

.field private detectorUnit:[B

.field private detectorVerdict:[B

.field private electricSystem:[B

.field private hair:[B

.field private identity_card:[B

.field private item:[B

.field private legHair:[B

.field private lightSystem:[B

.field private man:[B

.field private moveSystem:[B

.field private name:[B

.field private normal:[B

.field private other:[B

.field private printDate:[B

.field private qcReport:[B

.field private qcTime:[B

.field private ref:[B

.field private report:[B

.field private resultRU:[B

.field private review:[B

.field private sampleNumber:[B

.field private sampleType:[B

.field private serialNumber:[B

.field private sex:[B

.field private testTime:[B

.field private verdict:[B

.field private woman:[B


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 21
    invoke-direct {p0}, Lcom/wen/fluorescence/printer/Printer;-><init>()V

    .line 23
    const/4 v0, 0x5

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->report:[B

    .line 24
    const/4 v1, 0x7

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->name:[B

    .line 25
    const/4 v2, 0x4

    new-array v3, v2, [B

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->sex:[B

    .line 26
    new-array v3, v2, [B

    fill-array-data v3, :array_3

    iput-object v3, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->man:[B

    .line 27
    new-array v2, v2, [B

    fill-array-data v2, :array_4

    iput-object v2, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->woman:[B

    .line 28
    const/16 v2, 0x8

    new-array v3, v2, [B

    fill-array-data v3, :array_5

    iput-object v3, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->age:[B

    .line 29
    const/16 v3, 0xf

    new-array v4, v3, [B

    fill-array-data v4, :array_6

    iput-object v4, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->serialNumber:[B

    .line 31
    const/16 v4, 0xe

    new-array v5, v4, [B

    fill-array-data v5, :array_7

    iput-object v5, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->sampleNumber:[B

    .line 33
    const/16 v5, 0xc

    new-array v6, v5, [B

    fill-array-data v6, :array_8

    iput-object v6, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->sampleType:[B

    .line 35
    const/16 v6, 0x12

    new-array v7, v6, [B

    fill-array-data v7, :array_9

    iput-object v7, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->testTime:[B

    .line 37
    const/4 v7, 0x6

    new-array v8, v7, [B

    fill-array-data v8, :array_a

    iput-object v8, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->item:[B

    .line 38
    const/16 v8, 0x9

    new-array v9, v8, [B

    fill-array-data v9, :array_b

    iput-object v9, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->resultRU:[B

    .line 39
    new-array v9, v0, [B

    fill-array-data v9, :array_c

    iput-object v9, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->verdict:[B

    .line 40
    new-array v9, v3, [B

    fill-array-data v9, :array_d

    iput-object v9, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->ref:[B

    .line 42
    new-array v4, v4, [B

    fill-array-data v4, :array_e

    iput-object v4, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->detectDotor:[B

    .line 44
    const/16 v4, 0xa

    new-array v9, v4, [B

    fill-array-data v9, :array_f

    iput-object v9, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->review:[B

    .line 46
    const/16 v9, 0x3a

    new-array v9, v9, [B

    fill-array-data v9, :array_10

    iput-object v9, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->decared:[B

    .line 53
    const/4 v9, 0x2

    new-array v9, v9, [B

    fill-array-data v9, :array_11

    iput-object v9, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->qcReport:[B

    .line 54
    const/16 v9, 0x18

    new-array v9, v9, [B

    fill-array-data v9, :array_12

    iput-object v9, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->qcTime:[B

    .line 56
    const/16 v9, 0x10

    new-array v10, v9, [B

    fill-array-data v10, :array_13

    iput-object v10, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->moveSystem:[B

    .line 57
    const/16 v10, 0x19

    new-array v10, v10, [B

    fill-array-data v10, :array_14

    iput-object v10, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->codeSystem:[B

    .line 60
    new-array v10, v6, [B

    fill-array-data v10, :array_15

    iput-object v10, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->lightSystem:[B

    .line 62
    const/16 v10, 0x13

    new-array v11, v10, [B

    fill-array-data v11, :array_16

    iput-object v11, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->electricSystem:[B

    .line 64
    const/16 v11, 0xd

    new-array v12, v11, [B

    fill-array-data v12, :array_17

    iput-object v12, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->printDate:[B

    .line 66
    new-array v4, v4, [B

    fill-array-data v4, :array_18

    iput-object v4, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->normal:[B

    .line 67
    new-array v4, v5, [B

    fill-array-data v4, :array_19

    iput-object v4, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->abNormal:[B

    .line 70
    new-array v4, v9, [B

    fill-array-data v4, :array_1a

    iput-object v4, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->Serum_Plasma:[B

    .line 72
    new-array v4, v8, [B

    fill-array-data v4, :array_1b

    iput-object v4, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->Serum:[B

    .line 74
    new-array v4, v7, [B

    fill-array-data v4, :array_1c

    iput-object v4, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->Plasma:[B

    .line 75
    new-array v4, v11, [B

    fill-array-data v4, :array_1d

    iput-object v4, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->Whole_Blood:[B

    .line 76
    new-array v0, v0, [B

    fill-array-data v0, :array_1e

    iput-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->Urine:[B

    .line 77
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_1f

    iput-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->Feces:[B

    .line 78
    new-array v0, v2, [B

    fill-array-data v0, :array_20

    iput-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->Secretions:[B

    .line 79
    new-array v0, v10, [B

    fill-array-data v0, :array_21

    iput-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->Nasopharyngeal:[B

    .line 81
    new-array v0, v1, [B

    fill-array-data v0, :array_22

    iput-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->Sputum:[B

    .line 83
    const/16 v0, 0x11

    new-array v1, v0, [B

    fill-array-data v1, :array_23

    iput-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->detectorUnit:[B

    .line 85
    new-array v1, v6, [B

    fill-array-data v1, :array_24

    iput-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->detectorPerson:[B

    .line 88
    new-array v1, v10, [B

    fill-array-data v1, :array_25

    iput-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->detectorResult:[B

    .line 90
    new-array v1, v10, [B

    fill-array-data v1, :array_26

    iput-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->detectorVerdict:[B

    .line 93
    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_27

    iput-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->identity_card:[B

    .line 97
    new-array v1, v7, [B

    fill-array-data v1, :array_28

    iput-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->hair:[B

    .line 98
    new-array v1, v3, [B

    fill-array-data v1, :array_29

    iput-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->legHair:[B

    .line 100
    new-array v0, v0, [B

    fill-array-data v0, :array_2a

    iput-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->armpitHair:[B

    .line 102
    new-array v0, v7, [B

    fill-array-data v0, :array_2b

    iput-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->other:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x72t
        -0x1et
        -0x19t
        0x65t
        -0x1et
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x6ct
        0x2et
        -0x78t
        0x2et
        -0x72t
        0x2et
        0x3at
    .end array-data

    :array_2
    .array-data 1
        -0x71t
        -0x52t
        -0x55t
        0x3at
    .end array-data

    :array_3
    .array-data 1
        0x4dt
        0x79t
        -0x5at
        0x2et
    .end array-data

    :array_4
    .array-data 1
        -0x7at
        0x65t
        -0x53t
        0x2et
    .end array-data

    :array_5
    .array-data 1
        -0x7et
        -0x52t
        -0x59t
        -0x20t
        0x61t
        0x63t
        -0x1et
        0x3at
    .end array-data

    :array_6
    .array-data 1
        -0x6ft
        0x65t
        0x70t
        -0x58t
        -0x57t
        -0x53t
        -0x15t
        -0x57t
        0x20t
        -0x53t
        -0x52t
        -0x54t
        -0x5bt
        -0x20t
        0x3at
    .end array-data

    :array_7
    .array-data 1
        -0x73t
        -0x52t
        -0x54t
        -0x5bt
        -0x20t
        0x20t
        -0x52t
        -0x5ft
        -0x20t
        0x61t
        -0x13t
        -0x1at
        0x61t
        0x3at
    .end array-data

    nop

    :array_8
    .array-data 1
        -0x6et
        -0x58t
        -0x51t
        0x20t
        -0x52t
        -0x5ft
        -0x20t
        0x61t
        -0x59t
        -0x1at
        0x61t
        0x3at
    .end array-data

    :array_9
    .array-data 1
        -0x7et
        -0x20t
        -0x5bt
        -0x54t
        -0x11t
        -0x1et
        0x65t
        0x63t
        -0x1et
        -0x58t
        -0x20t
        -0x52t
        -0x5et
        0x61t
        -0x53t
        -0x58t
        -0x11t
        0x3at
    .end array-data

    nop

    :array_a
    .array-data 1
        -0x71t
        0x70t
        0x6ft
        -0x5bt
        -0x56t
        -0x1et
    .end array-data

    nop

    :array_b
    .array-data 1
        -0x70t
        0x65t
        -0x13t
        -0x1dt
        -0x55t
        -0x14t
        -0x1et
        0x61t
        -0x1et
    .end array-data

    nop

    :array_c
    .array-data 1
        -0x7et
        -0x15t
        -0x5et
        -0x52t
        -0x5ct
    .end array-data

    nop

    :array_d
    .array-data 1
        -0x7ct
        -0x58t
        0x61t
        -0x51t
        -0x52t
        -0x59t
        -0x52t
        -0x53t
        0x20t
        -0x1ft
        -0x1ft
        -0x15t
        -0x55t
        -0x56t
        -0x58t
    .end array-data

    :array_e
    .array-data 1
        -0x6ft
        -0x54t
        -0x52t
        -0x1et
        -0x20t
        -0x52t
        -0x5et
        -0x52t
        -0x57t
        0x20t
        -0x5et
        -0x20t
        0x61t
        -0x19t
    .end array-data

    nop

    :array_f
    .array-data 1
        -0x70t
        -0x5bt
        -0x1at
        -0x5bt
        -0x53t
        -0x59t
        -0x5bt
        -0x53t
        -0x1et
        -0x15t
    .end array-data

    nop

    :array_10
    .array-data 1
        -0x6dt
        -0x1et
        -0x5et
        -0x5bt
        -0x20t
        -0x5at
        -0x5ct
        -0x5bt
        -0x53t
        -0x58t
        -0x5bt
        0x3at
        -0x13t
        -0x1et
        -0x52t
        -0x1et
        0x20t
        -0x20t
        -0x5bt
        -0x59t
        -0x1dt
        -0x55t
        -0x14t
        -0x1et
        0x61t
        -0x1et
        0x20t
        -0x52t
        -0x1et
        -0x5et
        -0x5bt
        -0x19t
        0x61t
        -0x5bt
        -0x1et
        0x20t
        -0x1et
        -0x52t
        -0x55t
        -0x14t
        -0x56t
        -0x52t
        0x20t
        -0x59t
        0x61t
        -0x13t
        -0x1et
        -0x52t
        -0x1et
        0x20t
        -0x52t
        -0x5ft
        -0x20t
        0x61t
        -0x59t
        -0x5bt
        -0x1at
        0x21t
    .end array-data

    nop

    :array_11
    .array-data 1
        -0x76t
        -0x76t
    .end array-data

    nop

    :array_12
    .array-data 1
        -0x7et
        -0x20t
        -0x5bt
        -0x54t
        -0x11t
        0x20t
        -0x51t
        -0x20t
        -0x52t
        -0x5et
        -0x5bt
        -0x20t
        -0x56t
        -0x58t
        0x20t
        -0x56t
        -0x60t
        -0x19t
        -0x5bt
        -0x1ft
        -0x1et
        -0x5et
        -0x60t
        0x3at
    .end array-data

    :array_13
    .array-data 1
        -0x6ft
        -0x58t
        -0x1ft
        -0x1et
        -0x5bt
        -0x54t
        -0x60t
        0x20t
        -0x51t
        0x65t
        -0x20t
        0x65t
        -0x5ct
        0x61t
        -0x19t
        -0x58t
    .end array-data

    :array_14
    .array-data 1
        -0x6ft
        -0x58t
        -0x1ft
        -0x1et
        -0x5bt
        -0x54t
        0x61t
        0x20t
        -0x1ft
        -0x56t
        0x61t
        -0x53t
        -0x58t
        -0x20t
        -0x52t
        -0x5et
        0x61t
        -0x53t
        -0x58t
        -0x11t
        0x20t
        -0x56t
        -0x52t
        -0x5ct
        0x61t
    .end array-data

    nop

    :array_15
    .array-data 1
        -0x72t
        -0x51t
        -0x1et
        -0x58t
        -0x19t
        -0x5bt
        -0x1ft
        -0x56t
        0x61t
        -0x11t
        0x20t
        -0x1ft
        -0x58t
        -0x1ft
        -0x1et
        0x65t
        -0x54t
        0x61t
    .end array-data

    nop

    :array_16
    .array-data 1
        -0x63t
        -0x55t
        0x65t
        -0x56t
        -0x1et
        -0x20t
        -0x58t
        -0x19t
        0x65t
        -0x1ft
        -0x56t
        0x61t
        -0x11t
        0x20t
        -0x1ft
        -0x1bt
        -0x5bt
        -0x54t
        0x61t
    .end array-data

    :array_17
    .array-data 1
        -0x7et
        -0x20t
        -0x5bt
        -0x54t
        -0x11t
        0x20t
        -0x51t
        -0x5bt
        -0x19t
        0x61t
        -0x1et
        -0x58t
        0x3at
    .end array-data

    nop

    :array_18
    .array-data 1
        -0x73t
        -0x52t
        -0x20t
        -0x54t
        0x61t
        -0x55t
        -0x14t
        -0x53t
        -0x15t
        -0x57t
    .end array-data

    nop

    :array_19
    .array-data 1
        -0x73t
        -0x5bt
        -0x53t
        -0x52t
        -0x20t
        -0x54t
        0x61t
        -0x55t
        -0x14t
        -0x53t
        -0x15t
        -0x57t
    .end array-data

    :array_1a
    .array-data 1
        -0x6ft
        -0x15t
        -0x5et
        -0x52t
        -0x20t
        -0x52t
        -0x1et
        -0x56t
        0x61t
        0x2ft
        -0x51t
        -0x55t
        0x61t
        -0x59t
        -0x54t
        0x61t
    .end array-data

    :array_1b
    .array-data 1
        -0x6ft
        -0x15t
        -0x5et
        -0x52t
        -0x20t
        -0x52t
        -0x1et
        -0x56t
        0x61t
    .end array-data

    nop

    :array_1c
    .array-data 1
        -0x51t
        -0x55t
        0x61t
        -0x59t
        -0x54t
        0x61t
    .end array-data

    nop

    :array_1d
    .array-data 1
        -0x6at
        0x65t
        -0x55t
        -0x14t
        -0x53t
        0x61t
        -0x11t
        0x20t
        -0x56t
        -0x20t
        -0x52t
        -0x5et
        -0x14t
    .end array-data

    nop

    :array_1e
    .array-data 1
        -0x6dt
        -0x20t
        -0x58t
        -0x53t
        0x61t
    .end array-data

    nop

    :array_1f
    .array-data 1
        -0x79t
        -0x56t
        -0x1ft
        -0x56t
        -0x20t
        -0x5bt
        -0x54t
        -0x5bt
        -0x53t
        -0x1et
        -0x15t
    .end array-data

    :array_20
    .array-data 1
        -0x6ft
        0x65t
        -0x56t
        -0x20t
        0x65t
        -0x1at
        -0x58t
        -0x58t
    .end array-data

    :array_21
    .array-data 1
        -0x74t
        0x61t
        -0x59t
        -0x52t
        -0x56t
        0x20t
        -0x58t
        -0x59t
        0x20t
        -0x53t
        -0x52t
        -0x1ft
        -0x52t
        -0x5dt
        -0x55t
        -0x52t
        -0x1et
        -0x56t
        -0x58t
    .end array-data

    :array_22
    .array-data 1
        -0x74t
        -0x52t
        -0x56t
        -0x20t
        -0x52t
        -0x1et
        0x61t
    .end array-data

    :array_23
    .array-data 1
        -0x7ft
        -0x55t
        -0x52t
        -0x56t
        -0x1et
        -0x5bt
        -0x1ft
        -0x1et
        -0x58t
        -0x20t
        -0x52t
        -0x5et
        -0x60t
        -0x53t
        -0x58t
        -0x11t
        0x3at
    .end array-data

    nop

    :array_24
    .array-data 1
        -0x72t
        0x6et
        0x65t
        0x70t
        0x61t
        -0x1et
        0x6ft
        0x70t
        0x28t
        0x6et
        0x6ft
        -0x7ct
        0x6et
        -0x58t
        -0x1ft
        -0x16t
        0x29t
        0x3at
    .end array-data

    nop

    :array_25
    .array-data 1
        0x50t
        0x65t
        -0x59t
        0x79t
        -0x55t
        -0x14t
        -0x1et
        0x61t
        -0x1et
        0x20t
        -0x58t
        -0x1ft
        -0x51t
        -0x15t
        -0x1et
        0x61t
        -0x53t
        -0x58t
        -0x57t
    .end array-data

    :array_26
    .array-data 1
        0x42t
        0x65t
        0x70t
        -0x7ct
        -0x58t
        -0x56t
        -0x1et
        0x20t
        -0x52t
        -0x5ft
        -0x53t
        0x61t
        0x70t
        0x79t
        -0x5at
        0x65t
        -0x53t
        -0x58t
        -0x11t
    .end array-data

    :array_27
    .array-data 1
        -0x6dt
        -0x7ct
        0x6ft
        0x63t
        -0x1et
        -0x52t
        -0x5et
        -0x5bt
        0x70t
        -0x5bt
        -0x53t
        -0x58t
        -0x5bt
        0x20t
        -0x75t
        -0x58t
        -0x19t
        -0x53t
        0x6ft
        0x63t
        -0x1et
        -0x58t
    .end array-data

    nop

    :array_28
    .array-data 1
        -0x7et
        -0x52t
        -0x55t
        -0x52t
        -0x1ft
        -0x15t
    .end array-data

    nop

    :array_29
    .array-data 1
        -0x7et
        -0x52t
        -0x55t
        -0x52t
        -0x1ft
        -0x15t
        0x20t
        -0x53t
        -0x60t
        0x20t
        -0x53t
        -0x52t
        -0x5dt
        -0x60t
        -0x1bt
    .end array-data

    :array_2a
    .array-data 1
        -0x7et
        -0x52t
        -0x55t
        -0x52t
        -0x1ft
        -0x15t
        0x20t
        -0x51t
        -0x52t
        -0x7ct
        -0x54t
        -0x15t
        -0x18t
        -0x56t
        -0x60t
        -0x54t
        -0x58t
    .end array-data

    nop

    :array_2b
    .array-data 1
        -0x7ct
        -0x20t
        -0x1dt
        -0x5dt
        -0x52t
        -0x5bt
    .end array-data
.end method

.method private PrintHeadersRussian([B)V
    .locals 5
    .param p1, "array"    # [B

    .line 106
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterRussian;->ClearBufferData()V

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "index":I
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v2, v0, 0x1

    .line 109
    .local v2, "index":I
    const/16 v3, 0x1b

    aput-byte v3, v1, v0

    .line 110
    .end local v0    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 110
    .local v1, "index":I
    const/16 v4, 0x38

    aput-byte v4, v0, v2

    .line 111
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 111
    .restart local v2    # "index":I
    const/4 v4, 0x7

    aput-byte v4, v0, v1

    .line 113
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 113
    .restart local v1    # "index":I
    aput-byte v3, v0, v2

    .line 114
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 114
    .restart local v2    # "index":I
    const/16 v4, 0x7b

    aput-byte v4, v0, v1

    .line 115
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 115
    .restart local v1    # "index":I
    const/4 v4, 0x0

    aput-byte v4, v0, v2

    .line 118
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 118
    .restart local v2    # "index":I
    aput-byte v3, v0, v1

    .line 119
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 119
    .restart local v1    # "index":I
    const/16 v4, 0x57

    aput-byte v4, v0, v2

    .line 120
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 120
    .restart local v2    # "index":I
    const/4 v4, 0x2

    aput-byte v4, v0, v1

    .line 122
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 122
    .restart local v1    # "index":I
    aput-byte v3, v0, v2

    .line 123
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 123
    .restart local v2    # "index":I
    const/16 v3, 0x61

    aput-byte v3, v0, v1

    .line 124
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 124
    .restart local v1    # "index":I
    const/4 v3, 0x1

    aput-byte v3, v0, v2

    .line 125
    .end local v2    # "index":I
    add-int/2addr v1, v3

    .line 126
    add-int/lit8 v0, v1, 0x1

    .line 126
    .restart local v0    # "index":I
    invoke-virtual {p0, v1, p1}, Lcom/wen/fluorescence/printer/PrinterRussian;->OneTmpBuffers(I[B)[B

    .line 127
    .end local v1    # "index":I
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v2, v0, 0x1

    .line 127
    .restart local v2    # "index":I
    const/16 v3, 0xd

    array-length v4, p1

    add-int/2addr v0, v4

    .line 127
    .end local v0    # "index":I
    aput-byte v3, v1, v0

    .line 128
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterRussian;->print()V

    .line 129
    return-void
.end method

.method private PrintMessageRussian([BZ)V
    .locals 6
    .param p1, "printData"    # [B
    .param p2, "isEnter"    # Z

    .line 135
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterRussian;->ClearBufferData()V

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "index":I
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v2, v0, 0x1

    .line 138
    .local v2, "index":I
    const/16 v3, 0x1b

    aput-byte v3, v1, v0

    .line 139
    .end local v0    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 139
    .local v1, "index":I
    const/16 v4, 0x61

    aput-byte v4, v0, v2

    .line 140
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 140
    .restart local v2    # "index":I
    const/4 v4, 0x0

    aput-byte v4, v0, v1

    .line 142
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 142
    .restart local v1    # "index":I
    aput-byte v3, v0, v2

    .line 143
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 143
    .restart local v2    # "index":I
    const/16 v5, 0x7b

    aput-byte v5, v0, v1

    .line 144
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 144
    .restart local v1    # "index":I
    aput-byte v4, v0, v2

    .line 146
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 146
    .restart local v2    # "index":I
    aput-byte v3, v0, v1

    .line 147
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 147
    .restart local v1    # "index":I
    const/16 v4, 0x57

    aput-byte v4, v0, v2

    .line 148
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 148
    .restart local v2    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v0, v1

    .line 150
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 150
    .restart local v1    # "index":I
    aput-byte v3, v0, v2

    .line 151
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 151
    .restart local v2    # "index":I
    const/16 v3, 0x38

    aput-byte v3, v0, v1

    .line 152
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 152
    .restart local v1    # "index":I
    const/4 v3, 0x7

    aput-byte v3, v0, v2

    .line 153
    .end local v2    # "index":I
    add-int/2addr v1, v4

    .line 154
    add-int/lit8 v0, v1, 0x1

    .line 154
    .restart local v0    # "index":I
    invoke-virtual {p0, v1, p1}, Lcom/wen/fluorescence/printer/PrinterRussian;->OneTmpBuffers(I[B)[B

    .line 155
    .end local v1    # "index":I
    if-eqz p2, :cond_0

    .line 156
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->OneBufferData:[B

    add-int/lit8 v2, v0, 0x1

    .line 156
    .restart local v2    # "index":I
    array-length v3, p1

    add-int/2addr v0, v3

    .line 156
    .end local v0    # "index":I
    const/16 v3, 0xd

    aput-byte v3, v1, v0

    .line 158
    move v0, v2

    .line 158
    .end local v2    # "index":I
    .restart local v0    # "index":I
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterRussian;->print()V

    .line 159
    return-void
.end method


# virtual methods
.method public declared-synchronized printReport(Landroid/content/Context;Lcom/wen/fluorescence/database/TestResult;Ljava/util/List;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/wen/fluorescence/database/TestResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/wen/fluorescence/database/TestResult;",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/TestResult;",
            ">;)V"
        }
    .end annotation

    .line 438
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    monitor-enter p0

    .line 438
    const/4 v0, 0x0

    move v1, v0

    .line 438
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 439
    :try_start_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintNewLine()V

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    .end local v1    # "i":I
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "result":Lcom/wen/fluorescence/database/TestResult;
    .end local p3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 442
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "result":Lcom/wen/fluorescence/database/TestResult;
    .restart local p3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->report:[B

    invoke-direct {p0, v1}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintHeadersRussian([B)V

    .line 443
    const-string v1, "------------------"

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintBoldMessage(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintLeft()V

    .line 445
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->sampleNumber:[B

    invoke-direct {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 446
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSampleNumber()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 449
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->sampleType:[B

    invoke-direct {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 452
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v4, 0x7f020000

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "sampleTypes":[Ljava/lang/String;
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 455
    iget-object v2, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->Serum_Plasma:[B

    invoke-direct {p0, v2, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto/16 :goto_2

    .line 456
    :cond_1
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 458
    iget-object v2, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->Whole_Blood:[B

    invoke-direct {p0, v2, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto/16 :goto_2

    .line 459
    :cond_2
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v4

    aget-object v2, v1, v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 461
    iget-object v2, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->Urine:[B

    invoke-direct {p0, v2, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto/16 :goto_2

    .line 462
    :cond_3
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aget-object v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 464
    iget-object v2, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->Feces:[B

    invoke-direct {p0, v2, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto/16 :goto_2

    .line 465
    :cond_4
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x9

    aget-object v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 467
    iget-object v2, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->Secretions:[B

    invoke-direct {p0, v2, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto/16 :goto_2

    .line 468
    :cond_5
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x1d

    aget-object v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 470
    iget-object v2, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->Nasopharyngeal:[B

    invoke-direct {p0, v2, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto/16 :goto_2

    .line 471
    :cond_6
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x21

    aget-object v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 473
    iget-object v2, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->Sputum:[B

    invoke-direct {p0, v2, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto/16 :goto_2

    .line 474
    :cond_7
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x22

    aget-object v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 476
    iget-object v2, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->Serum:[B

    invoke-direct {p0, v2, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto :goto_2

    .line 477
    :cond_8
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    aget-object v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xa

    aget-object v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_1

    .line 479
    :cond_9
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x7

    aget-object v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 480
    iget-object v2, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->legHair:[B

    invoke-direct {p0, v2, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto :goto_2

    .line 481
    :cond_a
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8

    aget-object v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 482
    iget-object v2, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->armpitHair:[B

    invoke-direct {p0, v2, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto :goto_2

    .line 483
    :cond_b
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x20

    aget-object v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 484
    iget-object v2, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->other:[B

    invoke-direct {p0, v2, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto :goto_2

    .line 486
    :cond_c
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 478
    :cond_d
    :goto_1
    iget-object v2, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->hair:[B

    invoke-direct {p0, v2, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 489
    :goto_2
    iget-object v2, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->name:[B

    invoke-direct {p0, v2, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 490
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "-"

    goto :goto_3

    :cond_e
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {p0, v2, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 493
    iget-object v2, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->identity_card:[B

    invoke-direct {p0, v2, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getPatientNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 496
    iget-object v2, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->item:[B

    invoke-direct {p0, v2, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 498
    iget-object v2, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->detectorResult:[B

    invoke-direct {p0, v2, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 500
    iget-object v2, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->detectorVerdict:[B

    invoke-direct {p0, v2, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 503
    move v2, v3

    .line 503
    .local v2, "i":I
    :goto_4
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_10

    .line 504
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v5}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 505
    iget-object v4, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->item:[B

    invoke-direct {p0, v4, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 506
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v2, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v5}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 507
    iget-object v4, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->detectorResult:[B

    invoke-direct {p0, v4, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v2, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v5}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v5}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 508
    invoke-virtual {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 510
    iget-object v4, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->detectorVerdict:[B

    invoke-direct {p0, v4, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 511
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v2, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v5}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 511
    invoke-virtual {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 503
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 516
    .end local v2    # "i":I
    :cond_10
    const-string v2, "------"

    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintBoldMessage(Ljava/lang/String;)V

    .line 517
    invoke-static {p1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v2

    const-string v4, "OrganizationFragment"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 518
    .local v2, "organization":Ljava/lang/String;
    iget-object v4, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->detectorUnit:[B

    invoke-direct {p0, v4, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 519
    invoke-virtual {p0, v2, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 521
    iget-object v4, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->testTime:[B

    invoke-direct {p0, v4, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 522
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 525
    iget-object v4, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->detectorPerson:[B

    invoke-direct {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 526
    nop

    .line 526
    .local v0, "i":I
    :goto_5
    const/4 v3, 0x5

    if-ge v0, v3, :cond_11

    .line 527
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintNewLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 529
    .end local v0    # "i":I
    :cond_11
    monitor-exit p0

    return-void

    .line 437
    .end local v1    # "sampleTypes":[Ljava/lang/String;
    .end local v2    # "organization":Ljava/lang/String;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "result":Lcom/wen/fluorescence/database/TestResult;
    .end local p3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :goto_6
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized printe(Landroid/content/Context;Lcom/wen/fluorescence/database/DBManager;Lcom/wen/fluorescence/database/TestResult;Ljava/util/List;)V
    .locals 21
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "dbm"    # Lcom/wen/fluorescence/database/DBManager;
    .param p3, "result"    # Lcom/wen/fluorescence/database/TestResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/wen/fluorescence/database/DBManager;",
            "Lcom/wen/fluorescence/database/TestResult;",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/TestResult;",
            ">;)V"
        }
    .end annotation

    .line 171
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    monitor-enter p0

    .line 171
    const/4 v5, 0x0

    move v6, v5

    .line 171
    .local v6, "i":I
    :goto_0
    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 172
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintNewLine()V

    .line 171
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 170
    .end local v6    # "i":I
    .end local p1    # "mContext":Landroid/content/Context;
    .end local p2    # "dbm":Lcom/wen/fluorescence/database/DBManager;
    .end local p3    # "result":Lcom/wen/fluorescence/database/TestResult;
    .end local p4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_18

    .line 174
    .restart local p1    # "mContext":Landroid/content/Context;
    .restart local p2    # "dbm":Lcom/wen/fluorescence/database/DBManager;
    .restart local p3    # "result":Lcom/wen/fluorescence/database/TestResult;
    .restart local p4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v6

    const-string v8, "OrganizationFragment"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 175
    .local v6, "organization":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 176
    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintOrganization(Ljava/lang/String;)V

    .line 178
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintNewLine()V

    .line 180
    iget-object v8, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->report:[B

    invoke-direct {v1, v8}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintHeadersRussian([B)V

    .line 181
    iget-object v8, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->name:[B

    invoke-direct {v1, v8, v5}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 182
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "-"

    goto :goto_1

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getName()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 183
    iget-object v8, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->sex:[B

    invoke-direct {v1, v8, v5}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 184
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSex()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 185
    iget-object v8, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->man:[B

    invoke-direct {v1, v8, v9}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto :goto_2

    .line 186
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSex()I

    move-result v8

    if-ne v8, v7, :cond_4

    .line 187
    iget-object v8, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->woman:[B

    invoke-direct {v1, v8, v9}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto :goto_2

    .line 189
    :cond_4
    const-string v8, "-"

    invoke-virtual {v1, v8, v9}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 191
    :goto_2
    iget-object v8, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->age:[B

    invoke-direct {v1, v8, v5}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 192
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getAge()I

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "-"

    goto :goto_3

    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getAge()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v1, v8, v9}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 193
    iget-object v8, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->sampleNumber:[B

    invoke-direct {v1, v8, v5}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 194
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSampleNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v9}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 195
    iget-object v8, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->serialNumber:[B

    invoke-direct {v1, v8, v5}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 196
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v9}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 197
    iget-object v8, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->sampleType:[B

    invoke-direct {v1, v8, v5}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 198
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v10, 0x7f020000

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 199
    .local v8, "sampleTypes":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v8, v5

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 201
    iget-object v10, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->Serum_Plasma:[B

    invoke-direct {v1, v10, v9}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto/16 :goto_4

    .line 202
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v8, v9

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 204
    iget-object v10, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->Whole_Blood:[B

    invoke-direct {v1, v10, v9}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto/16 :goto_4

    .line 205
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v8, v7

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 207
    iget-object v10, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->Urine:[B

    invoke-direct {v1, v10, v9}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto/16 :goto_4

    .line 208
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 210
    iget-object v10, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->Feces:[B

    invoke-direct {v1, v10, v9}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto :goto_4

    .line 211
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x9

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 213
    iget-object v10, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->Secretions:[B

    invoke-direct {v1, v10, v9}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto :goto_4

    .line 214
    :cond_a
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x1d

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 216
    iget-object v10, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->Nasopharyngeal:[B

    invoke-direct {v1, v10, v9}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto :goto_4

    .line 217
    :cond_b
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x21

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 219
    iget-object v10, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->Sputum:[B

    invoke-direct {v1, v10, v9}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto :goto_4

    .line 220
    :cond_c
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x22

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 222
    iget-object v10, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->Serum:[B

    invoke-direct {v1, v10, v9}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto :goto_4

    .line 223
    :cond_d
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x24

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 225
    iget-object v10, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->Plasma:[B

    invoke-direct {v1, v10, v9}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto :goto_4

    .line 227
    :cond_e
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 239
    :goto_4
    iget-object v10, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->testTime:[B

    invoke-direct {v1, v10, v5}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 240
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10, v9}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 241
    const-string v10, "-------------------------------"

    invoke-virtual {v1, v10}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 245
    .local v10, "min":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 247
    .local v11, "max":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 248
    .local v12, "range":Ljava/lang/String;
    iget-object v13, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->item:[B

    invoke-direct {v1, v13, v5}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 249
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v13

    if-nez v13, :cond_11

    .line 251
    iget-object v13, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->resultRU:[B

    invoke-direct {v1, v13, v5}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 252
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, "printResult":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v13

    if-nez v13, :cond_f

    .line 254
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 256
    :cond_f
    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 260
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v9

    const-string v13, "  "

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 261
    .local v9, "strArray":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReResult()Ljava/lang/String;

    move-result-object v13

    const-string v7, "  "

    invoke-virtual {v13, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 262
    .local v7, "resultArray":[Ljava/lang/String;
    const/4 v13, 0x1

    .line 262
    .local v13, "i":I
    :goto_5
    array-length v15, v9

    if-ge v13, v15, :cond_10

    .line 263
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v16, v5

    const v5, 0x7f0c00d2

    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 263
    .end local v5    # "printResult":Ljava/lang/String;
    .local v16, "printResult":Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  : "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v9, v13

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 264
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0149

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "  : "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v7, v13

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 262
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, v16

    goto :goto_5

    .line 267
    .end local v7    # "resultArray":[Ljava/lang/String;
    .end local v9    # "strArray":[Ljava/lang/String;
    .end local v13    # "i":I
    .end local v16    # "printResult":Ljava/lang/String;
    :cond_10
    goto/16 :goto_9

    .line 268
    :cond_11
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v5

    const/4 v7, 0x2

    if-le v5, v7, :cond_15

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v5

    const/4 v7, 0x7

    if-lt v5, v7, :cond_12

    goto/16 :goto_6

    .line 272
    :cond_12
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getIsShowResult()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_14

    .line 273
    iget-object v5, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->resultRU:[B

    const/4 v7, 0x0

    invoke-direct {v1, v5, v7}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 275
    .restart local v5    # "printResult":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v7

    if-nez v7, :cond_13

    .line 276
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 278
    :cond_13
    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 280
    .end local v5    # "printResult":Ljava/lang/String;
    :cond_14
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getIsShowConclusion()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_16

    .line 281
    iget-object v5, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->verdict:[B

    const/4 v7, 0x0

    invoke-direct {v1, v5, v7}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 282
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    goto :goto_7

    .line 269
    :cond_15
    :goto_6
    iget-object v5, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->resultRU:[B

    const/4 v7, 0x0

    invoke-direct {v1, v5, v7}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lcom/wen/fluorescence/util/PublicFuction;->getShowResult(Lcom/wen/fluorescence/database/TestResult;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 287
    :cond_16
    :goto_7
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 288
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 289
    .local v5, "strArray":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReResult()Ljava/lang/String;

    move-result-object v7

    const-string v9, "  "

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 290
    .restart local v7    # "resultArray":[Ljava/lang/String;
    const/4 v9, 0x1

    .line 290
    .local v9, "i":I
    :goto_8
    array-length v13, v5

    if-ge v9, v13, :cond_17

    .line 291
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c00d2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "  : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v5, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 292
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0149

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "  : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v7, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 290
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 296
    .end local v5    # "strArray":[Ljava/lang/String;
    .end local v7    # "resultArray":[Ljava/lang/String;
    .end local v9    # "i":I
    :cond_17
    :goto_9
    const/4 v5, 0x1

    .line 296
    .local v5, "i":I
    :goto_a
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_21

    .line 297
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 298
    iget-object v7, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->item:[B

    const/4 v9, 0x0

    invoke-direct {v1, v7, v9}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 299
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v5, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 301
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v7

    if-nez v7, :cond_19

    .line 302
    iget-object v7, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->resultRU:[B

    const/4 v9, 0x0

    invoke-direct {v1, v7, v9}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 303
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v5, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 304
    .local v7, "printResult":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v9

    if-nez v9, :cond_18

    .line 305
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 307
    :cond_18
    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 308
    .end local v7    # "printResult":Ljava/lang/String;
    goto/16 :goto_c

    .line 309
    :cond_19
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v7

    const/4 v9, 0x2

    if-le v7, v9, :cond_1d

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v7

    const/4 v9, 0x7

    if-lt v7, v9, :cond_1a

    goto/16 :goto_b

    .line 313
    :cond_1a
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getIsShowResult()I

    move-result v7

    const/4 v13, 0x1

    if-ne v7, v13, :cond_1c

    .line 314
    iget-object v7, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->resultRU:[B

    const/4 v13, 0x0

    invoke-direct {v1, v7, v13}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 315
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v5, 0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 316
    .restart local v7    # "printResult":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v13

    if-nez v13, :cond_1b

    .line 317
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v7, v13

    .line 319
    :cond_1b
    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 321
    .end local v7    # "printResult":Ljava/lang/String;
    :cond_1c
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getIsShowConclusion()I

    move-result v7

    const/4 v13, 0x1

    if-ne v7, v13, :cond_1f

    .line 322
    iget-object v7, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->verdict:[B

    const/4 v13, 0x0

    invoke-direct {v1, v7, v13}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 323
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v5, 0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    goto :goto_d

    .line 310
    :cond_1d
    const/4 v9, 0x7

    :goto_b
    iget-object v7, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->resultRU:[B

    const/4 v13, 0x0

    invoke-direct {v1, v7, v13}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 311
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v5, 0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lcom/wen/fluorescence/util/PublicFuction;->getShowResult(Lcom/wen/fluorescence/database/TestResult;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    goto :goto_d

    .line 331
    :cond_1e
    :goto_c
    const/4 v9, 0x7

    :cond_1f
    :goto_d
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_20

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    .line 332
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v7

    const-string v13, "  "

    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 333
    .local v7, "strArray":[Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getReResult()Ljava/lang/String;

    move-result-object v13

    const-string v14, "  "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 334
    .local v13, "resultArray":[Ljava/lang/String;
    const/4 v14, 0x1

    .line 334
    .local v14, "j":I
    :goto_e
    array-length v15, v7

    if-ge v14, v15, :cond_20

    .line 335
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object/from16 v17, v6

    const v6, 0x7f0c00d2

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 335
    .end local v6    # "organization":Ljava/lang/String;
    .local v17, "organization":Ljava/lang/String;
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  : "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v7, v14

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 336
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v6, 0x7f0c0149

    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "  : "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v13, v14

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 334
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, v17

    const/4 v9, 0x7

    goto :goto_e

    .line 296
    .end local v7    # "strArray":[Ljava/lang/String;
    .end local v13    # "resultArray":[Ljava/lang/String;
    .end local v14    # "j":I
    .end local v17    # "organization":Ljava/lang/String;
    .restart local v6    # "organization":Ljava/lang/String;
    :cond_20
    move-object/from16 v17, v6

    const v6, 0x7f0c0149

    .line 296
    .end local v6    # "organization":Ljava/lang/String;
    .restart local v17    # "organization":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, v17

    goto/16 :goto_a

    .line 342
    .end local v5    # "i":I
    .end local v17    # "organization":Ljava/lang/String;
    .restart local v6    # "organization":Ljava/lang/String;
    :cond_21
    move-object/from16 v17, v6

    .line 342
    .end local v6    # "organization":Ljava/lang/String;
    .restart local v17    # "organization":Ljava/lang/String;
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v5

    const v6, 0x7f0c0142

    const/4 v7, 0x2

    if-le v5, v7, :cond_28

    .line 343
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v5

    if-nez v5, :cond_27

    .line 344
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_23

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    .line 347
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 348
    .local v5, "strArray":[Ljava/lang/String;
    const/4 v7, 0x1

    .line 348
    .local v7, "j":I
    :goto_f
    array-length v9, v5

    if-ge v7, v9, :cond_23

    .line 349
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v9

    aget-object v13, v5, v7

    invoke-static {v2, v10, v11, v9, v13}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 350
    .local v9, "unitRange":Ljava/lang/String;
    const-string v13, "F200"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u591a\u5355\u4f4d\u8303\u56f4\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    if-eqz v9, :cond_22

    const-string v13, ""

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_22

    .line 352
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v5, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 348
    .end local v9    # "unitRange":Ljava/lang/String;
    :cond_22
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 357
    .end local v5    # "strArray":[Ljava/lang/String;
    .end local v7    # "j":I
    :cond_23
    const/4 v5, 0x1

    .line 357
    .local v5, "j":I
    :goto_10
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_27

    .line 358
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 359
    .local v7, "min2":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 360
    .local v9, "max2":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_24

    .line 361
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 363
    .local v13, "range2":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v15}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v15}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 367
    .end local v13    # "range2":Ljava/lang/String;
    :cond_24
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_26

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_26

    .line 368
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v13

    const-string v14, "  "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 369
    .local v13, "strArray":[Ljava/lang/String;
    const/4 v14, 0x1

    .line 369
    .local v14, "k":I
    :goto_11
    array-length v15, v13

    if-ge v14, v15, :cond_26

    .line 370
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v15}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v15

    aget-object v6, v13, v14

    invoke-static {v2, v7, v9, v15, v6}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 371
    .local v6, "unitRange":Ljava/lang/String;
    const-string v15, "F200"

    move-object/from16 v18, v7

    new-instance v7, Ljava/lang/StringBuilder;

    .line 371
    .end local v7    # "min2":Ljava/lang/String;
    .local v18, "min2":Ljava/lang/String;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v8

    const-string v8, "\u591a\u5355\u4f4d\u8303\u56f4\uff1a"

    .line 371
    .end local v8    # "sampleTypes":[Ljava/lang/String;
    .local v19, "sampleTypes":[Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    if-eqz v6, :cond_25

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 373
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v13, v14

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v15, 0x7f0c0142

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 369
    .end local v6    # "unitRange":Ljava/lang/String;
    :cond_25
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    const v6, 0x7f0c0142

    goto :goto_11

    .line 357
    .end local v9    # "max2":Ljava/lang/String;
    .end local v13    # "strArray":[Ljava/lang/String;
    .end local v14    # "k":I
    .end local v18    # "min2":Ljava/lang/String;
    .end local v19    # "sampleTypes":[Ljava/lang/String;
    .restart local v8    # "sampleTypes":[Ljava/lang/String;
    :cond_26
    move-object/from16 v19, v8

    .line 357
    .end local v8    # "sampleTypes":[Ljava/lang/String;
    .restart local v19    # "sampleTypes":[Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v8, v19

    const v6, 0x7f0c0142

    goto/16 :goto_10

    .line 420
    .end local v5    # "j":I
    .end local v19    # "sampleTypes":[Ljava/lang/String;
    .restart local v8    # "sampleTypes":[Ljava/lang/String;
    :cond_27
    move-object/from16 v19, v8

    .line 420
    .end local v8    # "sampleTypes":[Ljava/lang/String;
    .restart local v19    # "sampleTypes":[Ljava/lang/String;
    goto/16 :goto_16

    .line 380
    .end local v19    # "sampleTypes":[Ljava/lang/String;
    .restart local v8    # "sampleTypes":[Ljava/lang/String;
    :cond_28
    move-object/from16 v19, v8

    .line 380
    .end local v8    # "sampleTypes":[Ljava/lang/String;
    .restart local v19    # "sampleTypes":[Ljava/lang/String;
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_2e

    .line 381
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0142

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2a

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 384
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 385
    .local v5, "strArray":[Ljava/lang/String;
    const/4 v6, 0x1

    .line 385
    .local v6, "j":I
    :goto_12
    array-length v7, v5

    if-ge v6, v7, :cond_2a

    .line 386
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v5, v6

    invoke-static {v2, v10, v11, v7, v8}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 387
    .local v7, "unitRange":Ljava/lang/String;
    const-string v8, "F200"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u591a\u5355\u4f4d\u8303\u56f4\uff1a"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    if-eqz v7, :cond_29

    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_29

    .line 389
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v5, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v13, 0x7f0c0142

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 385
    .end local v7    # "unitRange":Ljava/lang/String;
    :cond_29
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 394
    .end local v5    # "strArray":[Ljava/lang/String;
    .end local v6    # "j":I
    :cond_2a
    const/4 v5, 0x1

    .line 394
    .local v5, "j":I
    :goto_13
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2e

    .line 395
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 396
    .local v6, "min2":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 397
    .local v7, "max2":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 398
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 400
    .local v8, "range2":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0142

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 404
    .end local v8    # "range2":Ljava/lang/String;
    :cond_2b
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2d

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2d

    .line 405
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 406
    .local v8, "strArray":[Ljava/lang/String;
    const/4 v9, 0x1

    .line 406
    .local v9, "k":I
    :goto_14
    array-length v13, v8

    if-ge v9, v13, :cond_2d

    .line 407
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v13

    aget-object v14, v8, v9

    invoke-static {v2, v6, v7, v13, v14}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 408
    .local v13, "unitRange":Ljava/lang/String;
    const-string v14, "F200"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u591a\u5355\u4f4d\u8303\u56f4\uff1a"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    if-eqz v13, :cond_2c

    const-string v3, ""

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v8, v9

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0142

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 410
    .end local v13    # "unitRange":Ljava/lang/String;
    goto :goto_15

    .line 406
    :cond_2c
    const v15, 0x7f0c0142

    :goto_15
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, p2

    goto :goto_14

    .line 394
    .end local v6    # "min2":Ljava/lang/String;
    .end local v7    # "max2":Ljava/lang/String;
    .end local v8    # "strArray":[Ljava/lang/String;
    .end local v9    # "k":I
    :cond_2d
    const v15, 0x7f0c0142

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, p2

    goto/16 :goto_13

    .line 420
    .end local v5    # "j":I
    :cond_2e
    :goto_16
    const-string v3, "-------------------------------"

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 421
    iget-object v3, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->detectDotor:[B

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getInspectingDoctor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 424
    iget-object v3, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->review:[B

    const/4 v7, 0x0

    invoke-direct {v1, v3, v7}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReviewer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 427
    const-string v3, "-------------------------------"

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 429
    iget-object v3, v1, Lcom/wen/fluorescence/printer/PrinterRussian;->decared:[B

    const/4 v5, 0x1

    invoke-direct {v1, v3, v5}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 432
    nop

    .line 432
    .local v7, "i":I
    :goto_17
    move v3, v7

    .line 432
    .end local v7    # "i":I
    .local v3, "i":I
    const/4 v5, 0x6

    if-ge v3, v5, :cond_2f

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintNewLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    add-int/lit8 v7, v3, 0x1

    .line 432
    .end local v3    # "i":I
    .restart local v7    # "i":I
    goto :goto_17

    .line 435
    .end local v7    # "i":I
    :cond_2f
    monitor-exit p0

    return-void

    .line 170
    .end local v10    # "min":Ljava/lang/String;
    .end local v11    # "max":Ljava/lang/String;
    .end local v12    # "range":Ljava/lang/String;
    .end local v17    # "organization":Ljava/lang/String;
    .end local v19    # "sampleTypes":[Ljava/lang/String;
    .end local p1    # "mContext":Landroid/content/Context;
    .end local p2    # "dbm":Lcom/wen/fluorescence/database/DBManager;
    .end local p3    # "result":Lcom/wen/fluorescence/database/TestResult;
    .end local p4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :goto_18
    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized printerQC(Landroid/content/Context;ZZZZ)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "M0"    # Z
    .param p3, "M1"    # Z
    .param p4, "M2"    # Z
    .param p5, "M3"    # Z

    monitor-enter p0

    .line 541
    const/4 v0, 0x0

    move v1, v0

    .line 541
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 542
    :try_start_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintNewLine()V

    .line 541
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    .end local v1    # "i":I
    .end local p1    # "mContext":Landroid/content/Context;
    .end local p2    # "M0":Z
    .end local p3    # "M1":Z
    .end local p4    # "M2":Z
    .end local p5    # "M3":Z
    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 544
    .restart local p1    # "mContext":Landroid/content/Context;
    .restart local p2    # "M0":Z
    .restart local p3    # "M1":Z
    .restart local p4    # "M2":Z
    .restart local p5    # "M3":Z
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->qcReport:[B

    invoke-direct {p0, v1}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintHeadersRussian([B)V

    .line 545
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->qcTime:[B

    invoke-direct {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 546
    const-string v1, "yyyy-MM-dd"

    invoke-static {v1}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 547
    const-string v1, "-------------------------------"

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 548
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->item:[B

    invoke-direct {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 549
    const-string v1, " 1:"

    invoke-virtual {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 550
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->moveSystem:[B

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 551
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->resultRU:[B

    invoke-direct {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 552
    const-string v1, " 1:"

    invoke-virtual {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 553
    if-eqz p4, :cond_1

    .line 554
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->normal:[B

    invoke-direct {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto :goto_1

    .line 556
    :cond_1
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->abNormal:[B

    invoke-direct {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 559
    :goto_1
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->item:[B

    invoke-direct {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 560
    const-string v1, " 2:"

    invoke-virtual {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 561
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->codeSystem:[B

    invoke-direct {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 562
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->resultRU:[B

    invoke-direct {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 563
    const-string v1, " 2:"

    invoke-virtual {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 564
    if-eqz p2, :cond_2

    .line 565
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->normal:[B

    invoke-direct {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto :goto_2

    .line 567
    :cond_2
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->abNormal:[B

    invoke-direct {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 570
    :goto_2
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->item:[B

    invoke-direct {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 571
    const-string v1, " 3:"

    invoke-virtual {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 572
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->lightSystem:[B

    invoke-direct {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 573
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->resultRU:[B

    invoke-direct {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 574
    const-string v1, " 3:"

    invoke-virtual {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 575
    if-eqz p3, :cond_3

    .line 576
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->normal:[B

    invoke-direct {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto :goto_3

    .line 578
    :cond_3
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->abNormal:[B

    invoke-direct {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 581
    :goto_3
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->item:[B

    invoke-direct {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 582
    const-string v1, " 4:"

    invoke-virtual {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 583
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->electricSystem:[B

    invoke-direct {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 584
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->resultRU:[B

    invoke-direct {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 585
    const-string v1, " 4:"

    invoke-virtual {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;Z)V

    .line 586
    if-eqz p5, :cond_4

    .line 587
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->normal:[B

    invoke-direct {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    goto :goto_4

    .line 589
    :cond_4
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->abNormal:[B

    invoke-direct {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 591
    :goto_4
    const-string v1, "-------------------------------"

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 592
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterRussian;->printDate:[B

    invoke-direct {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessageRussian([BZ)V

    .line 593
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintMessage(Ljava/lang/String;)V

    .line 594
    nop

    .line 594
    .local v0, "i":I
    :goto_5
    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 595
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterRussian;->PrintNewLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 597
    .end local v0    # "i":I
    :cond_5
    monitor-exit p0

    return-void

    .line 540
    .end local p1    # "mContext":Landroid/content/Context;
    .end local p2    # "M0":Z
    .end local p3    # "M1":Z
    .end local p4    # "M2":Z
    .end local p5    # "M3":Z
    :goto_6
    monitor-exit p0

    throw p1
.end method
