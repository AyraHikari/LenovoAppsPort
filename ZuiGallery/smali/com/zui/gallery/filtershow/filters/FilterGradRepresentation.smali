.class public Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;
.super Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
.source "FilterGradRepresentation.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/imageshow/Line;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;
    }
.end annotation


# static fields
.field private static final ADD_MIN_DIST:D = 0.05

.field private static LINE_NAME:Ljava/lang/String; = "Point"

.field private static final LOGTAG:Ljava/lang/String; = "FilterGradRepresentation"

.field public static final MAX_POINTS:I = 0x10

.field public static final PARAM_BRIGHTNESS:I = 0x0

.field public static final PARAM_CONTRAST:I = 0x2

.field public static final PARAM_SATURATION:I = 0x1

.field private static final SERIALIZATION_NAME:Ljava/lang/String; = "grad"


# instance fields
.field mBands:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "Grad"

    .line 42
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    const-string v0, "grad"

    .line 43
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->creatExample()V

    const v0, 0x7f07015f

    .line 45
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->setOverlayId(I)V

    .line 46
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->setFilterClass(Ljava/lang/Class;)V

    const v0, 0x7f100165

    .line 47
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->setTextId(I)V

    const v0, 0x7f080176

    .line 48
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->setEditorId(I)V

    return-void
.end method

