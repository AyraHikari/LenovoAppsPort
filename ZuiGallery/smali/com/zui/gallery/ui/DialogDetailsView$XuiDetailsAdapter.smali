.class Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;
.super Lzui/widget/PairedItemListAdapter;
.source "DialogDetailsView.java"

# interfaces
.implements Lcom/zui/gallery/ui/DetailsAddressResolver$AddressResolvingListener;
.implements Lcom/zui/gallery/ui/DetailsHelper$ResolutionResolvingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/DialogDetailsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XuiDetailsAdapter"
.end annotation


# instance fields
.field private final mDecimalFormat:Ljava/text/DecimalFormat;

.field private final mDefaultLocale:Ljava/util/Locale;

.field private mHeightIndex:I

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationIndex:I

.field private mMessages:[Ljava/lang/String;

.field private mTitles:[Ljava/lang/String;

.field private mWidthIndex:I

.field final synthetic this$0:Lcom/zui/gallery/ui/DialogDetailsView;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/DialogDetailsView;Lcom/zui/gallery/data/MediaDetails;)V
    .locals 2

    .line 304
    iput-object p1, p0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->this$0:Lcom/zui/gallery/ui/DialogDetailsView;

    .line 305
    invoke-static {p1}, Lcom/zui/gallery/ui/DialogDetailsView;->access$200(Lcom/zui/gallery/ui/DialogDetailsView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lzui/widget/PairedItemListAdapter;-><init>(Landroid/content/Context;)V

    .line 299
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    .line 300
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, ".####"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mDecimalFormat:Ljava/text/DecimalFormat;

    const/4 v0, -0x1

    .line 301
    iput v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mWidthIndex:I

    .line 302
    iput v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mHeightIndex:I

    .line 306
    iput v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mLocationIndex:I

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaDetails;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mItems:Ljava/util/ArrayList;

    .line 308
    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaDetails;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mTitles:[Ljava/lang/String;

    .line 309
    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaDetails;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mMessages:[Ljava/lang/String;

    .line 310
    invoke-static {p1}, Lcom/zui/gallery/ui/DialogDetailsView;->access$200(Lcom/zui/gallery/ui/DialogDetailsView;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->setDetails(Landroid/content/Context;Lcom/zui/gallery/data/MediaDetails;)V

    return-void
.end method

.method private setDetails(Landroid/content/Context;Lcom/zui/gallery/data/MediaDetails;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 317
    invoke-virtual/range {p2 .. p2}, Lcom/zui/gallery/data/MediaDetails;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 375
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    move v8, v3

    move v7, v4

    .line 317
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 319
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x4

    const-string v12, ""

    if-eq v10, v11, :cond_14

    const/4 v11, 0x5

    const v13, 0x7f1002a5

    const-string v14, "0"

    if-eq v10, v11, :cond_12

    const/4 v11, 0x6

    if-eq v10, v11, :cond_f

    const/4 v11, 0x7

    if-eq v10, v11, :cond_d

    const/16 v11, 0xa

    if-eq v10, v11, :cond_c

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_a

    const/16 v11, 0x6b

    if-eq v10, v11, :cond_7

    const/16 v11, 0x6c

    if-eq v10, v11, :cond_5

    packed-switch v10, :pswitch_data_0

    .line 449
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_0

    goto/16 :goto_3

    .line 458
    :cond_0
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    .line 340
    :pswitch_0
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_15

    .line 342
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x7f1001a3

    .line 343
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_1
    const v10, 0x7f100059

    .line 344
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_1
    move-object v12, v10

    goto/16 :goto_3

    .line 432
    :pswitch_1
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_2

    goto/16 :goto_3

    .line 436
    :cond_2
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 437
    invoke-direct {v0, v10, v11}, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->toLocalNumber(D)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    .line 352
    :pswitch_2
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_3

    goto/16 :goto_3

    .line 357
    :cond_3
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zui/gallery/data/MediaDetails$FlashState;

    .line 360
    invoke-virtual {v10}, Lcom/zui/gallery/data/MediaDetails$FlashState;->isFlashFired()Z

    move-result v10

    if-eqz v10, :cond_4

    const v10, 0x7f10014b

    .line 361
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    :cond_4
    const v10, 0x7f10014a

    .line 363
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    .line 425
    :cond_5
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_6

    goto/16 :goto_3

    .line 429
    :cond_6
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v0, v10}, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->toLocalNumber(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    .line 368
    :cond_7
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_8

    goto/16 :goto_3

    .line 372
    :cond_8
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 373
    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v10, v12

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x2

    if-gez v14, :cond_9

    .line 375
    iget-object v14, v0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    div-double/2addr v12, v10

    add-double/2addr v12, v15

    double-to-int v10, v12

    .line 376
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v4, v11

    const-string v10, "%d/%d"

    .line 375
    invoke-static {v14, v10, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    :cond_9
    double-to-int v14, v10

    int-to-double v12, v14

    sub-double/2addr v10, v12

    .line 380
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\'\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-wide v13, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v13, v10, v13

    if-lez v13, :cond_15

    .line 382
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    div-double v10, v17, v10

    add-double/2addr v10, v15

    double-to-int v10, v10

    .line 383
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v4, v11

    const-string v10, " %d/%d"

    .line 382
    invoke-static {v12, v10, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    goto/16 :goto_3

    .line 417
    :cond_a
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_b

    goto/16 :goto_3

    .line 421
    :cond_b
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 422
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    goto/16 :goto_3

    .line 331
    :cond_c
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 333
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 332
    invoke-static {v1, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    .line 440
    :cond_d
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_e

    goto/16 :goto_3

    .line 444
    :cond_e
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->toLocalInteger(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    .line 398
    :cond_f
    iget-object v4, v0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mHeightIndex:I

    .line 399
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_10

    goto :goto_3

    .line 403
    :cond_10
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 404
    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 407
    :cond_11
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->toLocalInteger(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 389
    :cond_12
    iget-object v4, v0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mWidthIndex:I

    .line 390
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 391
    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_2
    move v7, v3

    goto :goto_3

    .line 394
    :cond_13
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->toLocalInteger(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 321
    :cond_14
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 322
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    .line 323
    iget-object v10, v0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mLocationIndex:I

    .line 324
    iget-object v10, v0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->this$0:Lcom/zui/gallery/ui/DialogDetailsView;

    invoke-static {v10}, Lcom/zui/gallery/ui/DialogDetailsView;->access$200(Lcom/zui/gallery/ui/DialogDetailsView;)Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10, v4, v0}, Lcom/zui/gallery/ui/DetailsHelper;->resolveAddress(Landroid/app/Activity;[DLcom/zui/gallery/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;

    move-result-object v12

    .line 464
    :cond_15
    :goto_3
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 465
    invoke-static {v1, v4}, Lcom/zui/gallery/ui/DetailsHelper;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 466
    iget-object v9, v0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v9, v0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mTitles:[Ljava/lang/String;

    aput-object v4, v9, v8

    .line 468
    iget-object v4, v0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mMessages:[Ljava/lang/String;

    aput-object v12, v4, v8

    const/4 v4, 0x1

    add-int/2addr v8, v4

    goto/16 :goto_0

    :cond_16
    if-nez v7, :cond_17

    .line 472
    invoke-static {v6, v0}, Lcom/zui/gallery/ui/DetailsHelper;->resolveResolution(Ljava/lang/String;Lcom/zui/gallery/ui/DetailsHelper$ResolutionResolvingListener;)V

    :cond_17
    return-void

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private toLocalInteger(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 512
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 513
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->toLocalNumber(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 515
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 517
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->toLocalNumber(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method private toLocalNumber(D)Ljava/lang/String;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toLocalNumber(I)Ljava/lang/String;
    .locals 3

    .line 527
    iget-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%d"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemMessage(I)Ljava/lang/CharSequence;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mMessages:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mTitles:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public onAddressAvailable(Ljava/lang/String;)V
    .locals 3

    const-string v0, ":"

    .line 494
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 496
    iget-object v1, p0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mMessages:[Ljava/lang/String;

    iget v2, p0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mLocationIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 497
    invoke-virtual {p0}, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onResolutionAvailable(II)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mMessages:[Ljava/lang/String;

    iget v1, p0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mWidthIndex:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 507
    iget-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mMessages:[Ljava/lang/String;

    iget v1, p0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->mHeightIndex:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 508
    invoke-virtual {p0}, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method
