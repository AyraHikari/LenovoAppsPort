.class public Lcom/zui/gallery/app/Config$AlbumPage;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumPage"
.end annotation


# static fields
.field private static sInstance:Lcom/zui/gallery/app/Config$AlbumPage;


# instance fields
.field private configurationOrientation:I

.field public labelSpec:Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;

.field public placeholderColor:I

.field public slotViewSpec:Lcom/zui/gallery/ui/SlotView$Spec;


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 230
    iput v0, p0, Lcom/zui/gallery/app/Config$AlbumPage;->configurationOrientation:I

    .line 242
    iput p2, p0, Lcom/zui/gallery/app/Config$AlbumPage;->configurationOrientation:I

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f05002b

    .line 245
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/Config$AlbumPage;->placeholderColor:I

    .line 247
    new-instance v0, Lcom/zui/gallery/ui/SlotView$Spec;

    invoke-direct {v0}, Lcom/zui/gallery/ui/SlotView$Spec;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/Config$AlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    .line 248
    iget v0, p0, Lcom/zui/gallery/app/Config$AlbumPage;->configurationOrientation:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    .line 249
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    const v0, 0x7f06008e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Lcom/zui/gallery/ui/SlotView$Spec;->slotGap:I

    .line 250
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    const v0, 0x7f060090

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Lcom/zui/gallery/ui/SlotView$Spec;->leftRightMargin:I

    goto :goto_0

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    const v0, 0x7f06008d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Lcom/zui/gallery/ui/SlotView$Spec;->slotGap:I

    .line 257
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    const v0, 0x7f090004

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/SlotView$Spec;->columnLand:I

    .line 258
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    const v0, 0x7f090005

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/SlotView$Spec;->columnPort:I

    .line 270
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    const v0, 0x7f060094

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/SlotView$Spec;->slotPanoWidth:I

    .line 271
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    const v0, 0x7f060093

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/SlotView$Spec;->slotPanoHeight:I

    .line 272
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    const v0, 0x7f060092

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/SlotView$Spec;->slotPanoGap:I

    .line 275
    new-instance p1, Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;

    invoke-direct {p1}, Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/app/Config$AlbumPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;

    const v0, 0x7f060088

    .line 276
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;->contiunousBackgroundHeight:I

    .line 278
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;

    const v0, 0x7f060086

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;->continuousTitleFontSize:I

    .line 280
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;

    const v0, 0x7f050207

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;->continuousBackgroundColor:I

    .line 281
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;

    const v0, 0x7f050220

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;->continuousTitleColor:I

    .line 284
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;

    const v0, 0x7f050219

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;->durationFontColor:I

    .line 285
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;

    const v0, 0x7f060205

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;->durationFontSize:I

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/zui/gallery/app/Config$AlbumPage;
    .locals 4

    const-class v0, Lcom/zui/gallery/app/Config$AlbumPage;

    monitor-enter v0

    .line 234
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 235
    sget-object v2, Lcom/zui/gallery/app/Config$AlbumPage;->sInstance:Lcom/zui/gallery/app/Config$AlbumPage;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/zui/gallery/app/Config$AlbumPage;->sInstance:Lcom/zui/gallery/app/Config$AlbumPage;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/zui/gallery/app/Config$AlbumPage;->sInstance:Lcom/zui/gallery/app/Config$AlbumPage;

    iget v2, v2, Lcom/zui/gallery/app/Config$AlbumPage;->configurationOrientation:I

    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_1

    .line 236
    :cond_0
    new-instance v2, Lcom/zui/gallery/app/Config$AlbumPage;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {v2, p0, v1}, Lcom/zui/gallery/app/Config$AlbumPage;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/zui/gallery/app/Config$AlbumPage;->sInstance:Lcom/zui/gallery/app/Config$AlbumPage;

    .line 238
    :cond_1
    sget-object p0, Lcom/zui/gallery/app/Config$AlbumPage;->sInstance:Lcom/zui/gallery/app/Config$AlbumPage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
