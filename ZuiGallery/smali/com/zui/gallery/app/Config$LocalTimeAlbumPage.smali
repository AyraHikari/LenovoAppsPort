.class public Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalTimeAlbumPage"
.end annotation


# static fields
.field private static sInstance:Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;


# instance fields
.field private configurationOrientation:I

.field public labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

.field public placeholderColor:I

.field public slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

.field private themes:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput p2, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->configurationOrientation:I

    .line 323
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f05002b

    .line 325
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->placeholderColor:I

    .line 327
    new-instance v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    invoke-direct {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    .line 328
    new-instance v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    invoke-direct {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    .line 329
    iget v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->configurationOrientation:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const p1, 0x7f060207

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 330
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    const v2, 0x7f060214

    .line 331
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->slotGap:I

    .line 332
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    const v2, 0x7f06020c

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->marginLeft:I

    .line 333
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    const v2, 0x7f06020e

    .line 334
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->marginRight:I

    .line 335
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    iput v1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->backgroundColor:I

    .line 336
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v2, 0x7f060218

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->titleFontSize:I

    .line 338
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v2, 0x7f06020a

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->locationFontSize:I

    .line 342
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    iput v1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    .line 343
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    const v2, 0x7f060208

    .line 344
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->lableHeight:I

    .line 346
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v2, 0x7f060216

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->leftMargin:I

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    const v2, 0x7f060213

    .line 351
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->slotGap:I

    .line 352
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    const v2, 0x7f06020b

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->marginLeft:I

    .line 353
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    const v2, 0x7f06020d

    .line 354
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->marginRight:I

    .line 355
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v2, 0x7f050135

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->backgroundColor:I

    .line 357
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v2, 0x7f060217

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->titleFontSize:I

    .line 359
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v2, 0x7f060209

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->locationFontSize:I

    .line 361
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    .line 363
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    .line 364
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->lableHeight:I

    .line 365
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v2, 0x7f060215

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->leftMargin:I

    .line 369
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    const v2, 0x7f090022

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->columnLand:I

    .line 370
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    const v2, 0x7f090023

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->columnPort:I

    .line 373
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    const v2, 0x7f090024

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->monthColumnLand:I

    .line 374
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    const v2, 0x7f090025

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->monthColumnPort:I

    .line 375
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    iput v1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->monthSlotGap:I

    .line 376
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    const v2, 0x7f060210

    .line 377
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->monthMarginLeft:I

    .line 378
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    const v2, 0x7f060211

    .line 379
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->monthMarginRight:I

    .line 382
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    const v2, 0x7f090026

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->yearColumnLand:I

    .line 383
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    const v2, 0x7f090027

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->yearColumnPort:I

    .line 384
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    const v2, 0x7f06021b

    .line 385
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->yearSlotGap:I

    .line 386
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    const v2, 0x7f060219

    .line 387
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->yearMarginLeft:I

    .line 388
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    const v2, 0x7f06021a

    .line 389
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->yearMarginRight:I

    .line 392
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    const v2, 0x7f06021c

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->timeChangeLableHeight:I

    .line 394
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    const v2, 0x7f060307

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->bottomLabHeight:I

    .line 397
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v2, 0x7f0600d9

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->titleOffset:I

    .line 399
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v2, 0x7f0600a0

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->countOffset:I

    .line 402
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v2, 0x7f060204

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->countFontSize:I

    .line 404
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v2, 0x7f0600da

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->titleRightMargin:I

    .line 406
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v2, 0x7f0600a3

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->iconSize:I

    .line 410
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v2, 0x7f050034

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->titleColor:I

    .line 411
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v2, 0x7f05004c

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->countColor:I

    .line 412
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->lableWidth:I

    .line 413
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    iput-boolean v1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->needLoadCount:Z

    .line 415
    iget-object v0, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->contiunousBackgroundHeight:I

    .line 417
    iget-object p1, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v0, 0x7f06021d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->continuousTitleFontSizeDay:I

    .line 419
    iget-object p1, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v0, 0x7f06021e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->continuousTitleFontSizeMonth:I

    .line 421
    iget-object p1, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v0, 0x7f050207

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->continuousBackgroundColor:I

    .line 422
    iget-object p1, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v0, 0x7f050220

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->continuousTitleColor:I

    .line 426
    iget-object p1, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v0, 0x7f050219

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->durationFontColor:I

    .line 427
    iget-object p1, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v0, 0x7f060205

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->durationFontSizeDay:I

    .line 429
    iget-object p1, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v0, 0x7f060206

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->durationFontSizeMonth:I

    .line 433
    iget-object p1, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v0, 0x7f06009e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->lineOffsetX:I

    .line 434
    iget-object p1, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v0, 0x7f060222

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->lineOffsetY:I

    .line 435
    iget-object p1, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v0, 0x7f060223

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->lineMarginRight:I

    .line 436
    iget-object p1, p0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    const v0, 0x7f060224

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->lineMarginRightSelect:I

    return-void
.end method

.method public static declared-synchronized get(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;
    .locals 4

    const-class v0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;

    monitor-enter v0

    .line 300
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getCurrentTheme()Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    move-result-object v1

    .line 301
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 306
    new-instance v3, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {v3, p0, v2}, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;-><init>(Landroid/content/Context;I)V

    sput-object v3, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->sInstance:Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;

    .line 307
    iput-object v1, v3, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->themes:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
