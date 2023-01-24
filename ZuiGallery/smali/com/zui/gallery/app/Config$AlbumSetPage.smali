.class public Lcom/zui/gallery/app/Config$AlbumSetPage;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumSetPage"
.end annotation


# static fields
.field private static sInstance:Lcom/zui/gallery/app/Config$AlbumSetPage;


# instance fields
.field private configurationOrientation:I

.field public labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

.field public paddingBottom:I

.field public paddingTop:I

.field public placeholderColor:I

.field public slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

.field private themes:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    iput p2, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->configurationOrientation:I

    const p2, 0x7f050039

    .line 79
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->placeholderColor:I

    .line 82
    new-instance p2, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    invoke-direct {p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    .line 83
    iget p2, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->configurationOrientation:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 85
    iget-object p2, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    const v2, 0x7f0600d6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p2, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->widthSlotGap:I

    .line 86
    iget-object p2, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    const v2, 0x7f0600cd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p2, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->heightSlotGap:I

    .line 87
    iget-object p2, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    const v2, 0x7f0600d7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p2, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->slotWidth:I

    .line 88
    iget-object p2, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    const v2, 0x7f0600ce

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p2, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->slotHeight:I

    .line 92
    invoke-static {p1}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result p2

    const v2, 0x7f0600d0

    if-eqz p2, :cond_0

    .line 93
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->marginLeft:I

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {p1}, Lcom/zui/gallery/util/DisplayPropertyUtils;->isNavigationShowing(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 95
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->marginLeft:I

    goto :goto_0

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/lit8 p2, p2, -0x4b

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->marginLeft:I

    goto :goto_0

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    const p2, 0x7f0600d5

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->widthSlotGap:I

    .line 102
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    const p2, 0x7f0600cc

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->heightSlotGap:I

    .line 103
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    const p2, 0x7f0600cf

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->marginLeft:I

    .line 104
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    const p2, 0x7f0600d4

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->slotWidth:I

    .line 105
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    const p2, 0x7f0600cb

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->slotHeight:I

    .line 107
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    const p2, 0x7f09000b

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->rowsLand:I

    .line 108
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    const p2, 0x7f09000c

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->rowsPort:I

    .line 109
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    const p2, 0x7f090009

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->columnLand:I

    .line 110
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    const p2, 0x7f09000a

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->columnPort:I

    .line 112
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    const p2, 0x7f06009e

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->categoryLineOffsetX:I

    .line 113
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    const p2, 0x7f06009d

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->categoryLineOffsetY:I

    .line 118
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    const p2, 0x7f06009a

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->firstCategoryLabelHeight:I

    .line 119
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    const p2, 0x7f06009c

    .line 120
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->categoryLabelHeight:I

    const p1, 0x7f0600bc

    .line 122
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->paddingTop:I

    const p1, 0x7f0600bb

    .line 123
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->paddingBottom:I

    .line 125
    new-instance p1, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    invoke-direct {p1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const p2, 0x7f0600aa

    .line 126
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    .line 128
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const p2, 0x7f0600d9

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->titleOffset:I

    .line 130
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const p2, 0x7f0600a0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->countOffset:I

    .line 132
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const p2, 0x7f0600d8

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->titleFontSize:I

    .line 134
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const p2, 0x7f06009f

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->countFontSize:I

    .line 136
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const p2, 0x7f0600ae

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    .line 138
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const p2, 0x7f0600da

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->titleRightMargin:I

    .line 140
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const p2, 0x7f0600a3

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->iconSize:I

    .line 142
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const p2, 0x7f050032

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->backgroundColor:I

    .line 144
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const p2, 0x7f050035

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->titleColor:I

    .line 145
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const p2, 0x7f05018d

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->recentlyDeletedColor:I

    .line 146
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const p2, 0x7f050033

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->countColor:I

    .line 148
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const p2, 0x7f050030

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->dividerLineColor:I

    .line 149
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    iput v1, p1, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->dividerLineHeight:I

    .line 150
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumSetPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const/16 p2, 0x438

    iput p2, p1, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->dividerLineWidth:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILcom/zui/gallery/app/Config$1;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/app/Config$AlbumSetPage;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static declared-synchronized get(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/app/Config$AlbumSetPage;
    .locals 4

    const-class v0, Lcom/zui/gallery/app/Config$AlbumSetPage;

    monitor-enter v0

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getCurrentTheme()Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 63
    new-instance v3, Lcom/zui/gallery/app/Config$AlbumSetPage;

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {v3, p0, v2}, Lcom/zui/gallery/app/Config$AlbumSetPage;-><init>(Landroid/content/Context;I)V

    sput-object v3, Lcom/zui/gallery/app/Config$AlbumSetPage;->sInstance:Lcom/zui/gallery/app/Config$AlbumSetPage;

    .line 64
    iput-object v1, v3, Lcom/zui/gallery/app/Config$AlbumSetPage;->themes:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
