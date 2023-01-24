.class Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;
.super Landroid/widget/BaseAdapter;
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
    name = "DetailsAdapter"
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

.field private mWidthIndex:I

.field final synthetic this$0:Lcom/zui/gallery/ui/DialogDetailsView;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/DialogDetailsView;Lcom/zui/gallery/data/MediaDetails;)V
    .locals 3

    .line 544
    iput-object p1, p0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->this$0:Lcom/zui/gallery/ui/DialogDetailsView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 539
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    .line 540
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, ".####"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mDecimalFormat:Ljava/text/DecimalFormat;

    const/4 v0, -0x1

    .line 541
    iput v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mWidthIndex:I

    .line 542
    iput v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mHeightIndex:I

    .line 545
    invoke-static {p1}, Lcom/zui/gallery/ui/DialogDetailsView;->access$200(Lcom/zui/gallery/ui/DialogDetailsView;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .line 546
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaDetails;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    .line 547
    iput v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mLocationIndex:I

    .line 548
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->setDetails(Landroid/content/Context;Lcom/zui/gallery/data/MediaDetails;)V

    return-void
.end method

.method private setDetails(Landroid/content/Context;Lcom/zui/gallery/data/MediaDetails;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 554
    invoke-virtual/range {p2 .. p2}, Lcom/zui/gallery/data/MediaDetails;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    .line 610
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v4

    .line 554
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 556
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x0

    const-string v13, ""

    if-eq v9, v10, :cond_15

    const/4 v10, 0x5

    const v14, 0x7f1002a5

    const-string v15, "0"

    if-eq v9, v10, :cond_13

    const/4 v10, 0x6

    if-eq v9, v10, :cond_10

    const/4 v10, 0x7

    if-eq v9, v10, :cond_e

    const/16 v10, 0xa

    if-eq v9, v10, :cond_d

    const/16 v10, 0xc8

    if-eq v9, v10, :cond_b

    const/16 v10, 0x6b

    if-eq v9, v10, :cond_7

    const/16 v10, 0x6c

    if-eq v9, v10, :cond_5

    packed-switch v9, :pswitch_data_0

    .line 684
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_0

    goto/16 :goto_3

    .line 693
    :cond_0
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 577
    :pswitch_0
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_16

    .line 578
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const v9, 0x7f1001a3

    .line 579
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_1
    const v9, 0x7f100059

    .line 580
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_1
    move-object v13, v9

    goto/16 :goto_3

    .line 667
    :pswitch_1
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2

    goto/16 :goto_3

    .line 671
    :cond_2
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 672
    invoke-direct {v0, v9, v10}, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->toLocalNumber(D)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 587
    :pswitch_2
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    goto/16 :goto_3

    .line 592
    :cond_3
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zui/gallery/data/MediaDetails$FlashState;

    .line 595
    invoke-virtual {v9}, Lcom/zui/gallery/data/MediaDetails$FlashState;->isFlashFired()Z

    move-result v9

    if-eqz v9, :cond_4

    const v9, 0x7f10014b

    .line 596
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    :cond_4
    const v9, 0x7f10014a

    .line 598
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 660
    :cond_5
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_6

    goto/16 :goto_3

    .line 664
    :cond_6
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v0, v9}, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->toLocalNumber(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 603
    :cond_7
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_8

    goto/16 :goto_3

    .line 607
    :cond_8
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 608
    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpg-double v15, v9, v13

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    if-gez v15, :cond_9

    .line 610
    iget-object v15, v0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v5, v4, v12

    div-double/2addr v13, v9

    add-double v13, v13, v16

    double-to-int v9, v13

    .line 611
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v4, v10

    const-string v9, "%d/%d"

    .line 610
    invoke-static {v15, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    :cond_9
    double-to-int v4, v9

    int-to-double v13, v4

    sub-double/2addr v9, v13

    .line 615
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'\'"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide v13, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v13, v9, v13

    if-lez v13, :cond_a

    .line 617
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    new-array v14, v11, [Ljava/lang/Object;

    aput-object v5, v14, v12

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    div-double v9, v18, v9

    add-double v9, v9, v16

    double-to-int v9, v9

    .line 618
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v14, v10

    const-string v9, " %d/%d"

    .line 617
    invoke-static {v4, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_a
    move-object v13, v4

    goto/16 :goto_3

    .line 652
    :cond_b
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_c

    goto/16 :goto_3

    .line 656
    :cond_c
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 657
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    goto/16 :goto_3

    .line 568
    :cond_d
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 570
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 569
    invoke-static {v1, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 675
    :cond_e
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_f

    goto/16 :goto_3

    .line 679
    :cond_f
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->toLocalInteger(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 633
    :cond_10
    iget-object v4, v0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mHeightIndex:I

    .line 634
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_11

    goto :goto_3

    .line 638
    :cond_11
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 639
    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 642
    :cond_12
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->toLocalInteger(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    .line 624
    :cond_13
    iget-object v4, v0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mWidthIndex:I

    .line 625
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 626
    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_2
    move v7, v12

    goto :goto_3

    .line 629
    :cond_14
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->toLocalInteger(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    .line 558
    :cond_15
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 559
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    .line 560
    iget-object v9, v0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iput v9, v0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mLocationIndex:I

    .line 561
    iget-object v9, v0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->this$0:Lcom/zui/gallery/ui/DialogDetailsView;

    invoke-static {v9}, Lcom/zui/gallery/ui/DialogDetailsView;->access$200(Lcom/zui/gallery/ui/DialogDetailsView;)Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v4, v0}, Lcom/zui/gallery/ui/DetailsHelper;->resolveAddress(Landroid/app/Activity;[DLcom/zui/gallery/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;

    move-result-object v13

    .line 699
    :cond_16
    :goto_3
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 700
    invoke-virtual {v2, v4}, Lcom/zui/gallery/data/MediaDetails;->hasUnit(I)Z

    move-result v8

    if-eqz v8, :cond_17

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 701
    invoke-static {v1, v4}, Lcom/zui/gallery/ui/DetailsHelper;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    const/4 v9, 0x1

    aput-object v13, v8, v9

    .line 702
    invoke-virtual {v2, v4}, Lcom/zui/gallery/data/MediaDetails;->getUnit(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v11

    const-string v4, "%s: %s %s"

    .line 701
    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_17
    const/4 v9, 0x1

    new-array v8, v11, [Ljava/lang/Object;

    .line 704
    invoke-static {v1, v4}, Lcom/zui/gallery/ui/DetailsHelper;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v12

    aput-object v13, v8, v9

    const-string v4, "%s: %s"

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 707
    :goto_4
    iget-object v8, v0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v9

    goto/16 :goto_0

    :cond_18
    if-nez v7, :cond_19

    .line 710
    invoke-static {v6, v0}, Lcom/zui/gallery/ui/DetailsHelper;->resolveResolution(Ljava/lang/String;Lcom/zui/gallery/ui/DetailsHelper$ResolutionResolvingListener;)V

    :cond_19
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

    .line 782
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 783
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->toLocalNumber(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 785
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 787
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->toLocalNumber(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method private toLocalNumber(D)Ljava/lang/String;
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toLocalNumber(I)Ljava/lang/String;
    .locals 3

    .line 798
    iget-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

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
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->this$0:Lcom/zui/gallery/ui/DialogDetailsView;

    invoke-static {v0}, Lcom/zui/gallery/ui/DialogDetailsView;->access$300(Lcom/zui/gallery/ui/DialogDetailsView;)Lcom/zui/gallery/data/MediaDetails;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 743
    iget-object p2, p0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->this$0:Lcom/zui/gallery/ui/DialogDetailsView;

    invoke-static {p2}, Lcom/zui/gallery/ui/DialogDetailsView;->access$200(Lcom/zui/gallery/ui/DialogDetailsView;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b003f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    goto :goto_0

    .line 746
    :cond_0
    check-cast p2, Landroid/widget/TextView;

    .line 749
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onAddressAvailable(Ljava/lang/String;)V
    .locals 2

    .line 756
    iget-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    iget v1, p0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mLocationIndex:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 757
    invoke-virtual {p0}, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onResolutionAvailable(II)V
    .locals 7

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->this$0:Lcom/zui/gallery/ui/DialogDetailsView;

    invoke-static {v0}, Lcom/zui/gallery/ui/DialogDetailsView;->access$200(Lcom/zui/gallery/ui/DialogDetailsView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 766
    iget-object v1, p0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x5

    .line 767
    invoke-static {v0, v4}, Lcom/zui/gallery/ui/DetailsHelper;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 768
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string p1, "%s: %d"

    .line 766
    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 769
    iget-object v3, p0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x6

    .line 770
    invoke-static {v0, v6}, Lcom/zui/gallery/ui/DetailsHelper;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    .line 771
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v4

    .line 769
    invoke-static {v3, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 772
    iget-object p2, p0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    iget v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mWidthIndex:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 773
    iget-object p2, p0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    iget v0, p0, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->mHeightIndex:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 774
    invoke-virtual {p0}, Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method