.method private creatExample()V
    .locals 4

    .line 111
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;-><init>()V

    const/4 v1, 0x0

    .line 112
    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$002(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;Z)Z

    const/4 v2, -0x1

    .line 113
    invoke-static {v0, v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$102(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I

    const/16 v3, 0x64

    .line 114
    invoke-static {v0, v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$202(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I

    .line 115
    invoke-static {v0, v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$302(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I

    .line 116
    invoke-static {v0, v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$402(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I

    const/16 v2, -0x32

    .line 117
    invoke-static {v0, v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$502(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I

    .line 118
    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$602(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I

    .line 119
    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$702(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I

    .line 120
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v2, v1, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 121
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    .line 122
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->trimVector()V

    return-void
.end method


# virtual methods
.method public addBand(Landroid/graphics/Rect;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 189
    iget-object v2, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    new-instance v3, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;-><init>(II)V

    iput-object v3, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 190
    iget-object v2, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {v2, v4}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$002(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;Z)Z

    .line 191
    iget-object v2, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$100(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v2

    iget-object v3, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$300(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 192
    iget-object v3, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$200(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v3

    iget-object v5, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {v5}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$400(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v5

    add-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-double v5, v5

    const-wide v7, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v5, v7

    .line 196
    iget-object v7, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    iget-object v8, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, 0x1

    move v10, v4

    move v9, v8

    :goto_0
    if-eqz v9, :cond_9

    add-int/2addr v10, v8

    const/16 v9, 0xe

    if-le v10, v9, :cond_0

    goto/16 :goto_4

    .line 205
    :cond_0
    iget-object v9, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    .line 206
    invoke-static {v11}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$000(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 211
    :cond_2
    iget-object v9, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v11, v4

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    .line 212
    invoke-static {v12}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$000(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)Z

    move-result v13

    if-eqz v13, :cond_3

    goto/16 :goto_3

    .line 215
    :cond_3
    iget-object v13, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v13, v12}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v13

    if-eq v7, v13, :cond_6

    .line 218
    invoke-static {v12}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$100(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v13

    sub-int/2addr v13, v2

    int-to-double v13, v13

    invoke-static {v12}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$200(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v12

    sub-int/2addr v12, v3

    move-object v15, v9

    int-to-double v8, v12

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    cmpg-double v8, v8, v5

    if-gez v8, :cond_7

    .line 221
    iget-object v2, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {v2, v5, v6}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$118(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;D)I

    .line 222
    iget-object v2, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {v2, v5, v6}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$218(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;D)I

    .line 223
    iget-object v2, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {v2, v5, v6}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$318(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;D)I

    .line 224
    iget-object v2, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {v2, v5, v6}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$418(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;D)I

    .line 225
    iget-object v2, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$100(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v2

    iget-object v3, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$300(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 226
    iget-object v3, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$200(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v3

    iget-object v8, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {v8}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$400(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v8

    add-int/2addr v3, v8

    div-int/lit8 v3, v3, 0x2

    .line 228
    iget-object v8, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {v8}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$200(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v8

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v9, :cond_4

    .line 229
    iget-object v8, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    iget v9, v1, Landroid/graphics/Rect;->top:I

    int-to-double v11, v9

    add-double/2addr v11, v5

    double-to-int v9, v11

    invoke-static {v8, v9}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$202(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I

    .line 231
    :cond_4
    iget-object v8, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {v8}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$100(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v8

    iget v9, v1, Landroid/graphics/Rect;->right:I

    if-le v8, v9, :cond_5

    .line 232
    iget-object v8, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    iget v9, v1, Landroid/graphics/Rect;->left:I

    int-to-double v11, v9

    add-double/2addr v11, v5

    double-to-int v9, v11

    invoke-static {v8, v9}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$102(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I

    :cond_5
    const/4 v11, 0x1

    goto :goto_2

    :cond_6
    move-object v15, v9

    :cond_7
    :goto_2
    move-object v9, v15

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_8
    :goto_3
    move v9, v11

    const/4 v8, 0x1

    goto/16 :goto_0

    .line 238
    :cond_9
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->trimVector()V

    return v4
.end method

.method public copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 140
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;-><init>()V

    .line 141
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-object v0
.end method

.method protected copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 147
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 148
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method

.method public deSerializeRepresentation(Landroid/util/JsonReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 461
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 463
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 464
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 465
    sget-object v3, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->LINE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 466
    sget-object v3, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->LINE_NAME:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 467
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 468
    new-instance v1, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;-><init>()V

    .line 469
    invoke-static {v1, v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$002(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;Z)Z

    .line 470
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 471
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$102(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I

    .line 472
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 473
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$202(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I

    .line 474
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 475
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$302(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I

    .line 476
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 477
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$402(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I

    .line 478
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 479
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$502(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I

    .line 480
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 481
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$602(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I

    .line 482
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 483
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$702(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I

    .line 484
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 485
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 486
    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 489
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 492
    :cond_1
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    .line 493
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->trimVector()V

    .line 494
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    .line 495
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method public deleteCurrentBand()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    .line 244
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->trimVector()V

    .line 246
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getNumberOfBands()I

    move-result v0

    if-nez v0, :cond_0

    .line 247
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->addBand(Landroid/graphics/Rect;)I

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    return-void
.end method

.method public equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 6

    .line 153
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 154
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    .line 155
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getNumberOfBands()I

    move-result v0

    .line 156
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getNumberOfBands()I

    move-result v2

    if-eq v2, v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 159
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 160
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    .line 161
    iget-object v3, p1, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    .line 162
    invoke-static {v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$000(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)Z

    move-result v4

    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$000(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)Z

    move-result v5

    if-ne v4, v5, :cond_2

    .line 163
    invoke-static {v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$500(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v4

    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$500(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 164
    invoke-static {v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$600(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v4

    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$600(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 165
    invoke-static {v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$700(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v4

    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$700(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 166
    invoke-static {v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$100(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v4

    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$100(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 167
    invoke-static {v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$300(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v4

    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$300(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 168
    invoke-static {v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$200(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v4

    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$200(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 169
    invoke-static {v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$400(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v2

    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$400(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method public getBrightness()[I
    .locals 5

    .line 322
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 324
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    add-int/lit8 v4, v2, 0x1

    .line 325
    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$500(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v3

    aput v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getContrast()[I
    .locals 5

    .line 331
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 333
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    add-int/lit8 v4, v2, 0x1

    .line 334
    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$600(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v3

    aput v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getMask()[Z
    .locals 5

    .line 277
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Z

    .line 279
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    add-int/lit8 v4, v2, 0x1

    .line 280
    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$000(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    aput-boolean v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getNumberOfBands()I
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    .line 181
    invoke-static {v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$000(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getParameter(I)I
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 355
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$600(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result p1

    return p1

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$700(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result p1

    return p1

    .line 351
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$500(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result p1

    return p1
.end method

.method public getParameterMax(I)I
    .locals 3

    const/16 v0, 0x64

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    return v0

    .line 369
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v0
.end method

.method public getParameterMin(I)I
    .locals 3

    const/16 v0, -0x64

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    return v0

    .line 381
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v0
.end method

.method public getPoint1X()F
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$100(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getPoint1Y()F
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$200(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getPoint2X()F
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$300(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getPoint2Y()F
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$400(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getSaturation()[I
    .locals 5

    .line 340
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 342
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    add-int/lit8 v4, v2, 0x1

    .line 343
    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$700(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v3

    aput v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSelectedPoint()I
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getXPos1()[I
    .locals 5

    .line 286
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 288
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    add-int/lit8 v4, v2, 0x1

    .line 289
    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$100(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v3

    aput v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getXPos2()[I
    .locals 5

    .line 304
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 306
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    add-int/lit8 v4, v2, 0x1

    .line 307
    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$300(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v3

    aput v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getYPos1()[I
    .locals 5

    .line 295
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 297
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    add-int/lit8 v4, v2, 0x1

    .line 298
    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$200(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v3

    aput v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getYPos2()[I
    .locals 5

    .line 313
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 315
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    add-int/lit8 v4, v2, 0x1

    .line 316
    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$400(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v3

    aput v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public nextPoint()V
    .locals 6

    .line 253
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 258
    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    rem-int/2addr v0, v3

    .line 259
    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    add-int/lit8 v4, v1, 0x1

    .line 260
    iget-object v5, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    goto :goto_1

    .line 264
    :cond_0
    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$000(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)Z

    move-result v1

    if-eq v1, v2, :cond_1

    .line 265
    :goto_1
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    return-void

    :cond_1
    move v1, v4

    goto :goto_0
.end method

.method public serializeRepresentation(Landroid/util/JsonWriter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 435
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 439
    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    .line 440
    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$000(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 443
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->LINE_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    .line 445
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 446
    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$100(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 447
    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$200(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 448
    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$300(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 449
    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$400(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 450
    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$500(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 451
    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$600(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 452
    invoke-static {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$700(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p1, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 453
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public setParameter(II)V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$002(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;Z)Z

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 394
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {p1, p2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$602(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I

    goto :goto_0

    .line 397
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 391
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {p1, p2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$702(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I

    goto :goto_0

    .line 388
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-static {p1, p2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$502(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I

    :goto_0
    return-void
.end method

.method public setPoint1(FF)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$102(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I

    .line 404
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$202(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I

    return-void
.end method

.method public setPoint2(FF)V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$302(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I

    .line 410
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$402(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I

    return-void
.end method

.method public setSelectedPoint(I)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    .line 103
    invoke-static {v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->access$000(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v2, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimVector()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v1, v0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    new-instance v3, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-direct {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_1

    .line 57
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 4

    .line 127
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    .line 128
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 129
    iget-object v1, p1, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 130
    :goto_0
    iget-object p1, p1, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    .line 131
    new-instance v3, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    invoke-direct {v3, v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;-><init>(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 133
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    .line 134
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mBands:Ljava/util/Vector;

    .line 135
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->mCurrentBand:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;

    return-void
.end method
